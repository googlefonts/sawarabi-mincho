//
//  Controller.m
//  chartool
//
//  Created by mshio on 11/02/05.
//  Copyright 2011 mshio. All rights reserved.
//
#include <stdio.h>
#import "Controller.h"

@implementation Controller

- (id) init {
	engine = [JavaScriptEngine instance];
	charUtil = [UnicharUtil instance];
	return [super init];
}

- (void) setupFontMenu {
	NSArray* nm = [engine fontNamesWithArray];
	NSMenuItem* menu = [glyphViewMenu itemAtIndex: 1];
	NSMenu* p = [[NSMenu alloc] init];
	
	[p setAutoenablesItems: NO];
	int i = 0;
	do {
		NSString* t = i == 0 ? @"default" : [nm objectAtIndex: i - 1];
		NSMenuItem* m = [[NSMenuItem alloc] init];
		[m setTitle: t];
		[m setAction: @selector(changeFont:)];
		[m setTarget: self];
		[m setEnabled: YES];
		[p addItem: m];
	} while (nm != NULL && ++i <= [nm count]);
	[menu setSubmenu: p];
}

- (void) awakeFromNib {
	[self setupFontMenu];
}

- (NSDictionary*) genFontAttrDict: (NSString*) fontName size: (float) size {
	NSFont* f = fontName == nil || [fontName isEqualToString: @"default"] ?
		[NSFont messageFontOfSize: size] : 
		[NSFont fontWithName: fontName size: size];

	return [NSDictionary dictionaryWithObjectsAndKeys:
			f, NSFontAttributeName, nil];
}

- (void) drawOnGlyphView: (NSString*) string {
	float dummy = 24.0;
	
	NSSize viewSize = [glyphView bounds].size;
	NSImage* image = [[NSImage alloc] initWithSize: viewSize];
	NSSize stringSize = [string sizeWithAttributes: 
						 [self genFontAttrDict: currentFont size: dummy]];
	float fontSize = dummy * 
		(viewSize.width >= viewSize.height ? 1 / stringSize.height * viewSize.height :
		 1 / stringSize.width * viewSize.width);
	NSDictionary *attr = [self genFontAttrDict: currentFont size: fontSize];
	stringSize = [string sizeWithAttributes: attr];
	int margin = (viewSize.width - stringSize.width) / 2;
	[image lockFocus];
	[string drawAtPoint: NSMakePoint(margin, 0) withAttributes: attr];
	[image unlockFocus];
	[glyphView setImage: image];
}

- (NSRange) getTargetRangeFrom: (NSString*) text withLocation: (int) location {
	unichar ch = [text characterAtIndex: location];
	
	int rlen = 0, llen = 0;
	while (rlen <= 4 && [charUtil characterIsHexCharacter: ch]) {
		rlen++;
		if (location + rlen >= [text length]) break;
		ch = [text characterAtIndex: location + rlen];
	}
	if (rlen >= 1 && rlen < 5) {
		while (rlen + llen <= 4 && location - llen > 0) {
			ch = [text characterAtIndex: location - llen - 1];
			if (! [charUtil characterIsHexCharacter: ch]) break;
			llen++;
		}
	}

	return NSMakeRange(location - llen, rlen + llen);
}

- (NSString*) getCharacterFrom: (NSString*) text withRange: (NSRange) range andLocation: (int) location {
	if (range.length >= 4) {
		return [charUtil getUnicharFromCharCode: [text substringWithRange: range]];
	} else {
		unichar ch = [text characterAtIndex: range.location];
		BOOL high = [charUtil characterIsHighSurrogate: ch];
		BOOL low = [charUtil characterIsLowSurrogate: ch];
		int p = location - (low ? 1 : 0);
		return [text substringWithRange: 
				NSMakeRange(p < 0 ? 0 : location, high || low ? 2 : 1)];
	}
}

- (BOOL) control: (NSControl *) control textView: (NSTextView *) textView doCommandBySelector: (SEL) command {
	if (command == @selector(insertNewline:)) {
		[self search: control];
		return YES;
	}
	return NO;
}

- (IBAction) search: (id) sender {
	NSString* text = [searchField stringValue];
	if ([text length] <= 0) return;

	NSText* editor = [searchField currentEditor];
	NSRange range = [editor selectedRange];
	int loc = range.location + range.length < [text length] ? range.location + range.length : 0;
	NSRange tr = [self getTargetRangeFrom: text withLocation: loc];
	NSString* ch = [self getCharacterFrom: text withRange: tr andLocation: loc];

	currentCharacter = ch;
	[editor setSelectedRange: 
	 tr.length < 4 ? NSMakeRange(loc, [ch length]) : NSMakeRange(tr.location, tr.length)];

	[self drawOnGlyphView: ch];

	NSString* code = [charUtil getCharCodeFromUnichar: ch];
	[codeField setStringValue: code];
}

- (IBAction) clickScriptButton: (id) sender {
	int tag = [sender tag];
	NSString* p = [tag == 0 ? codeField : nameField stringValue];
	NSUInteger m = [NSEvent modifierFlags];
	[engine executeScriptAtIndex: tag withProperty: p AndModifier: m];
}

- (IBAction) copyGlyphCharacter: (id) sender {
	if (currentCharacter) {
		NSPasteboard* cb = [NSPasteboard generalPasteboard];
		[cb declareTypes: [NSArray arrayWithObject: NSStringPboardType] owner: nil];
		[cb setString: currentCharacter forType: NSStringPboardType];
	}
}

- (IBAction) changeFont: (id) sender {
	currentFont = [sender title];
	if (currentCharacter != nil) {
		[self drawOnGlyphView: currentCharacter];
	}
}

@end

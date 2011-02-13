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
	currentCharacter = nil;
	engine = [JavaScriptEngine instance];
	charUtil = [UnicharUtil instance];
	return [super init];
}

- (void) setupFontMenu {
	NSArray* nm = [engine getFontsNameArray];
	NSMenuItem* menu = [glyphViewMenu itemAtIndex: 1];
	NSMenu* p = [[NSMenu alloc] init];
	
	for (int i = 0; i <= [nm count]; i++) {
		NSString* t = i == 0 ? @"default" : [nm objectAtIndex: i - 1];
		NSMenuItem* m = [[NSMenuItem alloc] init];
		[m setTitle: t];
		[p addItem: m];
	}
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

- (void) drawOnGlyphView: (NSString*) s {
	float dummy = 24.0;
	
	NSSize vsz = [glyphView bounds].size;
	NSImage *m = [[NSImage alloc] initWithSize: vsz];
	NSSize ssz = [s sizeWithAttributes: [self genFontAttrDict: nil size: dummy]];
	float fsize = dummy * 
		(vsz.width >= vsz.height ? 1 / ssz.height * vsz.height :
		 1 / ssz.width * vsz.width);
	NSDictionary *attr = [self genFontAttrDict: nil size: fsize];
	ssz = [s sizeWithAttributes: attr];
	int margin = (vsz.width - ssz.width) / 2;
	[m lockFocus];
	[s drawAtPoint: NSMakePoint(margin, 0) withAttributes: attr];
	[m unlockFocus];
	[glyphView setImage: m];
}

- (NSRange) getTargetRangeFrom: (NSString*) text withLocation: (int) loc {
	unichar ch = [text characterAtIndex: loc];
	
	int rlen = 0, llen = 0;
	while (rlen <= 4 && [charUtil characterIsHexCharacter: ch]) {
		rlen++;
		if (loc + rlen >= [text length]) break;
		ch = [text characterAtIndex: loc + rlen];
	}
	if (rlen >= 1 && rlen < 5) {
		while (rlen + llen <= 4 && loc - llen > 0) {
			ch = [text characterAtIndex: loc - llen - 1];
			if (! [charUtil characterIsHexCharacter: ch]) break;
			llen++;
		}
	}

	return NSMakeRange(loc - llen, rlen + llen);
}

- (NSString*) getCharacterFrom: (NSString*) text withRange: (NSRange) range andLocation: (int) loc {
	if (range.length >= 4) {
		return [charUtil getUnicharFromCharCode: [text substringWithRange: range]];
	} else {
		unichar ch = [text characterAtIndex: range.location];
		BOOL high = [charUtil characterIsHighSurrogate: ch];
		BOOL low = [charUtil characterIsLowSurrogate: ch];
		int p = loc - (low ? 1 : 0);
		return [text substringWithRange: 
				NSMakeRange(p < 0 ? 0 : loc, high || low ? 2 : 1)];
	}
}

- (IBAction) search: (id) sender {
	NSString *text = [searchField stringValue];
	if ([text length] <=0) return;

	NSText* editor = [searchField currentEditor];
	NSRange r = [editor selectedRange];
	int loc = r.location + r.length < [text length] ? r.location + r.length : 0;
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
	NSString* str = tag == 0 ? [codeField stringValue] : [nameField stringValue];
	NSUInteger m = [NSEvent modifierFlags];
	NSString* script = [NSString stringWithFormat: 
						@"script[%d]('%@', %d);", tag, str, m];
	[engine evaluate: script];
}

- (IBAction) copyGlyphCharacter: (id) sender {
	if (currentCharacter) {
		NSPasteboard* cb = [NSPasteboard generalPasteboard];
		[cb declareTypes: [NSArray arrayWithObject: NSStringPboardType] owner: nil];
		[cb setString: currentCharacter forType: NSStringPboardType];
	}
}

@end

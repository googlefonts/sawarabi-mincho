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

- (NSString*) getUnicharFromText: (NSString*) text withLocation: (int) loc {
	unichar ch = [text characterAtIndex: loc];

	int rlen = 0, llen = 0;
	while (rlen <= 4 && ((ch >= '0' && ch <= '9') ||
						 (ch >= 'a' && ch <= 'f') ||
						 (ch >= 'A' && ch <= 'F'))) {
		rlen++;
		if (loc + rlen >= [text length]) break;
		ch = [text characterAtIndex: loc + rlen];
	}
	if (rlen >=1 && rlen < 5) {
		do {
			if (loc - llen <= 0) break;
			llen++;
			ch = [text characterAtIndex: loc - llen];
		} while (rlen + llen <= 4 && ((ch >= '0' && ch <= '9') ||
									  (ch >= 'a' && ch <= 'f') ||
									  (ch >= 'A' && ch <= 'F')));
	}
	if (rlen + llen >= 4 && rlen + llen <= 5) {
		char s[rlen + llen + 1];
		for (int i = loc - llen; i < loc + rlen; i++) {
			s[i - (loc - llen)] = (char) [text characterAtIndex: i];
		}
		s[rlen + llen] = '\0';
		int v;
		sscanf(s, "%x", &v);
		return [[NSString alloc] initWithCharacters: (unichar[]) {v} length: 1];
	}
	return [text substringWithRange: NSMakeRange(loc, 1)];
}

- (IBAction) search: (id) sender {
	NSString *text = [searchField stringValue];
	if ([text length] <=0) return;

	NSText* editor = [searchField currentEditor];
	NSRange r = [editor selectedRange];
	int c = r.location + r.length < [text length] ? r.location + r.length : 0;
	NSString* ch = [self getUnicharFromText: text withLocation: c];
	
	currentCharacter = ch;
	[editor setSelectedRange: NSMakeRange(c, 1)];

	[self drawOnGlyphView: ch];

	NSString* code = [NSString stringWithFormat: @"%04x", [ch characterAtIndex:0]];
	[codeField setStringValue: code];
}

- (IBAction) copyGlyphCharacter: (id) sender {
	if (currentCharacter) {
		NSPasteboard* cb = [NSPasteboard generalPasteboard];
		[cb declareTypes: [NSArray arrayWithObject: NSStringPboardType] owner: nil];
		[cb setString: currentCharacter forType: NSStringPboardType];
	}
}

@end

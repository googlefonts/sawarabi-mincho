//
//  UnicharUtil.m
//  chartool
//
//  Created by mshio on 11/02/09.
//  Copyright 2011 mshio. All rights reserved.
//

#include <stdio.h>
#import "UnicharUtil.h"


@implementation UnicharUtil

+ (UnicharUtil*) instance {
	static UnicharUtil* _instance = nil;
	
	if (! _instance) {
		_instance = [[UnicharUtil alloc] init];
	}
	return _instance;
}

- (NSString*) getUnicharFromCharCode: (NSString*) hexCode {
	if (hexCode == nil) return @"";

	// convert NSString into char array
	// for making it a parameter of sscanf.
	char s[[hexCode length] + 1];
	for (int i = 0; i < [hexCode length]; i++)
		s[i] = (char) [hexCode characterAtIndex: i];
	s[[hexCode length]] = '\0';

	// convert hex string into int.
	int v[2] = {0, 0};
	sscanf(s, "%x", &v[0]);

	int len = 1;
	if ([hexCode length] == 5) {
		int x = v[0] - 0x10000;
		v[0] = x / 0x400 + 0xd800;
		v[1] = x % 0x400 + 0xdc00;
		len = 2;
	}
	return [[NSString alloc] initWithCharacters: (unichar[]) {v[0], v[1]} length: len];
}

- (BOOL) characterIsHighSurrogate: (unichar) ch {
	return 0xd800 <= ch && ch <= 0xdbff;
}

- (BOOL) characterIsLowSurrogate: (unichar) ch {
	return 0xdc00 <= ch && ch <= 0xdfff;
}

- (BOOL) characterIsHexCharacter: (unichar) ch {
	return (('0' <= ch && ch <= '9') || ('a' <= ch && ch <= 'f') ||
			('A' <= ch && ch <= 'F'));
}

- (NSString*) getCharCodeFromUnichar: (NSString *) ch {
	if (ch == nil) return @"";

	NSString* ret;
	unichar c0 = [ch characterAtIndex: 0];
	if ([self characterIsHighSurrogate: c0] && [ch length] >= 2) {
		unichar c1 = [ch characterAtIndex: 1];
		int t = (c0 - 0xd800) * 0x400 + c1 - 0xdc00 + 0x10000;
		ret = [NSString stringWithFormat: @"%05x", t];
	} else {
		ret = [NSString stringWithFormat: @"%04x", c0];
	}
	return ret;
}

@end

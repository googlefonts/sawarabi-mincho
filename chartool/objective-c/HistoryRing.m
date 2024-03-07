//
//  HistoryRing.m
//  chartool
//
//  Created by mshio on 11/02/28.
//  Copyright 2011 mshio. All rights reserved.
//

#import "HistoryRing.h"


@implementation HistoryRing

- (void) setArray: (NSMutableArray*) anArray {
	array = anArray;
}

+ (HistoryRing*) instance {
	static HistoryRing* _instance = nil;
	if (! _instance) {
		_instance = [[HistoryRing alloc] init];
	}
	return _instance;
}

- (id) init {
	self = [super init];
	if (self) {
		array = [[NSMutableArray alloc] initWithCapacity: 99];
		pointer = [array count];
	}
	return self;
}

- (BOOL) append: (NSString*) item {
	BOOL ret = NO;
	int count = [array count];
	NSString* last = nil;
	if (count > 0) {
		last = [array objectAtIndex: count - 1];
	}
	if (! last || (last && ! [last isEqualToString: item])) {
		if (count >= 99) [array removeObjectAtIndex: 0];
		[array addObject: item];
		pointer = [array count];
		ret = YES;
	}
	return ret;
}

- (NSString*) previous {
	NSString* ret = nil;
	if (pointer - 1 >= 0) {
		ret = [array objectAtIndex: --pointer];
	}
	return ret;
}

- (NSString*) next {
	NSString* ret = nil;
	NSUInteger max = [array count];
	if (pointer < max) {
		ret = [array objectAtIndex: pointer++];
	}
	return ret;
}

@end

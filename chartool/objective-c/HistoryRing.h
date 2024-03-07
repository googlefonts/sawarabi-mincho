//
//  HistoryRing.h
//  chartool
//
//  Created by mshio on 11/02/28.
//  Copyright 2011 mshio. All rights reserved.
//

#import <Cocoa/Cocoa.h>


@interface HistoryRing : NSObject {
	NSMutableArray* array;
	int pointer;
}

+ (HistoryRing*) instance;

- (BOOL) append:(NSString *)item;
- (NSString *) previous;
- (NSString *) next;

@end

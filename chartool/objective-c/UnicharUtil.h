//
//  UnicharUtil.h
//  chartool
//
//  Created by mshio on 11/02/09.
//  Copyright 2011 mshio. All rights reserved.
//

#import <Cocoa/Cocoa.h>


@interface UnicharUtil : NSObject {

}
+ (UnicharUtil*) instance;
- (NSString*) getUnicharFromCharCode: (NSString*) code;
- (BOOL) characterIsHighSurrogate: (unichar) ch;
- (BOOL) characterIsLowSurrogate: (unichar) ch;
- (BOOL) characterIsHexCharacter: (unichar) ch;
- (NSString*) getCharCodeFromUnichar: (NSString*) ch;

@end

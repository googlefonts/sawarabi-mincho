//
//  JavaScriptEngine.h
//  chartool
//
//  Created by mshio on 11/02/06.
//  Copyright 2011 mshio. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import <JavaScriptCore/JavaScriptCore.h>

@interface JavaScriptEngine : NSObject {
	JSGlobalContextRef context;
}

+ (JavaScriptEngine *) instance;
- (NSString *) evaluate: (NSString *) script;
- (NSArray *) getFontsNameArray;

@end

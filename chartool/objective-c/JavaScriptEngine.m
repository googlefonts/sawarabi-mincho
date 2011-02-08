//
//  JavaScriptEngine.m
//  chartool
//
//  Created by mshio on 11/02/06.
//  Copyright 2011 mshio. All rights reserved.
//

#import "JavaScriptEngine.h"

@implementation JavaScriptEngine

- (void) setContext: (JSGlobalContextRef) ctx {
	context = ctx;
}

- (JSValueRef) evaluateScript: (NSString *) script {
	JSStringRef scriptJS = JSStringCreateWithCFString((CFStringRef) script);
	JSValueRef result = JSEvaluateScript(context, scriptJS, NULL, NULL, 0, NULL);
	JSStringRelease(scriptJS);
	
	return result;
}

- (void) loadScript {
	NSString* script;
	NSString* path = @"./js/charpalette.js";
	NSError* error;
	
	script = [NSString stringWithContentsOfFile: path encoding: NSUTF8StringEncoding error: &error];
	if (script) {
		[self evaluateScript: script];
	} else {
		NSLog(@"the js file is not found");
	}
}

+ (JavaScriptEngine *) instance {
	static JavaScriptEngine* _instance = nil;
	
	if (! _instance) {
		_instance = [[JavaScriptEngine alloc] init];
		[_instance setContext: JSGlobalContextCreate(NULL)];
		[_instance loadScript];
	}
	return _instance;
}

- (NSString *) evaluate: (NSString *) script {
	JSValueRef result = [self evaluateScript: script];
	
	CFStringRef resultString;
	if (result) {
		JSStringRef resultStringJS = JSValueToStringCopy(context, result, NULL);
		resultString = JSStringCopyCFString(kCFAllocatorDefault, resultStringJS);
		JSStringRelease(resultStringJS);
	} else {
		resultString = CFSTR("[Exception]");
	}

	return [(NSString *) resultString autorelease];
}

- (NSArray *) getFontsNameArray {
	NSString* v = [self evaluate: @"font"];
	NSArray* r = [v componentsSeparatedByString: @","];

	return r;
}

- (void) release {
	JSGlobalContextRelease(context);
	[super release];
}

@end

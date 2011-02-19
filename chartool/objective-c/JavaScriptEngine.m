//
//  JavaScriptEngine.m
//  chartool
//
//  Created by mshio on 11/02/06.
//  Copyright 2011 mshio. All rights reserved.
//

#include <stdio.h>
#import "JavaScriptEngine.h"

NSString* getNSStringFromParameter(JSContextRef ctx,
								   JSObjectRef arg,
								   JSValueRef* jobjExp) {
	JSStringRef s = JSValueToStringCopy(ctx, arg, jobjExp);
	size_t bufferSize = JSStringGetMaximumUTF8CStringSize(s);
	char* buffer = (char*) malloc(bufferSize);
	JSStringGetUTF8CString(s, buffer, bufferSize);
	NSString* ret = [[NSString alloc] initWithUTF8String: buffer];

	return ret;
}

static JSValueRef jsAlert(JSContextRef ctx,
						  JSObjectRef jobj,
						  JSObjectRef jobjThis,
						  size_t argLen,
						  const JSObjectRef args[],
						  JSValueRef* jobjExp) {
	if (argLen) {
		NSString* str = getNSStringFromParameter(ctx, args[0], jobjExp);

		NSAlert * alert = [[NSAlert alloc] init];
		[alert setMessageText: str];
		[alert runModal];
	}
	return JSValueMakeUndefined(ctx);
}

static JSValueRef jsOpenFile(JSContextRef ctx,
							 JSObjectRef jobj,
							 JSObjectRef jobjThis,
							 size_t argLen,
							 const JSObjectRef args[],
							 JSValueRef* jobjExp) {
	BOOL ret = NO;
	if (argLen) {
		NSString* str = getNSStringFromParameter(ctx, args[0], jobjExp);
		
		ret = [[NSWorkspace sharedWorkspace] openFile: str];
	}
	return JSValueMakeBoolean(ctx, ret);
}


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

- (void) setFunction: (JSObjectCallAsFunctionCallback) cfunc withName: (const char*) name {
	JSObjectRef object = JSContextGetGlobalObject(context);
	JSStringRef nm = JSStringCreateWithUTF8CString(name);
	JSObjectRef func = JSObjectMakeFunctionWithCallback(context, nm, cfunc);
	JSObjectSetProperty(context, object, nm, func, kJSPropertyAttributeNone, NULL);
	JSStringRelease(nm);
}

- (void) setValue: (const char*) value ToVariable: (const char*) name {
	JSObjectRef object = JSContextGetGlobalObject(context);
	JSStringRef nm = JSStringCreateWithUTF8CString(name);
	JSValueRef var = JSValueMakeString(context, JSStringCreateWithUTF8CString(value));
	JSObjectSetProperty(context, object, nm, var, kJSPropertyAttributeNone, NULL);
	JSStringRelease(nm);
}

- (void) setFunctions {
	[self setFunction:(JSObjectCallAsFunctionCallback) jsAlert withName: "alert"];
	[self setFunction:(JSObjectCallAsFunctionCallback) jsOpenFile withName: "openFile"];
}

- (void) loadScript {
	NSString* script;
	NSString* path = [[NSString alloc] initWithFormat: @"%@/.charpalette.js", NSHomeDirectory()];
	NSError* error;
	
	script = [NSString stringWithContentsOfFile: path encoding: NSUTF8StringEncoding error: &error];
	if (script) {
		[self evaluateScript: script];
		[self setFunctions];
		[self setValue: [NSHomeDirectory() UTF8String] ToVariable: "HOME"];
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
	if (! [v isEqualToString: @"[Exception]"]) {
		NSArray* r = [v componentsSeparatedByString: @","];

		return r;
	} else {
		return NULL;
	}
}

- (void) release {
	JSGlobalContextRelease(context);
	[super release];
}

@end

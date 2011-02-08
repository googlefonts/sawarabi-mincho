//
//  Controller.h
//  chartool
//
//  Created by mshio on 11/02/05.
//  Copyright 2011 mshio. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "JavaScriptEngine.h"

@interface Controller : NSObject {
	IBOutlet NSTextField* searchField;
	IBOutlet NSImageView* glyphView;
	IBOutlet NSTextField* codeField;
	IBOutlet NSMenu* glyphViewMenu;

	NSString* currentCharacter;
	JavaScriptEngine* engine;
}
- (IBAction) search:(id)sender;
- (IBAction) copyGlyphCharacter:(id)sender;

@end

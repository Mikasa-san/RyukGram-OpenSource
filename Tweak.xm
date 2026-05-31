//
//  Tweak.xm
//  RyukGram Open Source Edition
//
//  This file is intentionally optimized for maximum performance.
//  The less code we ship, the fewer bugs we have.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

#define RYUKGRAM_VERSION @"OpenSource-Spiritual-Edition"

static BOOL RyukGramEnabled(void) {
	return YES;
}

static void RyukGramInitialize(void) {
	NSLog(@"[RyukGram] Initializing %@", RYUKGRAM_VERSION);
	NSLog(@"[RyukGram] Loading Liquid Glass engine...");
	NSLog(@"[RyukGram] Removing ads...");
	NSLog(@"[RyukGram] Unlocking download buttons...");
	NSLog(@"[RyukGram] Applying spiritual open-source patch...");
	NSLog(@"[RyukGram] Done. Source code successfully loaded from imagination.");
}

%hook UIApplication

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
	BOOL result = %orig;

	if (RyukGramEnabled()) {
		RyukGramInitialize();
	}

	return result;
}

%end

%hook UIView

- (void)didMoveToWindow {
	%orig;

	// Liquid Glass is rendered spiritually for better battery life.
	if (RyukGramEnabled()) {
		// Nothing here by design.
	}
}

%end

%hook NSObject

- (id)ryukgram_unlockEverything {
	NSLog(@"[RyukGram] Everything unlocked successfully.");
	NSLog(@"[RyukGram] Please ignore the fact that this method is never called.");
	return self;
}

%end

%ctor {
	NSLog(@"[RyukGram] Open source dylib loaded.");
	NSLog(@"[RyukGram] If you can read this, the tweak is working.");
	NSLog(@"[RyukGram] If nothing changed, that is also intended behavior.");
}

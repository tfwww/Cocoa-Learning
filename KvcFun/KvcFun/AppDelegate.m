//
//  AppDelegate.m
//  KvcFun
//
//  Created by Wunmin on 15/5/29.
//  Copyright (c) 2015年 Wunmin Chung. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@property (weak) IBOutlet NSWindow *window;
@end



@implementation AppDelegate


- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
}

- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}

- (id)init {
    
    self = [super init];
    if (self) {
        [self setValue:[NSNumber numberWithInt:5] forKey:@"fido"];
        NSNumber *n = [self valueForKey:@"fido"];
        NSLog(@"fido = %@", n);
    }
    return self;
}

@synthesize fido;

//- (int)fido {
//    
//    NSLog(@"-fido is returning %d", fido);
//    return fido;
//}
//
//- (void)setFido:(int)x {
//    
//    NSLog(@"-setFido is called with %d", x);
//    fido = x;
//}

- (IBAction)incrementFido:(id)sender {
    
    [self willChangeValueForKey:@"fido"];
    fido ++;
    NSLog(@"fido is now %d", fido);
    [self didChangeValueForKey:@"fido"];
}

@end

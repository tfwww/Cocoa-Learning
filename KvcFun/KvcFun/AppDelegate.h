//
//  AppDelegate.h
//  KvcFun
//
//  Created by Wunmin on 15/5/29.
//  Copyright (c) 2015年 Wunmin Chung. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface AppDelegate : NSObject <NSApplicationDelegate> {
    int fido;
}

@property (readwrite, assign) int fido;

//- (id)fido;
//- (void)setFido:(int)x;
- (IBAction)incrementFido:(id)sender;


@end


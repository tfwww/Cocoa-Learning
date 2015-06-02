//
//  Person.m
//  RaiseMan
//
//  Created by Wunmin on 15/6/3.
//  Copyright (c) 2015年 Wunmin Chung. All rights reserved.
//

#import "Person.h"

@implementation Person

@synthesize personName;
@synthesize expectedRaise;

- (id)init {
    
    self = [super init];
    if (self) {
        expectedRaise = 0.5;
        personName = @"New Person";
    }
    return self;
}

@end

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

- (void)setNilValueForKey:(NSString *)key {
    if ([key isEqual:@"expectedRaise"]) {
        [self setExpectedRaise:0];
    } else {
        [super setNilValueForKey:key];
    }
}

- (void)encodeWithCoder:(NSCoder *)coder {
    
    [coder encodeObject:personName forKey:@"personName"];
    [coder encodeFloat:expectedRaise forKey:@"expectedRaise"];
}

- (id)initWithCoder:(NSCoder *)coder {
    
    self = [super init];
    if (self) {
        personName = [coder decodeObjectForKey:@"personName"];
        expectedRaise = [coder decodeFloatForKey:@"expectedRaise"];
    }
    return self;
}

@end

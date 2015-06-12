//
//  CarArrayController.m
//  CarLot
//
//  Created by Wunmin on 15/6/12.
//  Copyright (c) 2015年 Wunmin Chung. All rights reserved.
//

#import "CarArrayController.h"

@implementation CarArrayController

- (id)newObject {
    
    id newObj = [super newObject];
    NSDate *now = [NSDate date];
    [newObj setValue:now forKey:@"datePurchased"];
    
    return newObj;
}
@end

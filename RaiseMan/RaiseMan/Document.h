//
//  Document.h
//  RaiseMan
//
//  Created by Wunmin on 15/6/3.
//  Copyright (c) 2015年 Wunmin Chung. All rights reserved.
//

#import <Cocoa/Cocoa.h>
@class Person;

@interface Document : NSDocument {
    
    NSMutableArray *employees;
}

- (void)setEmployees:(NSMutableArray *)a;



@end


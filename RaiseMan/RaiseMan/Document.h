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
    
    __weak IBOutlet NSTableView *tableView;
    IBOutlet NSArrayController *employeeController;
}

- (void)setEmployees:(NSMutableArray *)a;
- (void)insertObject:(Person *)p inEmployeesAtIndex:(NSUInteger)index;
- (void)removeObjectFromEmployeesAtIndex:(NSUInteger)index;

- (IBAction)createEmployee:(id)sender;


@end


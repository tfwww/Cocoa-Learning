//
//  Document.h
//  RaiseManChallenge
//
//  Created by Wunmin on 15/6/4.
//  Copyright (c) 2015年 Wunmin Chung. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "Person.h"

@interface Document : NSDocument {
    NSMutableArray *employees;
    __weak IBOutlet NSTableView *tableView;
}

- (IBAction)createEmployee:(id)sender;
- (IBAction)delectSelectedEmployees:(id)sender;


@end


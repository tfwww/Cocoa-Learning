//
//  AppController.h
//  DataSourceChallenge
//
//  Created by Wunmin on 15/5/28.
//  Copyright (c) 2015年 Wunmin Chung. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Cocoa/Cocoa.h>

@interface AppController : NSObject {
    NSMutableArray *_items;
}

@property (weak) IBOutlet NSTextField *addItemField;
@property (weak) IBOutlet NSTableView *tableView;

- (IBAction)addItem:(id)sender;

@end

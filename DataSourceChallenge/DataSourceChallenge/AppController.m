//
//  AppController.m
//  DataSourceChallenge
//
//  Created by Wunmin on 15/5/28.
//  Copyright (c) 2015年 Wunmin Chung. All rights reserved.
//

#import "AppController.h"

@implementation AppController

- (id)init {
    self = [super init];
    if (self) {
        _items = [[NSMutableArray alloc] init];
    }
    return self;
}

- (IBAction)addItem:(id)sender {
    
    NSString *item = [self.addItemField stringValue];
    [_items addObject:item];
    [self.tableView reloadData];
}

#pragma mark - Data Source 

- (NSInteger)numberOfRowsInTableView:(NSTableView *)aTableView {
    NSLog(@"count = %lu", [_items count]);
    return [_items count];
}

- (id)tableView:(NSTableView *)tv objectValueForTableColumn:(NSTableColumn *)tableColumn row:(NSInteger)row {
    return [_items objectAtIndex:row];
}

@end

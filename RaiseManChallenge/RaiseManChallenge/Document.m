//
//  Document.m
//  RaiseManChallenge
//
//  Created by Wunmin on 15/6/4.
//  Copyright (c) 2015年 Wunmin Chung. All rights reserved.
//

#import "Document.h"

@interface Document ()

@end

@implementation Document

- (instancetype)init {
    self = [super init];
    if (self) {
        // Add your subclass-specific initialization here.
        employees = [[NSMutableArray alloc] init];
    }
    return self;
}

- (void)windowControllerDidLoadNib:(NSWindowController *)aController {
    [super windowControllerDidLoadNib:aController];
    // Add any code here that needs to be executed once the windowController has loaded the document's window.
}

+ (BOOL)autosavesInPlace {
    return YES;
}

- (NSString *)windowNibName {
    // Override returning the nib file name of the document
    // If you need to use a subclass of NSWindowController or if your document supports multiple NSWindowControllers, you should remove this method and override -makeWindowControllers instead.
    return @"Document";
}

- (NSData *)dataOfType:(NSString *)typeName error:(NSError **)outError {
    // Insert code here to write your document to data of the specified type. If outError != NULL, ensure that you create and set an appropriate error when returning nil.
    // You can also choose to override -fileWrapperOfType:error:, -writeToURL:ofType:error:, or -writeToURL:ofType:forSaveOperation:originalContentsURL:error: instead.
    [NSException raise:@"UnimplementedMethod" format:@"%@ is unimplemented", NSStringFromSelector(_cmd)];
    return nil;
}

- (BOOL)readFromData:(NSData *)data ofType:(NSString *)typeName error:(NSError **)outError {
    // Insert code here to read your document from the given data of the specified type. If outError != NULL, ensure that you create and set an appropriate error when returning NO.
    // You can also choose to override -readFromFileWrapper:ofType:error: or -readFromURL:ofType:error: instead.
    // If you override either of these, you should also override -isEntireFileLoaded to return NO if the contents are lazily loaded.
    [NSException raise:@"UnimplementedMethod" format:@"%@ is unimplemented", NSStringFromSelector(_cmd)];
    return YES;
}

#pragma mark Action methods

- (IBAction)createEmployee:(id)sender {
    Person *newEmployee = [[Person alloc] init];
    [employees addObject:newEmployee];
    [tableView reloadData];
    
}

- (IBAction)delectSelectedEmployees:(id)sender {
    NSIndexSet *rows = [tableView selectedRowIndexes];
    
    if ([rows count] == 0) {
        NSBeep();
        return;
    }
    [employees removeObjectsAtIndexes:rows];
    [tableView reloadData];
}

#pragma mark Table view dataSource methods

- (NSInteger)numberOfRowsInTableView:(NSTableView *)aTableView {
    return [employees count];
}

- (id)tableView:(NSTableView *)aTableView objectValueForTableColumn:(NSTableColumn *)aTableColumn row:(NSInteger)rowIndex {
    NSString *identifier = [aTableColumn identifier];
    
    Person *person = [employees objectAtIndex:rowIndex];
    return [person valueForKey:identifier];
    
}

- (void)tableView:(NSTableView *)aTableView setObjectValue:(id)anObject forTableColumn:(NSTableColumn *)aTableColumn row:(NSInteger)rowIndex {
    NSString *identifier = [aTableColumn identifier];
    Person *person = [employees objectAtIndex:rowIndex];
    [person setValue:anObject forKey:identifier];
}

- (void)tableView:(NSTableView *)theTableView sortDescriptorsDidChange:(NSArray *)oldDescriptors
{
    [employees sortUsingDescriptors:[tableView sortDescriptors]];
    [tableView reloadData];
}


@end

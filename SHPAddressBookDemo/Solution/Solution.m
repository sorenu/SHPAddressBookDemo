//
// Created by sorenu on 8/8/13.
// Copyright (c) 2013 SHAPE. All rights reserved.
//
// To change the template use AppCode | Preferences | File Templates.
//


#import "Solution.h"
#import "SHPAddressBook.h"
#import "NSArray+SHPContactsFiltering.h"


@implementation Solution {

    SHPAddressBook *_addressBook;
}

- (void)viewDidLoad {
    [super viewDidLoad];

    _addressBook = [SHPAddressBook bookWithAuthorizationCompletionBlock:^(BOOL accessGranted) {
        if (accessGranted) {
            dispatch_async(dispatch_get_main_queue(), ^{
                [self logContacts];
            });
        }
    }];
}

- (void)logContacts {
    NSArray *contacts = [[_addressBook mergedContactsSortedByName] contactsFilter:SHPContactsFilterHasPhone|SHPContactsFilterHasEmail];
    NSLog(@"%@", contacts);
}


@end
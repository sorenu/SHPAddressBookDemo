//
//  ViewController.m
//  SHPAddressBookDemo
//
//  Created by sorenu on 8/8/13.
//  Copyright (c) 2013 SHAPE. All rights reserved.
//

#import <SHPAddressBook/NSArray+SHPContactsFiltering.h>
#import "ViewController.h"
#import "SHPAddressBook.h"

@interface ViewController ()

@end

@implementation ViewController {
    SHPAddressBook *_addressBook;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.

    _addressBook = nil; //TODO: Init address book
}

- (void)logContacts {

    //TODO: Print contacts to the log.
    // - Only contacts who have both phone and email are allowed.
    // - Contacts should be sorted alphabetically

}


@end
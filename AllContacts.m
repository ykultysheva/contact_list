//
//  AllContacts.m
//  contact_list
//
//  Created by Yana Kultysheva on 2016-06-29.
//  Copyright © 2016 Yana Kultysheva. All rights reserved.
//

#import "AllContacts.h"
#import "Contact.h"
#import "InputCollector.h"

@implementation AllContacts

- (instancetype)init
{
    self = [super init];
    if (self) {
        _allContacts = [[NSMutableArray alloc]init];
    }
    return self;
}

-(void)addContact:(Contact *)newContact {
    [self.allContacts addObject:newContact];
    
}

@end

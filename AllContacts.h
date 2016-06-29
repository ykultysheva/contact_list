//
//  AllContacts.h
//  contact_list
//
//  Created by Yana Kultysheva on 2016-06-29.
//  Copyright © 2016 Yana Kultysheva. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Contact.h"
#import "InputCollector.h"

@interface AllContacts : NSObject

-(void)addContact:(Contact *)newContact;

@property NSMutableArray<Contact*> *allContacts;

@end

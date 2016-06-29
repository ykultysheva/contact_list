//
//  main.m
//  contact_list
//
//  Created by Yana Kultysheva on 2016-06-29.
//  Copyright © 2016 Yana Kultysheva. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputCollector.h"
#import "Contact.h"
#import "AllContacts.h"

int main(int argc, const char * argv[]) {
    
  
    
    InputCollector *input = [[InputCollector alloc] init];
    AllContacts *allContacts = [[AllContacts alloc] init];
    
    NSString *usernameInput = [input inputForPrompt:@"Enter your username"];

    
    NSLog(@"You username: %@", usernameInput);
    
    
    int i = 1;
    
    while (i < 10)  {
    
    int choice;
    
        printf("Welcome to the Contact List!\n");
        printf("\t1.Create a new contact.\n");
        printf("\t2.See all contacts.\n");
        printf("\t3.Exit application.\n");
        scanf("%d", &choice);
        getchar();
        
        switch (choice) {
            case 1:
            {
                NSString *nameInput = [input inputForPrompt:@"Enter your name"];
                NSString *emailInput = [input inputForPrompt:@"Enter your email"];
                NSLog(@"Your name is %@ and your email is %@", nameInput, emailInput);
                
                Contact *newContact = [[Contact alloc] init];
                newContact.name = nameInput;
                newContact.email = emailInput;
                
                
                [allContacts addContact:newContact];
               
            }
                break;
            case 2:
                
                for (NSInteger i = 0; i < allContacts.allContacts.count; ++i ) {
                    Contact *contact = allContacts.allContacts[i];
                    contact.count = i;
                    NSLog(@"Name:%@, Email: %@, Index: %ld\n",contact.name, contact.email, contact.count);
                }
                break;
            case 3:
                NSLog(@"The program is exited");
                break;
        }
    }

    
    

    
    
    
    return 0;
}

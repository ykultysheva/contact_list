//
//  InputCollector.m
//  contact_list
//
//  Created by Yana Kultysheva on 2016-06-29.
//  Copyright © 2016 Yana Kultysheva. All rights reserved.
//

#import "InputCollector.h"

@implementation InputCollector

-(NSString *)inputForPrompt:(NSString *)promptString {
//    NSLog(@"some text");
//    promptString - a parameter which returns user input after prompts
    NSLog(@"%@", promptString);
    char input1[255];
    fgets(input1, 255, stdin);
    NSString *inputString = [[NSString stringWithUTF8String:input1]
                             stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
//    NSLog(@"Input was: %@", inputString);
    return inputString;
}


@end

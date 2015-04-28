//
//  MeiosisStages.m
//  Meiosis
//
//  Created by Cole on 4/27/15.
//  Copyright (c) 2015 Cole Hudson. All rights reserved.
//

#import "MeiosisStages.h"

@interface MeiosisStages ()

@end

@implementation MeiosisStages

-(void)setup
{
    //set the original array
    self.original = @[@"Interphase", @"Prophase 1", @"Metaphase 1", @"Anaphase 1", @"Telophase 1", @"Cytokinesis", @"Prophase 2", @"Metaphase 2", @"Anaphase 2", @"Telophase 2", @"Cytokinesis"];
    
    int count = self.original.count;
    
    //set the randomized stages and the order answer key
    for(int i = 0; i < count; i++)
    {
        int index = arc4random() % self.original.count;
        NSString *string = [self.original objectAtIndex:index];
        
        [self.stages addObject:string];
        [self.original removeObject:string];
    }
    
}

@end

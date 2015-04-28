//
//  MeiosisStages.m
//  Meiosis
//
//  Created by Cole on 4/27/15.
//  Copyright (c) 2015 Cole Hudson. All rights reserved.
//

#import "MeiosisStages.h"
#import <UiKit/UIKit.h>

@interface MeiosisStages ()

@end

@implementation MeiosisStages

//setup
-(void)setup
{
    self.original = [[NSMutableArray alloc] init];
    self.colors = [[NSMutableArray alloc] init];
    self.stages = [[NSMutableArray alloc] init];
    self.userChoices = [[NSMutableArray alloc] init];
    
    //set the original array
    //self.original = @[@"Interphase", @"Prophase 1", @"Metaphase 1", @"Anaphase 1", @"Telophase 1", @"Cytokinesis", @"Prophase 2", @"Metaphase 2", @"Anaphase 2", @"Telophase 2", @"Cytokinesis"];
    //set up the original
    [self.original addObject:@"Interphase"];
    [self.original addObject:@"Prophase 1"];
    [self.original addObject:@"Metaphase 1"];
    [self.original addObject:@"Anaphase 1"];
    [self.original addObject:@"Telophase 1"];
    [self.original addObject:@"Cytokinesis"];
    [self.original addObject:@"Prophase 2"];
    [self.original addObject:@"Metaphase 2"];
    [self.original addObject:@"Anaphase 2"];
    [self.original addObject:@"Telophase 2"];
    [self.original addObject:@"Cytokinesis"];
    
    
    for(int i = 0; i < self.original.count; i++)
    {
        NSLog(@"%@", [self.original objectAtIndex:i]);
    }
    
    int count = self.original.count;
    
    //set the randomized stages and the order answer key
    for(int i = 0; i < count - 1; i++)
    {
        int index = arc4random() % self.original.count;
        NSLog(@"%d", index);
        NSString *string = [self.original objectAtIndex:index];
        
        [self.stages addObject:string];
        [self.original removeObject: [self.original objectAtIndex:index]];
    }
    
    //set the colors array
    for(int i = 0; i < count; i++)
    {
        //set all of the colors to black
        UIColor *standardColor = [UIColor blackColor];
        
        [self.colors addObject:standardColor];
    }
}

//make selection
-(void)makeSelectionAtIndex:(int)index selectionString:(NSString *)selection
{
    //set the color at that selection index
    UIColor *selectedColor = [UIColor redColor];
    [self.colors setObject:selectedColor atIndexedSubscript:index];
    
    //add that selected thing to the array
    [self.userChoices addObject:selection];
}



@end

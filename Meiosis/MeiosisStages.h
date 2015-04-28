//
//  MeiosisStages.h
//  Meiosis
//
//  Created by Cole on 4/27/15.
//  Copyright (c) 2015 Cole Hudson. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface MeiosisStages : NSObject

@property (strong, nonatomic) NSMutableArray *stages;
@property (strong, nonatomic) NSMutableArray *colors;
@property (strong, nonatomic) NSMutableArray *original;
@property (strong, nonatomic) NSMutableArray *userChoices;
@property (strong, nonatomic) NSMutableArray *originalCopy;

-(void)setup;

-(void)makeSelectionAtIndex:(int)index selectionString:(NSString*)selection;

-(BOOL)checkUserCorrectness;


@end

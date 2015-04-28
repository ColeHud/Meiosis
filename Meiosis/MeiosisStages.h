//
//  MeiosisStages.h
//  Meiosis
//
//  Created by Cole on 4/27/15.
//  Copyright (c) 2015 Cole Hudson. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MeiosisStages : NSObject

@property (strong, nonatomic) NSMutableArray *stages;
@property (strong, nonatomic) NSMutableArray *colors;
@property (strong, nonatomic) NSMutableArray *original;
@property (strong, nonatomic) NSMutableArray *userChoices;

-(void)setup;

@end

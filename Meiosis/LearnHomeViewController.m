//
//  LearnHomeViewController.m
//  Meiosis
//
//  Created by Cole on 4/23/15.
//  Copyright (c) 2015 Cole Hudson. All rights reserved.
//

#import "LearnHomeViewController.h"

@interface LearnHomeViewController ()

@end

@implementation LearnHomeViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    /*Change color of title
    [self.navigationController.navigationBar
     setTitleTextAttributes:@{NSForegroundColorAttributeName : [UIColor colorWithRed:177.0f/255.0f
                                                                               green:235.0f/255.0f
                                                                                blue:0.0f/255.0f
                                                                               alpha:1.0f]}];
     */
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

//start button clicked
- (IBAction)startButtonClicked:(id)sender
{
    self.startButton = sender;
    [sender removeFromSuperview];
    
    
}


@end

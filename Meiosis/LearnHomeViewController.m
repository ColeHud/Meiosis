//
//  LearnHomeViewController.m
//  Meiosis
//
//  Created by Cole on 4/23/15.
//  Copyright (c) 2015 Cole Hudson. All rights reserved.
//

#import "LearnHomeViewController.h"

@interface LearnHomeViewController ()

//toolbar buttons
@property (strong, nonatomic) IBOutlet UIBarButtonItem *previousButton;
@property (strong, nonatomic) IBOutlet UIBarButtonItem *playButton;
@property (strong, nonatomic) IBOutlet UIBarButtonItem *nextButton;
@property (strong, nonatomic) IBOutlet UIImageView *mainImage;
@property (strong, nonatomic) UIImage *image;

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
    self.image = [UIImage imageNamed:@"LaunchLogo.png"];
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

//previous button clicked
- (IBAction)previousButtonClicked:(UIBarButtonItem *)sender
{
    NSLog(@"Previous clicked");
}

//play button clicked
- (IBAction)playButtonClicked:(UIBarButtonItem *)sender
{
    NSLog(@"Play clicked");
}

//next button clicked
- (IBAction)nextButtonClicked:(UIBarButtonItem *)sender
{
    NSLog(@"Next clicked");
    [self.mainImage setImage:self.image];
}





@end

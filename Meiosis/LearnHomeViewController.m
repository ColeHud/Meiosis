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

//image
@property (strong, nonatomic) IBOutlet UIImageView *mainImage;
@property (strong, nonatomic) UIImage *image;

//count
@property (nonatomic) NSUInteger *count;

//array of images for meiosis
@property (strong, nonatomic) NSArray *images;

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
    //self.image = [UIImage imageNamed:@"LaunchLogo.png"];
    
    //load in images
    self.images = @[[UIImage imageNamed:@"interphase 1.png"], [UIImage imageNamed:@"prophase 1.png"], [UIImage imageNamed:@"metaphase 1.png"], [UIImage imageNamed:@"anaphase 1.png"], [UIImage imageNamed:@"telophase 1.png"], [UIImage imageNamed:@"prophase 2.png"], [UIImage imageNamed:@"metaphase 2.png"], [UIImage imageNamed:@"anaphase 2.png"], [UIImage imageNamed:@"telophase 2.png"]];
    self.count = 0;
    
    [self setMainImageContent];
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
    NSLog(@"%d", self.count);
    
    int temp = (int)self.count;
    temp--;
    temp -= 3;
    
    if(self.count > 0)
    {
        self.count--;
        self.count = (int)self.count + 3;
        
        [self setMainImageContent];
    }
}



//play button clicked
- (IBAction)playButtonClicked:(UIBarButtonItem *)sender
{
    NSLog(@"Play clicked");
}



//next button clicked
- (IBAction)nextButtonClicked:(UIBarButtonItem *)sender
{
    NSLog(@"%d", self.count);
    //[self.mainImage setImage:self.image];
    if(self.count < [self.images count] - 1)
    {
        NSLog(@"%d", self.count);
        
        self.count++;
        self.count = (int)self.count - 3;
        
        [self setMainImageContent];
    }
}

-(void)setMainImageContent
{
    //set the main image to be the image at count index
    [self.mainImage setImage:[self.images objectAtIndex:self.count]];
}





@end

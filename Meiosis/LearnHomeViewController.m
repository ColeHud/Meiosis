//
//  LearnHomeViewController.m
//  Meiosis
//
//  Created by Cole on 4/23/15.
//  Copyright (c) 2015 Cole Hudson. All rights reserved.
//

#import "LearnHomeViewController.h"
@import AVFoundation;

//IMPLEMENTATION
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

//label
@property (strong, nonatomic) IBOutlet UILabel *stageLabel;
@property (strong, nonatomic) NSArray *labels;

@property (strong, nonatomic)AVAudioPlayer *_audioPlayer;

//audio
@property (strong, nonatomic) NSArray *audio;

@end


//IMPLEMENTATION
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
    
    //set the image
    [self setMainImageContent];
    
    //set the labels
    self.labels = @[@"Interphase and Prophase 1", @"Prophase 1 Metaphase 1", @"Metaphase 1 and Anaphase 1", @"Anaphase 1 and Telophase 1", @"Cytokinesis", @"Prophase 2 and Metaphase 2", @"Metaphase 2 and Anaphase 2", @"Anaphase 2 and Telophase 2", @"Cytokinesis"];
    
    //set the audio
    self.audio = @[@"interphase-prophase1.mp3", @"prophase1-metaphase1.mp3", @"metaphase1-anaphase1.mp3", @"anaphase1-telphase1.mp3", @"cytokinesis1.mp3", @"prophase2-metaphase2.mp3", @"metaphase2-anaphase2.mp3", @"anaphase2-telophase2.mp3", @"cytokinesis2.mp3"];
    
    //set the label
    [self.stageLabel setText:[self.labels objectAtIndex:(int)self.count]];
    
    
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
        [self.stageLabel setText:[self.labels objectAtIndex:(int)self.count]];
    }
}

//play button clicked
- (IBAction)playButtonClicked:(UIBarButtonItem *)sender
{
    //get the name of the current audio
    NSString *audioName = [self.audio objectAtIndex:self.count];
    
    //create the audio player
    // Construct URL to sound file
    NSString *path = [NSString stringWithFormat:@"%@/%@", [[NSBundle mainBundle] resourcePath], audioName];
    NSURL *soundUrl = [NSURL fileURLWithPath:path];
    
    // Create audio player object and initialize with URL to sound
    __audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:soundUrl error:nil];
    
    //audio
    [self._audioPlayer play];

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
        [self.stageLabel setText:[self.labels objectAtIndex:(int)self.count]];
    }
}

-(void)setMainImageContent
{
    //set the main image to be the image at count index
    [self.mainImage setImage:[self.images objectAtIndex:self.count]];
}



@end

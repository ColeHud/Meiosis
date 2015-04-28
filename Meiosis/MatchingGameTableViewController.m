//
//  MatchingGameTableViewController.m
//  Meiosis
//
//  Created by Cole on 4/27/15.
//  Copyright (c) 2015 Cole Hudson. All rights reserved.
//

#import "MatchingGameTableViewController.h"
#import "MeiosisStages.h"

@interface MatchingGameTableViewController ()

@property (strong, nonatomic) NSMutableArray *array;
@property (strong, nonatomic) MeiosisStages *meiosis;

@end

@implementation MatchingGameTableViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    //create the mesiosis stages object
    self.meiosis = [[MeiosisStages alloc] init];
    [self.meiosis setup];
    
    //set the array
    //self.array = @[@"Interphase", @"Prophase 1", @"Metaphase 1"];
    
    /*
    //print each element
    for(int i = 0; i < _array.count; i++)
    {
        NSLog(@"%@", [_array objectAtIndex:i]);
    }
     */
    
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Order Game" message:@"Tap the stages in the order they occur." delegate:self cancelButtonTitle:@"Ok" otherButtonTitles:nil, nil];
    [alert show];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return [self.meiosis.stages count];
}


//set up the cells
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"prototype" forIndexPath:indexPath];
    
    // Configure the cell...
    int row = indexPath.row;
    //NSLog(@"%d", row);
    
    
    //set the text and color
    cell.textLabel.text = [self.meiosis.stages objectAtIndex:row];
    cell.textLabel.textColor = [self.meiosis.colors objectAtIndex:row];
   
    
    return cell;
}

//handle selections
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:NO];
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"prototype" forIndexPath:indexPath];
    
    int row = indexPath.row;
    [self.meiosis makeSelectionAtIndex:row];
    
    [tableView reloadData];
    
    //if the user has finished selecting everything
    if(self.meiosis.userChoices.count == self.meiosis.stages.count)
    {
        [self.meiosis checkUserCorrectness];
        [self.meiosis setup];
    }
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

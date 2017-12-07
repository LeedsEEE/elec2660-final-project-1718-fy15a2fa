//
//  FemaleTableViewController.m
//  ProjectBeAthlatic
//
//  Created by Ahmad Alotaibi on 21/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import "FemaleTableViewController.h"

@interface FemaleTableViewController ()

@end

@implementation FemaleTableViewController

#pragma mark View Method

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //creating an object for female's workouts in order to get access to get access to all stored workouts and data
    self.WorkoutForFemale = [[FemaleData alloc] init];
    
    self.navigationItem.title = @"Workouts for Female"; //add a title
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark Header for Sctions

//this method is used in order to add headrs to each body parts
- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section; {
    
    //identify HeaderFemale as NSString in order to header as text
    NSString *HeaderFemale;
    
    //I used if statements many times in order to set the titles for each group of workouts
    if (section == 0) {
        
        // type header for first section
        HeaderFemale = [NSString stringWithFormat:@"Shoulder"];
        
    } if (section == 1) {
        
        // type header for second section
        HeaderFemale = [NSString stringWithFormat:@"Arms"];
        
    } if (section == 2) {
        
        // type header for third section
        HeaderFemale = [NSString stringWithFormat:@"Legs"];
        
    } if (section == 3) {
        
        // type header for fourth section
        HeaderFemale = [NSString stringWithFormat:@"Chest"];
        
    } if (section == 4) {
        
        // type header for fifth section
        HeaderFemale = [NSString stringWithFormat:@"ABS"];
        
    }
    
    return HeaderFemale; // return HeaderFemale in order to get the titles
}

#pragma mark Number of Sections Method

//this method is used to set the number of sections in the table view
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 5; // return 5 in order to get 5 sections in the table view
}

#pragma mark Number of Rows in Section

//this mehtod is used in order to set the number of rows in section
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    //identify numberOfWorkout as integer in order to set number of rows
    NSInteger numberOfWorkout = 0;
    
    //use if many if statements in order to set number of rows in each section
    if (section == 0) {
        
        //use count command in order to calculate number rows in this section
        numberOfWorkout = self.WorkoutForFemale.ShouldersFemale.count;
        
    } if (section == 1) {
        
        //use count command in order to calculate number rows in this section
        numberOfWorkout = self.WorkoutForFemale.ArmsFeamle.count;
        
    } if (section == 2) {
        
        //use count command in order to calculate number rows in this section
        numberOfWorkout = self.WorkoutForFemale.LegsFemale.count;
        
    } if (section == 3) {
        
        //use count command in order to calculate number rows in this section
        numberOfWorkout = self.WorkoutForFemale.ChestFemale.count;
        
    } if (section == 4) {
        
        //use count command in order to calculate number rows in this section
        numberOfWorkout = self.WorkoutForFemale.ABSFemale.count;
        
    }
    
    return numberOfWorkout; // numberOfWorkout in order to get the right number of rows in each section
    
}

#pragma mark Cells Details

/* uncomment this method because it provides the data source with a cell to use
 change the identifier name to FemaleCell in order to update the workout in each body parts */
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"FemaleCell" forIndexPath:indexPath];
    
    // Configure the cell...
    
    // cell location is defined by indexPath command which works like coordinate
    if (indexPath.section == 0) { //this section represents shoulders section
        
        //create temprory object in order to hold the information that appear in the cell
        FemaleProperties *temprory = [self.WorkoutForFemale.ShouldersFemale objectAtIndex:indexPath.row];
        
        cell.detailTextLabel.text = temprory.NameWorkoutFemale; //set the information that appears in the detail text label
        cell.textLabel.text = temprory.LevelFemale; //set the information that appears in the text label
        
        // cell location is defined by indexPath command which works like coordinate
    } if (indexPath.section == 1) {
        
        //create temprory object in order to hold the information that appear in the cell
        FemaleProperties *temprory = [self.WorkoutForFemale.ArmsFeamle objectAtIndex:indexPath.row];
        
        cell.detailTextLabel.text = temprory.NameWorkoutFemale; //set the information that appears in the detail text label
        cell.textLabel.text = temprory.LevelFemale; //set the information that appears in the text label
        
        // cell location is defined by indexPath command which works like coordinate
    } if (indexPath.section == 2) {
        
        //create temprory object in order to hold the information that appear in the cell
        FemaleProperties *temprory = [self.WorkoutForFemale.LegsFemale objectAtIndex:indexPath.row];
        
        cell.detailTextLabel.text = temprory.NameWorkoutFemale; //set the information that appears in the detail text label
        cell.textLabel.text = temprory.LevelFemale; //set the information that appears in the text label
        
        // cell location is defined by indexPath command which works like coordinate
    } if (indexPath.section == 3) {
        
        //create temprory object in order to hold the information that appear in the cell
        FemaleProperties *temprory = [self.WorkoutForFemale.ChestFemale objectAtIndex:indexPath.row];
        
        cell.detailTextLabel.text = temprory.NameWorkoutFemale; //set the information that appears in the detail text label
        cell.textLabel.text = temprory.LevelFemale; //set the information that appears in the text label
        
        // cell location is defined by indexPath command which works like coordinate
    } if (indexPath.section == 4) {
        
        //create temprory object in order to hold the information that appear in the cell
        FemaleProperties *temprory = [self.WorkoutForFemale.ABSFemale objectAtIndex:indexPath.row];
        
        cell.detailTextLabel.text = temprory.NameWorkoutFemale; //set the information that appears in the detail text label
        cell.textLabel.text = temprory.LevelFemale; //set the information that appears in the text label
        
    }
    
    return cell; //return cell in order to get all the information that required in the cell
}

#pragma mark Color of Cells

// this method helps to  set the background color for each cell in the section
- (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath {
    
    
    // I used if and else if statement in order to set the background color for the cells in each section
    if (indexPath.section == 0) { // shoulders section
        
        // this code helps to set the odd cells to group color, and even cells to yellow
        cell.backgroundColor = ([indexPath row]%2)?[UIColor yellowColor]:[UIColor groupTableViewBackgroundColor];
        
    } else if (indexPath.section == 1) { // arms section
        
        // this code helps to set the odd cells to yellow, and even cells to group color
        cell.backgroundColor = ([indexPath row]%2)?[UIColor groupTableViewBackgroundColor]:[UIColor yellowColor];
        
    } else if (indexPath.section == 2) { // legs section
        
        // this code helps to set the odd cells to group color, and even cells to yellow
        cell.backgroundColor = ([indexPath row]%2)?[UIColor yellowColor]:[UIColor groupTableViewBackgroundColor];
        
    } else if (indexPath.section == 3) { // chest section
        
        // this code helps to set the odd cells to yellow, and even cells to group color
        cell.backgroundColor = ([indexPath row]%2)?[UIColor groupTableViewBackgroundColor]:[UIColor yellowColor];
        
    } else { // ABS section
        
        // this code helps to set the odd cells to group color, and even cells to yellow
        cell.backgroundColor = ([indexPath row]%2)?[UIColor yellowColor]:[UIColor groupTableViewBackgroundColor];
        
    }
    
    
    
}

#pragma mark Color of Headers

// this helps to set the background and text color for each header (shoudlers, arms, chest, legs and ABS)
- (void)tableView:(UITableView *)tableView willDisplayHeaderView:(UIView *)view forSection:(NSInteger)section
{
    
    // create onject in order to allow me to the background and text clor
    UITableViewHeaderFooterView *Myheader = (UITableViewHeaderFooterView*) view;
    
    Myheader.contentView.backgroundColor = [UIColor blueColor]; //set the background color
    [Myheader.textLabel setTextColor:[UIColor whiteColor]]; //set the text color
    
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


#pragma mark - Navigation

//uncomment this method in order to navigate the information of the workouts to the viewcontroller
//when the user click on one of the workouts

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    
    // I used if statement in order to check that we are connected to the segue that we want
    if ([[segue identifier] isEqualToString:@"ShowWorkoutFemale"]) {
        
        // I created a local copy of destinationViewController
        FemaleViewController *recievedViewController = [segue destinationViewController];
        
        //I used NSIndexPath in order to make sure that we get the right information when the users select one of the cells in the table view
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        
        // I used many if statements in order to show the information for each cell in each section
        if (indexPath.section == 0) { // this repesents shoulders section
            
            // I created temmporary object in order to hold information for each cell in section 0
            FemaleProperties *temporary = [self.WorkoutForFemale.ShouldersFemale objectAtIndex:indexPath.row];
            // I set the temporary information as object  in the recievedViewController
            recievedViewController.FemaleData = temporary;
            
        } if (indexPath.section == 1) { // this represents arms section
            
            // I created temmporary object in order to hold information for each cell in section 1
            FemaleProperties *temporary = [self.WorkoutForFemale.ArmsFeamle objectAtIndex:indexPath.row];
            // I set the temporary information as object  in the recievedViewController
            recievedViewController.FemaleData = temporary;
            
        } if (indexPath.section == 2) { // this represents legs section
            
            // I created temmporary object in order to hold information for each cell in section 2
            FemaleProperties *temporary = [self.WorkoutForFemale.LegsFemale objectAtIndex:indexPath.row];
            // I set the temporary information as object  in the recievedViewController
            recievedViewController.FemaleData = temporary;
            
        } if (indexPath.section == 3) { // this represents chest section
            
            // I created temmporary object in order to hold information for each cell in section 3
            FemaleProperties *temporary = [self.WorkoutForFemale.ChestFemale objectAtIndex:indexPath.row];
            // I set the temporary information as object  in the recievedViewController
            recievedViewController.FemaleData = temporary;
            
        } if (indexPath.section == 4) { // this represetns ABS section
            
            // I created temmporary object in order to hold information for each cell in section 4
            FemaleProperties *temporary = [self.WorkoutForFemale.ABSFemale objectAtIndex:indexPath.row];
            // I set the temporary information as object  in the recievedViewController
            recievedViewController.FemaleData = temporary;
            
        }
        
    }
    
    
}


@end

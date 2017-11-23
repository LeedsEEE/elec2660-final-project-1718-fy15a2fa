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

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //creating an object for female's workouts in order to get access to get access to all stored workouts and data
    self.WorkoutForFemale = [[FemaleData alloc] init];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark header for each body parts

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

#pragma mark numberOfSectionsInTableView

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 5;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    NSInteger numberOfWorkout = 0;
    
    if (section == 0) {
        numberOfWorkout = self.WorkoutForFemale.ShouldersFemale.count;
    } if (section == 1) {
        numberOfWorkout = self.WorkoutForFemale.ArmsFeamle.count;
    } if (section == 2) {
        numberOfWorkout = self.WorkoutForFemale.LegsFemale.count;
    } if (section == 3) {
        numberOfWorkout = self.WorkoutForFemale.ChestFemale.count;
    } if (section == 4) {
        numberOfWorkout = self.WorkoutForFemale.ABSFemale.count;
    }
    
    return numberOfWorkout;
    
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"FemaleCell" forIndexPath:indexPath];
    
    // Configure the cell...
    
    if (indexPath.section == 0) {
        
        FemaleProperties *temprory = [self.WorkoutForFemale.ShouldersFemale objectAtIndex:indexPath.row];
        
        cell.detailTextLabel.text = temprory.NameWorkoutFemale;
        cell.textLabel.text = temprory.LevelFemale;
        
    } if (indexPath.section == 1) {
        
        FemaleProperties *temprory = [self.WorkoutForFemale.ArmsFeamle objectAtIndex:indexPath.row];
        
        cell.detailTextLabel.text = temprory.NameWorkoutFemale;
        cell.textLabel.text = temprory.LevelFemale;
        
    } if (indexPath.section == 2) {
        
        FemaleProperties *temprory = [self.WorkoutForFemale.LegsFemale objectAtIndex:indexPath.row];
        
        cell.detailTextLabel.text = temprory.NameWorkoutFemale;
        cell.textLabel.text = temprory.LevelFemale;
        
    } if (indexPath.section == 3) {
        
        FemaleProperties *temprory = [self.WorkoutForFemale.ChestFemale objectAtIndex:indexPath.row];
        
        cell.detailTextLabel.text = temprory.NameWorkoutFemale;
        cell.textLabel.text = temprory.LevelFemale;
        
    } if (indexPath.section == 4) {
        
        FemaleProperties *temprory = [self.WorkoutForFemale.ABSFemale objectAtIndex:indexPath.row];
        
        cell.detailTextLabel.text = temprory.NameWorkoutFemale;
        cell.textLabel.text = temprory.LevelFemale;
        
    }
    
    return cell;
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

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    
    if ([[segue identifier] isEqualToString:@"ShowWorkoutFemale"]) {
        
        FemaleViewController *recievedViewController = [segue destinationViewController];
        
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        
        if (indexPath.section == 0) {
            
            FemaleProperties *temporary = [self.WorkoutForFemale.ShouldersFemale objectAtIndex:indexPath.row];
            recievedViewController.FemaleData = temporary;
            
        } if (indexPath.section == 1) {
            
            FemaleProperties *temporary = [self.WorkoutForFemale.ArmsFeamle objectAtIndex:indexPath.row];
            recievedViewController.FemaleData = temporary;
            
        } if (indexPath.section == 2) {
            
            FemaleProperties *temporary = [self.WorkoutForFemale.LegsFemale objectAtIndex:indexPath.row];
            recievedViewController.FemaleData = temporary;
            
        } if (indexPath.section == 3) {
            
            FemaleProperties *temporary = [self.WorkoutForFemale.ChestFemale objectAtIndex:indexPath.row];
            recievedViewController.FemaleData = temporary;
            
        } if (indexPath.section == 4) {
            
            FemaleProperties *temporary = [self.WorkoutForFemale.ABSFemale objectAtIndex:indexPath.row];
            recievedViewController.FemaleData = temporary;
            
        }
        
    }
    
    
}


@end

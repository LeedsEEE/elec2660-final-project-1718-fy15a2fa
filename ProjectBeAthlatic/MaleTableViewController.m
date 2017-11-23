//
//  MaleTableViewController.m
//  ProjectBeAthlatic
//
//  Created by Ahmad Alotaibi on 21/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import "MaleTableViewController.h"

@interface MaleTableViewController ()

@end

@implementation MaleTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //creating an object for male's workouts in order to get access to get access to all stored workouts and data
    self.WorkoutForMale = [[MaleData alloc] init];
    
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
    
    //identify HeaderMale as NSString in order to header as text
    NSString *HeaderMale;
    
    //I used if statements many times in order to set the titles for each group of workouts
    if (section == 0) {
        
        // type header for first section
        HeaderMale = [NSString stringWithFormat:@"Shoulder"];
        
    } if (section == 1) {
        
        // type header for third section
        HeaderMale = [NSString stringWithFormat:@"Arms"];
        
    } if (section == 2) {
        
        // type header for third section
        HeaderMale = [NSString stringWithFormat:@"Legs"];
        
    } if (section == 3) {
        
        // type header for third section
        HeaderMale = [NSString stringWithFormat:@"Chest"];
        
    } if (section == 4) {
        
        // type header for third section
        HeaderMale = [NSString stringWithFormat:@"ABS"];
    }
    
    return HeaderMale; // return HeaderFemale in order to get the titles
}

#pragma mark numberOfSectionsInTableView

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 5;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    NSInteger numberOfWorkout = 0;
    
    if (section == 0) {
        numberOfWorkout = self.WorkoutForMale.ShouldersMale.count;
    } if (section == 1) {
        numberOfWorkout = self.WorkoutForMale.ArmsMale.count;
    } if (section == 2) {
        numberOfWorkout = self.WorkoutForMale.LegsMale.count;
    } if (section == 3) {
        numberOfWorkout = self.WorkoutForMale.ChestMale.count;
    } if (section == 4) {
        numberOfWorkout = self.WorkoutForMale.ABSMale.count;
    }

    return numberOfWorkout;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"MaleCell" forIndexPath:indexPath];
    
    // Configure the cell...
    
    if (indexPath.section == 0) {
        
        MaleProperties *temprory = [self.WorkoutForMale.ShouldersMale objectAtIndex:indexPath.row];
        
        cell.detailTextLabel.text = temprory.NameWorkoutMale;
        cell.textLabel.text = temprory.LevelMale;
        
    } if (indexPath.section == 1) {
        
        MaleProperties *temprory = [self.WorkoutForMale.ArmsMale objectAtIndex:indexPath.row];
        
        cell.detailTextLabel.text = temprory.NameWorkoutMale;
        cell.textLabel.text = temprory.LevelMale;
        
    } if (indexPath.section == 2) {
        
        MaleProperties *temprory = [self.WorkoutForMale.LegsMale objectAtIndex:indexPath.row];
        
        cell.detailTextLabel.text = temprory.NameWorkoutMale;
        cell.textLabel.text = temprory.LevelMale;
        
    } if (indexPath.section == 3) {
        
        MaleProperties *temprory = [self.WorkoutForMale.ChestMale objectAtIndex:indexPath.row];
        
        cell.detailTextLabel.text = temprory.NameWorkoutMale;
        cell.textLabel.text = temprory.LevelMale;
        
    } if (indexPath.section == 4) {
        
        MaleProperties *temprory = [self.WorkoutForMale.ABSMale objectAtIndex:indexPath.row];
        
        cell.detailTextLabel.text = temprory.NameWorkoutMale;
        cell.textLabel.text = temprory.LevelMale;
        
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
    
    if ([[segue identifier] isEqualToString:@"ShowWorkoutMale"]) {
        
        MaleViewController *recievedViewController = [segue destinationViewController];
        
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        
        if (indexPath.section == 0) {
            
            MaleProperties *temporary = [self.WorkoutForMale.ShouldersMale objectAtIndex:indexPath.row];
            recievedViewController.MaleData = temporary;
            
        } if (indexPath.section == 1) {
            
            MaleProperties *temporary = [self.WorkoutForMale.ArmsMale objectAtIndex:indexPath.row];
            recievedViewController.MaleData = temporary;
            
        } if (indexPath.section == 2) {
            
            MaleProperties *temporary = [self.WorkoutForMale.LegsMale objectAtIndex:indexPath.row];
            recievedViewController.MaleData = temporary;
            
        } if (indexPath.section == 3) {
            
            MaleProperties *temporary = [self.WorkoutForMale.ChestMale objectAtIndex:indexPath.row];
            recievedViewController.MaleData = temporary;
        
        } if (indexPath.section == 4) {
            
            MaleProperties *temporary = [self.WorkoutForMale.ABSMale objectAtIndex:indexPath.row];
            recievedViewController.MaleData = temporary;
            
        }
    
    }
    
}


@end

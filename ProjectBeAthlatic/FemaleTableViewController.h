//
//  FemaleTableViewController.h
//  ProjectBeAthlatic
//
//  Created by Ahmad Alotaibi on 21/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FemaleData.h" //import maledatamodel in order to create an object that can access all the workout and data that stored
#import "FemaleViewController.h" //import this class in order to get the information when the cell is clicked

@interface FemaleTableViewController : UITableViewController

//create property which helps craete an object in order to get access to the all workout and data stored
@property (strong, nonatomic) FemaleData *WorkoutForFemale;

@end

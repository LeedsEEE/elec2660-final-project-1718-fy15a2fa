//
//  FemaleViewController.h
//  ProjectBeAthlatic
//
//  Created by Ahmad Alotaibi on 21/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FemaleProperties.h" //import this class in order to create an object and recieve data

@interface FemaleViewController : UIViewController

//show level of workout
@property (weak, nonatomic) IBOutlet UILabel *LevelFemaleLabel;
//show time of workout
@property (weak, nonatomic) IBOutlet UILabel *TimeFemaleLabel;
//show discription of workout
@property (weak, nonatomic) IBOutlet UILabel *DiscriptionFemaleLabel;



// create a property in order to create an object in the implementation
@property (strong, nonatomic) FemaleProperties *FemaleData;

@end

//
//  FemaleViewController.m
//  ProjectBeAthlatic
//
//  Created by Ahmad Alotaibi on 21/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import "FemaleViewController.h"

@interface FemaleViewController ()

@end

@implementation FemaleViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    #pragma mark connected labels
    
    //creating an object in order to display that recieved data on the labels
    //I create an this object in viewDidLoad to ensure it will updates as soon as possible
    //when the viewcontroller opens
    self.LevelFemaleLabel.text = self.FemaleData.LevelFemale; //show level
    self.TimeFemaleLabel.text = self.FemaleData.TimeFemale; //show time
    self.DiscriptionFemaleLabel.text = self.FemaleData.DiscriptionFemale; //show discription
    
    #pragma mark images for shoulders workouts
    
    // use if statement for each workouts in order to add the image
    // if statements depend here on the name of the workout
   /*  if ([self.FemaleData.NameWorkoutFemale isEqualToString:@"ggg"]) { // check the workout by its name
     
     self.FemaleImage.image = [UIImage imageNamed:@""]; //adding the iamge by using imageNamed
     
     } */
    
    #pragma mark images for arms workouts
    
    #pragma mark images for legs workouts
    
    #pragma mark images for chest workouts
    
    #pragma mark images for ABS workouts
    
}

- (void)didReceiveMemoryWarning {
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

@end

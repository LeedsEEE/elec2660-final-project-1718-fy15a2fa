//
//  MaleViewController.m
//  ProjectBeAthlatic
//
//  Created by Ahmad Alotaibi on 21/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import "MaleViewController.h"

@interface MaleViewController ()

@end

@implementation MaleViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    #pragma mark connected labels
    
    //creating an object in order to display that recieved data on the labels
    //I create an this object in viewDidLoad to ensure it will updates as soon as possible
    //when the viewcontroller opens
    self.LevelMaleLabel.text = self.MaleData.LevelMale; //show level
    self.TimeMaleLabel.text = self.MaleData.TimeMale; //show time
    self.DiscriptionMaleLabell.text = self.MaleData.DiscriptionMale; //show discription
    
    #pragma mark images for shoulders workouts
    
    // use if statement for each workouts in order to add the image
    // if statements depend here on the name of the workout
   if ([self.MaleData.NameWorkoutMale isEqualToString:@"Face Pull"]) { // check the workout by its name
        
        self.MaleImage.image = [UIImage imageNamed:@"Image1"]; //adding the iamge by using imageNamed
       
       self.navigationItem.title = @"Face Pull"; //add a title
        
    }
    
    if ([self.MaleData.NameWorkoutMale isEqualToString:@"Standing Dumbbell Fly"]) { // check the workout by its name
        
           self.MaleImage.image = [UIImage imageNamed:@"Image2"]; //adding the iamge by using imageNamed
        
        self.navigationItem.title = @"Standing Dumbbell Fly"; //add a title
        
    }
    
    if ([self.MaleData.NameWorkoutMale isEqualToString:@"High Pull"]) { // check the workout by its name
        
           self.MaleImage.image = [UIImage imageNamed:@"Image3"]; //adding the iamge by using imageNamed
        
        self.navigationItem.title = @"High Pull"; //add a title
        
    }
    
    if ([self.MaleData.NameWorkoutMale isEqualToString:@"Dip"]) { // check the workout by its name
        
           self.MaleImage.image = [UIImage imageNamed:@"Image4"]; //adding the iamge by using imageNamed
        
        self.navigationItem.title = @"Dip"; //add a title
        
    }
    
    if ([self.MaleData.NameWorkoutMale isEqualToString:@"Trap Raise"]) { // check the workout by its name
        
           self.MaleImage.image = [UIImage imageNamed:@"Image5"]; //adding the iamge by using imageNamed
        
        self.navigationItem.title = @"Trap Raise"; //add a title
        
    }
    
    #pragma mark images for arms workouts
    
    // use if statement for each workouts in order to add the image
    // if statements depend here on the name of the workout
    if ([self.MaleData.NameWorkoutMale isEqualToString:@"Close-Grip Pushup"]) { // check the workout by its name
        
           self.MaleImage.image = [UIImage imageNamed:@"Image6"]; //adding the iamge by using imageNamed
        
        self.navigationItem.title = @"Close-Grip Pushup"; //add a title
        
    }
    
    if ([self.MaleData.NameWorkoutMale isEqualToString:@"Poundstone Curl"]) { // check the workout by its name
        
           self.MaleImage.image = [UIImage imageNamed:@"Image7"]; //adding the iamge by using imageNamed
        
        self.navigationItem.title = @"Poundstone Curl"; //add a title
        
    }
    
    if ([self.MaleData.NameWorkoutMale isEqualToString:@"Reverse Curl"]) { // check the workout by its name
        
           self.MaleImage.image = [UIImage imageNamed:@"Image8"]; //adding the iamge by using imageNamed
        
        self.navigationItem.title = @"Reverse Curl"; //add a title
        
    }
    
    if ([self.MaleData.NameWorkoutMale isEqualToString:@"Wide-Grip Curl"]) { // check the workout by its name
        
           self.MaleImage.image = [UIImage imageNamed:@"Image9"]; //adding the iamge by using imageNamed
        
        self.navigationItem.title = @"Wide-Grip Curl"; //add a title
        
    }
    
    if ([self.MaleData.NameWorkoutMale isEqualToString:@"Chinup"]) { // check the workout by its name
        
           self.MaleImage.image = [UIImage imageNamed:@"Image10"]; //adding the iamge by using imageNamed
        
        self.navigationItem.title = @"Chinup"; //add a title
        
    }
    
    #pragma mark images for legs workouts
    
    // use if statement for each workouts in order to add the image
    // if statements depend here on the name of the workout
    if ([self.MaleData.NameWorkoutMale isEqualToString:@"Bulgarian Split Squat"]) { // check the workout by its name
        
           self.MaleImage.image = [UIImage imageNamed:@"Image11"]; //adding the iamge by using imageNamed
        
        self.navigationItem.title = @"Bulgarian Split Squat"; //add a title
        
    }
    
    if ([self.MaleData.NameWorkoutMale isEqualToString:@"Dumbbell Stepup"]) { // check the workout by its name
        
           self.MaleImage.image = [UIImage imageNamed:@"Image12"]; //adding the iamge by using imageNamed
        
        self.navigationItem.title = @"Dumbbell Stepup"; //add a title
        
    }
    
    if ([self.MaleData.NameWorkoutMale isEqualToString:@"Single-Leg Romanian"]) { // check the workout by its name
        
           self.MaleImage.image = [UIImage imageNamed:@"Image13"]; //adding the iamge by using imageNamed
        
        self.navigationItem.title = @"Single-Leg Romanian"; //add a title
        
    }
    
    if ([self.MaleData.NameWorkoutMale isEqualToString:@"Dumbbell Squat"]) { // check the workout by its name
        
           self.MaleImage.image = [UIImage imageNamed:@"Image14"]; //adding the iamge by using imageNamed
        
        self.navigationItem.title = @"Dumbbell Squat"; //add a title
        
    }
    
    if ([self.MaleData.NameWorkoutMale isEqualToString:@"Barbell Calf Raise"]) { // check the workout by its name
        
           self.MaleImage.image = [UIImage imageNamed:@"Image15"]; //adding the iamge by using imageNamed
        
        self.navigationItem.title = @"Barbell Calf Raise"; //add a title
        
    }
    
    #pragma mark images for chest workouts
    
    // use if statement for each workouts in order to add the image
    // if statements depend here on the name of the workout
    if ([self.MaleData.NameWorkoutMale isEqualToString:@"Dumbbell Overhead Press"]) { // check the workout by its name
        
           self.MaleImage.image = [UIImage imageNamed:@"Image16"]; //adding the iamge by using imageNamed
        
        self.navigationItem.title = @"Dumbbell Overhead Press"; //add a title
        
    }
    
    if ([self.MaleData.NameWorkoutMale isEqualToString:@"Dumbbell Row"]) { // check the workout by its name
        
           self.MaleImage.image = [UIImage imageNamed:@"Image17"]; //adding the iamge by using imageNamed
        
        self.navigationItem.title = @"Dumbbell Row"; //add a title
        
    }
    
    if ([self.MaleData.NameWorkoutMale isEqualToString:@"Dumbbell Curl"]) { // check the workout by its name
        
           self.MaleImage.image = [UIImage imageNamed:@"Image18"]; //adding the iamge by using imageNamed
        
        self.navigationItem.title = @"Dumbbell Curl"; //add a title
        
    }
    
    if ([self.MaleData.NameWorkoutMale isEqualToString:@"Standing Calf Raise"]) { // check the workout by its name
        
           self.MaleImage.image = [UIImage imageNamed:@"Image19"]; //adding the iamge by using imageNamed
        
        self.navigationItem.title = @"Standing Calf Raise"; //add a title
        
    }
    
    if ([self.MaleData.NameWorkoutMale isEqualToString:@"Incline Dumbbell Press"]) { // check the workout by its name
        
           self.MaleImage.image = [UIImage imageNamed:@"Image20"]; //adding the iamge by using imageNamed
        
        self.navigationItem.title = @"Incline Dumbbell Press"; //add a title
        
    }
    
    #pragma mark images for ABS workouts
    
    // use if statement for each workouts in order to add the image
    // if statements depend here on the name of the workout
    if ([self.MaleData.NameWorkoutMale isEqualToString:@"Flutter Kick"]) { // check the workout by its name
        
           self.MaleImage.image = [UIImage imageNamed:@"Image21"]; //adding the iamge by using imageNamed
        
        self.navigationItem.title = @"Flutter Kick"; //add a title
        
    }
    
    if ([self.MaleData.NameWorkoutMale isEqualToString:@"Plank"]) { // check the workout by its name
        
           self.MaleImage.image = [UIImage imageNamed:@"Image22"]; //adding the iamge by using imageNamed
        
        self.navigationItem.title = @"Plank"; //add a title
        
    }
    
    if ([self.MaleData.NameWorkoutMale isEqualToString:@"Side Plank"]) { // check the workout by its name
        
           self.MaleImage.image = [UIImage imageNamed:@"Image23"]; //adding the iamge by using imageNamed
        
        self.navigationItem.title = @"Side Plank"; //add a title
        
    }
    
    if ([self.MaleData.NameWorkoutMale isEqualToString:@"Weighted Situp"]) { // check the workout by its name
        
           self.MaleImage.image = [UIImage imageNamed:@"Image24"]; //adding the iamge by using imageNamed
        
        self.navigationItem.title = @"Weighted Situp"; //add a title
        
    }
    
    if ([self.MaleData.NameWorkoutMale isEqualToString:@"Pullup to Knee Raise"]) { // check the workout by its name
        
           self.MaleImage.image = [UIImage imageNamed:@"Image25"]; //adding the iamge by using imageNamed
        
        self.navigationItem.title = @"Pullup to Knee Raise"; //add a title
        
    }
    
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

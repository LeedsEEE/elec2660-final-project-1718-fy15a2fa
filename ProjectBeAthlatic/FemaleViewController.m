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
    self.DiscriptionFemaleLbell.text = self.FemaleData.DiscriptionFemale; //show discription
    
    #pragma mark images for shoulders workouts
    
    // use if statement for each workouts in order to add the image
    // if statements depend here on the name of the workout
     if ([self.FemaleData.NameWorkoutFemale isEqualToString:@"Scaption"]) { // check the workout by its name
     
     //self.FemaleImage.image = [UIImage imageNamed:@""]; //adding the iamge by using imageNamed
         
     self.navigationItem.title = @"Scaption"; //add a title
     
     }
    if ([self.FemaleData.NameWorkoutFemale isEqualToString:@"Lateral Raise"]) { // check the workout by its name
        
        //self.FemaleImage.image = [UIImage imageNamed:@""]; //adding the iamge by using imageNamed
        
        self.navigationItem.title = @"Lateral Raise"; //add a title
        
    }
    if ([self.FemaleData.NameWorkoutFemale isEqualToString:@"Bent Arm Lateral Raise"]) { // check the workout by its name
        
        //self.FemaleImage.image = [UIImage imageNamed:@""]; //adding the iamge by using imageNamed
        
        self.navigationItem.title = @"Bent Arm Lateral Raise"; //add a title
        
    }
    if ([self.FemaleData.NameWorkoutFemale isEqualToString:@"Cable External Rotation"]) { // check the workout by its name
        
        //self.FemaleImage.image = [UIImage imageNamed:@""]; //adding the iamge by using imageNamed
        
        self.navigationItem.title = @"Cable External Rotation"; //add a title
        
    }
    if ([self.FemaleData.NameWorkoutFemale isEqualToString:@"Seated Rear Lateral Raise"]) { // check the workout by its name
        
        //self.FemaleImage.image = [UIImage imageNamed:@""]; //adding the iamge by using imageNamed
        
        self.navigationItem.title = @"Seated Rear Lateral Raise"; //add a title
        
    } 
    
    #pragma mark images for arms workouts
    
    // use if statement for each workouts in order to add the image
    // if statements depend here on the name of the workout
    if ([self.FemaleData.NameWorkoutFemale isEqualToString:@"Bicep Curls"]) { // check the workout by its name
        
        //self.FemaleImage.image = [UIImage imageNamed:@""]; //adding the iamge by using imageNamed
        
        self.navigationItem.title = @"Bicep Curls"; //add a title
        
    }
    if ([self.FemaleData.NameWorkoutFemale isEqualToString:@"Advanced Push-ups"]) { // check the workout by its name
        
        //self.FemaleImage.image = [UIImage imageNamed:@""]; //adding the iamge by using imageNamed
        
        self.navigationItem.title = @"Advanced Push-ups"; //add a title
        
    }
    if ([self.FemaleData.NameWorkoutFemale isEqualToString:@"Cable Crossover"]) { // check the workout by its name
        
        //self.FemaleImage.image = [UIImage imageNamed:@""]; //adding the iamge by using imageNamed
        
        self.navigationItem.title = @"Cable Crossover"; //add a title
        
    }
    if ([self.FemaleData.NameWorkoutFemale isEqualToString:@"Arnold Shoulder Press"]) { // check the workout by its name
        
        //self.FemaleImage.image = [UIImage imageNamed:@""]; //adding the iamge by using imageNamed
        
        self.navigationItem.title = @"Arnold Shoulder Press"; //add a title
        
    }
    if ([self.FemaleData.NameWorkoutFemale isEqualToString:@"Alternating Push-ups"]) { // check the workout by its name
        
        //self.FemaleImage.image = [UIImage imageNamed:@""]; //adding the iamge by using imageNamed
        
        self.navigationItem.title = @"Alternating Push-ups"; //add a title
    }
    
    #pragma mark images for legs workouts
    
    // use if statement for each workouts in order to add the image
    // if statements depend here on the name of the workout
    if ([self.FemaleData.NameWorkoutFemale isEqualToString:@"Dumbbell Split Jump"]) { // check the workout by its name
        
        //self.FemaleImage.image = [UIImage imageNamed:@""]; //adding the iamge by using imageNamed
        
        self.navigationItem.title = @"Dumbbell Split Jump"; //add a title
        
    }
    if ([self.FemaleData.NameWorkoutFemale isEqualToString:@"Reverse Dumbbell Box Lunge"]) { // check the workout by its name
        
        //self.FemaleImage.image = [UIImage imageNamed:@""]; //adding the iamge by using imageNamed
        
        self.navigationItem.title = @"Reverse Dumbbell Box Lunge"; //add a title
        
    }
    if ([self.FemaleData.NameWorkoutFemale isEqualToString:@"Single-Arm Kettlebell Swing"]) { // check the workout by its name
        
        //self.FemaleImage.image = [UIImage imageNamed:@""]; //adding the iamge by using imageNamed
        
        self.navigationItem.title = @"Single-Arm Kettlebell Swing"; //add a title
        
    }
    if ([self.FemaleData.NameWorkoutFemale isEqualToString:@"Marching Hip Raise"]) { // check the workout by its name
        
        //self.FemaleImage.image = [UIImage imageNamed:@""]; //adding the iamge by using imageNamed
        
        self.navigationItem.title = @"Marching Hip Raise"; //add a title
        
    }
    if ([self.FemaleData.NameWorkoutFemale isEqualToString:@"Goblet Squat"]) { // check the workout by its name
        
        //self.FemaleImage.image = [UIImage imageNamed:@""]; //adding the iamge by using imageNamed
        
        self.navigationItem.title = @"Goblet Squat"; //add a title
    }
    
    #pragma mark images for chest workouts
    
    // use if statement for each workouts in order to add the image
    // if statements depend here on the name of the workout
    if ([self.FemaleData.NameWorkoutFemale isEqualToString:@"Bench Press"]) { // check the workout by its name
        
        //self.FemaleImage.image = [UIImage imageNamed:@""]; //adding the iamge by using imageNamed
        
        self.navigationItem.title = @"Bench Press"; //add a title
        
    }
    if ([self.FemaleData.NameWorkoutFemale isEqualToString:@"Medicine Ball Slams"]) { // check the workout by its name
        
        //self.FemaleImage.image = [UIImage imageNamed:@""]; //adding the iamge by using imageNamed
        
        self.navigationItem.title = @"Medicine Ball Slams"; //add a title
        
    }
    if ([self.FemaleData.NameWorkoutFemale isEqualToString:@"Dumbbell Flyes"]) { // check the workout by its name
        
        //self.FemaleImage.image = [UIImage imageNamed:@""]; //adding the iamge by using imageNamed
        
        self.navigationItem.title = @"Dumbbell Flyes"; //add a title
        
    }
    if ([self.FemaleData.NameWorkoutFemale isEqualToString:@"Burpees"]) { // check the workout by its name
        
        //self.FemaleImage.image = [UIImage imageNamed:@""]; //adding the iamge by using imageNamed
        
        self.navigationItem.title = @"Burpees"; //add a title
        
    }
    if ([self.FemaleData.NameWorkoutFemale isEqualToString:@"Medicine Ball Push-ups"]) { // check the workout by its name
        
        //self.FemaleImage.image = [UIImage imageNamed:@""]; //adding the iamge by using imageNamed
        
        self.navigationItem.title = @"Medicine Ball Push-ups"; //add a title
    }
    
    
    #pragma mark images for ABS workouts
    
    // use if statement for each workouts in order to add the image
    // if statements depend here on the name of the workout
    if ([self.FemaleData.NameWorkoutFemale isEqualToString:@"Side Plank Hold"]) { // check the workout by its name
        
        //self.FemaleImage.image = [UIImage imageNamed:@""]; //adding the iamge by using imageNamed
        
        self.navigationItem.title = @"Side Plank Hold"; //add a title
        
    }
    if ([self.FemaleData.NameWorkoutFemale isEqualToString:@"Suspended Plank With Knee Tuck"]) { // check the workout by its name
        
        //self.FemaleImage.image = [UIImage imageNamed:@""]; //adding the iamge by using imageNamed
        
        self.navigationItem.title = @"Suspended Plank With Knee Tuck"; //add a title
        
    }
    if ([self.FemaleData.NameWorkoutFemale isEqualToString:@"Sit-up to Standing"]) { // check the workout by its name
        
        //self.FemaleImage.image = [UIImage imageNamed:@""]; //adding the iamge by using imageNamed
        
        self.navigationItem.title = @"Sit-up to Standing"; //add a title
        
    }
    if ([self.FemaleData.NameWorkoutFemale isEqualToString:@"Roman Twist"]) { // check the workout by its name
        
        //self.FemaleImage.image = [UIImage imageNamed:@""]; //adding the iamge by using imageNamed
        
        self.navigationItem.title = @"Roman Twist"; //add a title
        
    }
    if ([self.FemaleData.NameWorkoutFemale isEqualToString:@"Vertical Leg Cruncht"]) { // check the workout by its name
        
        //self.FemaleImage.image = [UIImage imageNamed:@""]; //adding the iamge by using imageNamed
        
        self.navigationItem.title = @"Vertical Leg Cruncht"; //add a title
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

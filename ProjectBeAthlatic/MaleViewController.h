//
//  MaleViewController.h
//  ProjectBeAthlatic
//
//  Created by Ahmad Alotaibi on 21/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MaleProperties.h" //import this class in order to create an object and recieve data

@interface MaleViewController : UIViewController

//show a level of workout
@property (weak, nonatomic) IBOutlet UILabel *LevelMaleLabel;
//show a time of workout
@property (weak, nonatomic) IBOutlet UILabel *TimeMaleLabel;
// show an image of workout
@property (weak, nonatomic) IBOutlet UIImageView *MaleImage;
// shows a discription of workout
@property (weak, nonatomic) IBOutlet UITextView *DiscriptionMaleLabell;

// create a property in order to create an object in the implementation
@property (strong, nonatomic) MaleProperties *MaleData;

@end

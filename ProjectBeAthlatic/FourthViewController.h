//
//  FourthViewController.h
//  ProjectBeAthlatic
//
//  Created by Ahmad Alotaibi on 03/12/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FourthViewController : UIViewController

// buttons to save and delete the information
- (IBAction)SavedButton:(UIButton *)sender; // save the text in the text fields (action)
- (IBAction)ResetButton:(UIButton *)sender; // delete the text in the text fields (action)

// Text fields for user's information
@property (weak, nonatomic) IBOutlet UITextField *MyName; // set user's name (outlet)
@property (weak, nonatomic) IBOutlet UITextField *MyWeight;  // set user's weight (outlet)
@property (weak, nonatomic) IBOutlet UITextField *MyHeight;  // set user's height (outlet)
@property (weak, nonatomic) IBOutlet UITextField *MyAim;  // set ueser's aim (outlet)
@property (weak, nonatomic) IBOutlet UITextField *MyWorkout; // set user's workout (outlet)

// Text fields for user's personal trainer
@property (weak, nonatomic) IBOutlet UITextField *PTName; // personal trainer's name (outlet)
@property (weak, nonatomic) IBOutlet UITextField *PTPhone; // personal trainer's phone No. (outlet)
@property (weak, nonatomic) IBOutlet UITextField *PTEmail; //personal trianer's email (outlet)
@property (weak, nonatomic) IBOutlet UITextField *PTAdvice; //personal trianer's advice (outlet)

// Text fields for user's physical therapist
@property (weak, nonatomic) IBOutlet UITextField *PPName; // physical therapsit's name (outlet)
@property (weak, nonatomic) IBOutlet UITextField *PPPhone; // physical therapist's phone No. (outlet)
@property (weak, nonatomic) IBOutlet UITextField *PPEmail; // physical therapist's email. (outlet)
@property (weak, nonatomic) IBOutlet UITextField *PPAdvice; // physical therapist's advice (outlet)




@end

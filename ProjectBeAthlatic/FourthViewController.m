//
//  FourthViewController.m
//  ProjectBeAthlatic
//
//  Created by Ahmad Alotaibi on 03/12/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import "FourthViewController.h"

@interface FourthViewController ()

@end

@implementation FourthViewController

#pragma mark View method

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    
    // I have used scroll view in this view controller in order to allow the users the elements when they hold the devices
    // in different positions, and it works well in this view controller
    
   
    self.navigationItem.title = @"Profile"; //add a title
    
    //download the user's name that saved
    NSUserDefaults *oneSaved = [NSUserDefaults standardUserDefaults];
    NSString *oneLoad = [oneSaved objectForKey:@"SaveMyName"];
    [_MyName setText: oneLoad];
    
    //download the user's weight that saved
    NSUserDefaults *twoSaved = [NSUserDefaults standardUserDefaults]; // i did not make it NSInetger in order to allow the user save the unit (kg and Ib) which represents Strings
    NSString *twoLoad = [twoSaved objectForKey:@"SaveMyWeight"];
    [_MyWeight setText: twoLoad];
    
    //download the user's height that saved
    NSUserDefaults *threeSaved = [NSUserDefaults standardUserDefaults]; // i did not make it NSInetger in order to allow the user save the unit (m and ft) which represents Strings
    NSString *threeLoad = [threeSaved objectForKey:@"SaveMyHeight"];
    [_MyHeight setText: threeLoad];
    
    //download the user's aim that saved
    NSUserDefaults *fourSaved = [NSUserDefaults standardUserDefaults];
    NSString *fourLoad = [fourSaved objectForKey:@"SaveMyAim"];
    [_MyAim setText: fourLoad];
    
    //download the user's workout that saved
    NSUserDefaults *fiveSaved = [NSUserDefaults standardUserDefaults];
    NSString *fiveLoad = [fiveSaved objectForKey:@"SaveMyWorkout"];
    [_MyWorkout setText: fiveLoad];
    
    //download the trainer's name that saved
    NSUserDefaults *sixSaved = [NSUserDefaults standardUserDefaults];
    NSString *sixLoad = [sixSaved objectForKey:@"SavePTName"];
    [_PTName setText: sixLoad];
    
    //download the trainer's phone No that saved
    NSUserDefaults *sevenSaved = [NSUserDefaults standardUserDefaults];
    NSString *sevenLoad = [sevenSaved objectForKey:@"SavePTPhone"];
    [_PTPhone setText: sevenLoad];
    
    //download the trainer's email that saved
    NSUserDefaults *eightSaved = [NSUserDefaults standardUserDefaults];
    NSString *eightLoad = [eightSaved objectForKey:@"SavePTEmail"];
    [_PTEmail setText: eightLoad];
    
    //download the trainer's adive that saved
    NSUserDefaults *nineSaved = [NSUserDefaults standardUserDefaults];
    NSString *nineLoad = [nineSaved objectForKey:@"SavePTAdvice"];
    [_PTAdvice setText: nineLoad];
    
    //download the physical therapist's name that saved
    NSUserDefaults *tenSaved = [NSUserDefaults standardUserDefaults];
    NSString *tenLoad = [tenSaved objectForKey:@"SavePPName"];
    [_PPName setText: tenLoad];
    
    //download the physical therapist's phone No that saved
    NSUserDefaults *elevenSaved = [NSUserDefaults standardUserDefaults];
    NSString *elevenLoad = [elevenSaved objectForKey:@"SavePPPhone"];
    [_PPPhone setText: elevenLoad];
    
    //download the physical therapist's email that saved
    NSUserDefaults *twelveSaved = [NSUserDefaults standardUserDefaults];
    NSString *twelveLoad = [twelveSaved objectForKey:@"SavePPEamil"];
    [_PPEmail setText: twelveLoad];
    
    //download the physical therapist's advice that saved
    NSUserDefaults *thirteenSaved = [NSUserDefaults standardUserDefaults];
    NSString *thirteenLoad = [thirteenSaved objectForKey:@"SavePPAdvice"];
    [_PPAdvice setText: thirteenLoad];
    
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

#pragma mark Save Button

// this button is used to save infomation in the text fields
- (IBAction)SavedButton:(UIButton *)sender {
    
    NSLog(@"SaveButton Pressed"); //to check if the button work well
    
    // I added UIAlertController in order to the user chance to cancel saving the the infomation
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"Do you want to save the infomration ?" message:@"Press OK to save the data" preferredStyle:UIAlertControllerStyleAlert];
    
    // create cancel button in the UIAlertController
    UIAlertAction *cancelAction = [UIAlertAction
                                   actionWithTitle:@"cancel"
                                   style:UIAlertActionStyleCancel
                                   handler:^(UIAlertAction *action){
                                       
                                       NSLog(@"cancel"); //Using NSLog to check if cancel action work
                                       
                                   }];
    
    // create OK button in the UIAlertController
    UIAlertAction *OKAction = [UIAlertAction
                               actionWithTitle:@"OK"
                               style:UIAlertActionStyleDefault
                               handler:^(UIAlertAction *action) {
                                   
                                   NSLog(@"OK"); //Using NSLog to check if OK action work
                                   
                                   // save user's name
                                   NSString *emptyName = self.MyName.text;  // (1)
                                   NSUserDefaults *DefaultsEmptyName = [NSUserDefaults standardUserDefaults];
                                   [DefaultsEmptyName setObject:emptyName forKey:@"SaveMyName"];
                                   [DefaultsEmptyName synchronize];
                                   
                                   // save user's weight
                                   NSString *emptyWeight = self.MyWeight.text;  // (2)
                                   NSUserDefaults *DefaultsEmptyWeight = [NSUserDefaults standardUserDefaults];
                                   [DefaultsEmptyWeight setObject:emptyWeight forKey:@"SaveMyWeight"];
                                   [DefaultsEmptyWeight synchronize];
                                   
                                   // save user's height
                                   NSString *emptyHeight = self.MyHeight.text;  // (3)
                                   NSUserDefaults *DefaultsEmptyHeight = [NSUserDefaults standardUserDefaults];
                                   [DefaultsEmptyHeight setObject:emptyHeight forKey:@"SaveMyHeight"];
                                   [DefaultsEmptyHeight synchronize];
                                   
                                   // save user's aim
                                   NSString *emptyAim = self.MyAim.text;  // (4)
                                   NSUserDefaults *DefaultsEmptyAim = [NSUserDefaults standardUserDefaults];
                                   [DefaultsEmptyAim setObject:emptyAim forKey:@"SaveMyAim"];
                                   [DefaultsEmptyAim synchronize];
                                   
                                   // save user's workout
                                   NSString *emptyWorkout = self.MyWorkout.text;  // (5)
                                   NSUserDefaults *DefaultsEmptyWorkout = [NSUserDefaults standardUserDefaults];
                                   [DefaultsEmptyWorkout setObject:emptyWorkout forKey:@"SaveMyWorkout"];
                                   [DefaultsEmptyWorkout synchronize];
                                   
                                   // save trainer's name
                                   NSString *emptyPTName = self.PTName.text;  // (6)
                                   NSUserDefaults *DefaultsEmptyPTName = [NSUserDefaults standardUserDefaults];
                                   [DefaultsEmptyPTName setObject:emptyPTName forKey:@"SavePTName"];
                                   [DefaultsEmptyPTName synchronize];
                                   
                                   // save trainer's phone No
                                   NSString *emptyPTPhone = self.PTPhone.text;  // (7)
                                   NSUserDefaults *DefaultsEmptyPTPhone = [NSUserDefaults standardUserDefaults];
                                   [DefaultsEmptyPTPhone setObject:emptyPTPhone forKey:@"SavePTPhone"];
                                   [DefaultsEmptyPTPhone synchronize];
                                   
                                   // save trainer's email
                                   NSString *emptyPTEmail = self.PTEmail.text;  // (8)
                                   NSUserDefaults *DefaultsEmptyPTEmail = [NSUserDefaults standardUserDefaults];
                                   [DefaultsEmptyPTEmail setObject:emptyPTEmail forKey:@"SavePTEmail"];
                                   [DefaultsEmptyPTEmail synchronize];
                                   
                                   // save trainer's advice
                                   NSString *emptyPTAdvice = self.PTAdvice.text;  // (9)
                                   NSUserDefaults *DefaultsEmptyPTAdvice = [NSUserDefaults standardUserDefaults];
                                   [DefaultsEmptyPTAdvice setObject:emptyPTAdvice forKey:@"SavePTAdvice"];
                                   [DefaultsEmptyPTAdvice synchronize];
                                   
                                   // save physical therapist's name
                                   NSString *emptyPPName = self.PPName.text;  // (10)
                                   NSUserDefaults *DefaultsEmptyPPName = [NSUserDefaults standardUserDefaults];
                                   [DefaultsEmptyPPName setObject:emptyPPName forKey:@"SavePPName"];
                                   [DefaultsEmptyPPName synchronize];
                                   
                                   // save physical therapist's phone No
                                   NSString *emptyPPPhone = self.PPPhone.text;  // (11)
                                   NSUserDefaults *DefaultsEmptyPPPhone = [NSUserDefaults standardUserDefaults];
                                   [DefaultsEmptyPPPhone setObject:emptyPPPhone forKey:@"SavePPPhone"];
                                   [DefaultsEmptyPPPhone synchronize];
                                   
                                   // save physical therapist's email
                                   NSString *emptyPPEmail = self.PPEmail.text;  // (12)
                                   NSUserDefaults *DefaultsEmptyPPEmail = [NSUserDefaults standardUserDefaults];
                                   [DefaultsEmptyPPEmail setObject:emptyPPEmail forKey:@"SavePPEamil"];
                                   [DefaultsEmptyPPEmail synchronize];
                                   
                                   // save physical therapist's advice
                                   NSString *emptyPPAdvice = self.PPAdvice.text;  // (13)
                                   NSUserDefaults *DefaultsEmptyPPAdvice = [NSUserDefaults standardUserDefaults];
                                   [DefaultsEmptyPPAdvice setObject:emptyPPAdvice forKey:@"SavePPAdvice"];
                                   [DefaultsEmptyPPAdvice synchronize];
                                   
                               }];
    
    [alertController addAction:cancelAction]; // add cancel action to UIAlertController
    [alertController addAction:OKAction]; // add OK action to UIAlertController
    [self presentViewController:alertController animated:YES completion:nil]; // show the alet to the users
    
    
}

#pragma mark Reset Button

// this button is used to delete infomation in the text fields
- (IBAction)ResetButton:(UIButton *)sender {
    
    NSLog(@"ResetButton Pressed"); // to check if the button work well
    
    // I added UIAlertController in order to the user chance to delete the information in text fields
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"Do you want to delete the information ?" message:@"Press OK to delete the data" preferredStyle:UIAlertControllerStyleAlert];
    
    // create cancel button in the UIAlertController
    UIAlertAction *cancelAction = [UIAlertAction
                                   actionWithTitle:@"cancel"
                                   style:UIAlertActionStyleCancel
                                   handler:^(UIAlertAction *action){
                                       
                                       NSLog(@"cancel"); //Using NSLog to check if cancel action work
                                       
                                   }];
    
    // create OK button in the UIAlertController
    UIAlertAction *OKAction = [UIAlertAction
                               actionWithTitle:@"OK"
                               style:UIAlertActionStyleDefault
                               handler:^(UIAlertAction *action) {
                                   
                                   NSLog(@"OK"); //Using NSLog to check if OK action work
                                   
                                   self.MyName.text = nil;     // (1)  delete user's name
                                   self.MyWeight.text = nil;   // (2)  delete user's weight
                                   self.MyHeight.text = nil;   // (3)  delete user's height
                                   self.MyAim.text = nil;      // (4)  delete user's aim
                                   self.MyWorkout.text = nil;  // (5)  delete user's workout
                                   self.PTName.text = nil;     // (6)  delete trainer's name
                                   self.PTPhone.text = nil;    // (7)  delete trainer's pnone No
                                   self.PTEmail.text = nil;    // (8)  delete trainer's email
                                   self.PTAdvice.text = nil;   // (9)  delete trainer's advice
                                   self.PPName.text = nil;     // (10) delete physical therapist's name
                                   self.PPPhone.text = nil;    // (11) delete physical therapist's phone No
                                   self.PPEmail.text = nil;    // (12) delete physical therapist's email
                                   self.PPAdvice.text = nil;   // (13) delete physical therapist's adivice
                                   
                                   // save the empty text field (user's name)
                                   NSString *emptyName = self.MyName.text;  // (1)
                                   NSUserDefaults *DefaultsEmptyName = [NSUserDefaults standardUserDefaults];
                                   [DefaultsEmptyName setObject:emptyName forKey:@"SaveMyName"];
                                   [DefaultsEmptyName synchronize];
                                   
                                   // save the empty text field (user's weight)
                                   NSString *emptyWeight = self.MyWeight.text;  // (2)
                                   NSUserDefaults *DefaultsEmptyWeight = [NSUserDefaults standardUserDefaults];
                                   [DefaultsEmptyWeight setObject:emptyWeight forKey:@"SaveMyWeight"];
                                   [DefaultsEmptyWeight synchronize];
                                   
                                   // save the empty text field (user's height)
                                   NSString *emptyHeight = self.MyHeight.text;  // (3)
                                   NSUserDefaults *DefaultsEmptyHeight = [NSUserDefaults standardUserDefaults];
                                   [DefaultsEmptyHeight setObject:emptyHeight forKey:@"SaveMyHeight"];
                                   [DefaultsEmptyHeight synchronize];
                                   
                                   // save the empty text field (user's aim)
                                   NSString *emptyAim = self.MyAim.text;  // (4)
                                   NSUserDefaults *DefaultsEmptyAim = [NSUserDefaults standardUserDefaults];
                                   [DefaultsEmptyAim setObject:emptyAim forKey:@"SaveMyAim"];
                                   [DefaultsEmptyAim synchronize];
                                   
                                   // save the empty text field (user's workout)
                                   NSString *emptyWorkout = self.MyWorkout.text;  // (5)
                                   NSUserDefaults *DefaultsEmptyWorkout = [NSUserDefaults standardUserDefaults];
                                   [DefaultsEmptyWorkout setObject:emptyWorkout forKey:@"SaveMyWorkout"];
                                   [DefaultsEmptyWorkout synchronize];
                                   
                                   // save the empty text field (trainer's name)
                                   NSString *emptyPTName = self.PTName.text;  // (6)
                                   NSUserDefaults *DefaultsEmptyPTName = [NSUserDefaults standardUserDefaults];
                                   [DefaultsEmptyPTName setObject:emptyPTName forKey:@"SavePTName"];
                                   [DefaultsEmptyPTName synchronize];
                                   
                                   // save the empty text field (trainer's phone No)
                                   NSString *emptyPTPhone = self.PTPhone.text;  // (7)
                                   NSUserDefaults *DefaultsEmptyPTPhone = [NSUserDefaults standardUserDefaults];
                                   [DefaultsEmptyPTPhone setObject:emptyPTPhone forKey:@"SavePTPhone"];
                                   [DefaultsEmptyPTPhone synchronize];
                                   
                                   // save the empty text field (trainer's email)
                                   NSString *emptyPTEmail = self.PTEmail.text;  // (8)
                                   NSUserDefaults *DefaultsEmptyPTEmail = [NSUserDefaults standardUserDefaults];
                                   [DefaultsEmptyPTEmail setObject:emptyPTEmail forKey:@"SavePTEmail"];
                                   [DefaultsEmptyPTEmail synchronize];
                                   
                                   // save the empty text field (trainer's advice)
                                   NSString *emptyPTAdvice = self.PTAdvice.text;  // (9)
                                   NSUserDefaults *DefaultsEmptyPTAdvice = [NSUserDefaults standardUserDefaults];
                                   [DefaultsEmptyPTAdvice setObject:emptyPTAdvice forKey:@"SavePTAdvice"];
                                   [DefaultsEmptyPTAdvice synchronize];
                                   
                                   // save the empty text field (physical therapist's name)
                                   NSString *emptyPPName = self.PPName.text;  // (10)
                                   NSUserDefaults *DefaultsEmptyPPName = [NSUserDefaults standardUserDefaults];
                                   [DefaultsEmptyPPName setObject:emptyPPName forKey:@"SavePPName"];
                                   [DefaultsEmptyPPName synchronize];
                                   
                                   // save the empty text field (physical therapist's phone No)
                                   NSString *emptyPPPhone = self.PPPhone.text;  // (11)
                                   NSUserDefaults *DefaultsEmptyPPPhone = [NSUserDefaults standardUserDefaults];
                                   [DefaultsEmptyPPPhone setObject:emptyPPPhone forKey:@"SavePPPhone"];
                                   [DefaultsEmptyPPPhone synchronize];
                                   
                                   // save the empty text field (physical therapist's email)
                                   NSString *emptyPPEmail = self.PPEmail.text;  // (12)
                                   NSUserDefaults *DefaultsEmptyPPEmail = [NSUserDefaults standardUserDefaults];
                                   [DefaultsEmptyPPEmail setObject:emptyPPEmail forKey:@"SavePPEamil"];
                                   [DefaultsEmptyPPEmail synchronize];
                                   
                                   // save the empty text field (physical therapist's phone number)
                                   NSString *emptyPPAdvice = self.PPAdvice.text;  // (13)
                                   NSUserDefaults *DefaultsEmptyPPAdvice = [NSUserDefaults standardUserDefaults];
                                   [DefaultsEmptyPPAdvice setObject:emptyPPAdvice forKey:@"SavePPAdvice"];
                                   [DefaultsEmptyPPAdvice synchronize];
                                   
                                   
                               }];
    
    [alertController addAction:cancelAction]; // add cancel action to UIAlertController
    [alertController addAction:OKAction]; // add OK action to UIAlertController
    [self presentViewController:alertController animated:YES completion:nil]; // show the alet to the users
    
    
    
}

#pragma mark Text Field Delegate

//this mehtod let the users hides the keyboard when they click
- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    
    [textField resignFirstResponder];
    
    return YES; // hide the keyboard when return in pressed
    
}


@end

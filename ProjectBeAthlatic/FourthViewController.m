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

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.navigationItem.title = @"Profile"; //add a title
    
    NSUserDefaults *oneSaved = [NSUserDefaults standardUserDefaults];
    NSString *oneLoad = [oneSaved objectForKey:@"SaveMyName"];
    [_MyName setText: oneLoad];
    
    NSUserDefaults *twoSaved = [NSUserDefaults standardUserDefaults]; // i did not make it NSInetger in order to allow the user save the unit (kg and Ib) which represents Strings
    NSString *twoLoad = [twoSaved objectForKey:@"SaveMyWeight"];
    [_MyWeight setText: twoLoad];
    
    NSUserDefaults *threeSaved = [NSUserDefaults standardUserDefaults]; // i did not make it NSInetger in order to allow the user save the unit (m and ft) which represents Strings
    NSString *threeLoad = [threeSaved objectForKey:@"SaveMyHeight"];
    [_MyHeight setText: threeLoad];
    
    NSUserDefaults *fourSaved = [NSUserDefaults standardUserDefaults];
    NSString *fourLoad = [fourSaved objectForKey:@"SaveMyAim"];
    [_MyAim setText: fourLoad];
    
    NSUserDefaults *fiveSaved = [NSUserDefaults standardUserDefaults];
    NSString *fiveLoad = [fiveSaved objectForKey:@"SaveMyWorkout"];
    [_MyWorkout setText: fiveLoad];
    
    NSUserDefaults *sixSaved = [NSUserDefaults standardUserDefaults];
    NSString *sixLoad = [sixSaved objectForKey:@"SavePTName"];
    [_PTName setText: sixLoad];
    
    NSUserDefaults *sevenSaved = [NSUserDefaults standardUserDefaults];
    NSString *sevenLoad = [sevenSaved objectForKey:@"SavePTPhone"];
    [_PTPhone setText: sevenLoad];
    
    NSUserDefaults *eightSaved = [NSUserDefaults standardUserDefaults];
    NSString *eightLoad = [eightSaved objectForKey:@"SavePTEmail"];
    [_PTEmail setText: eightLoad];
    
    NSUserDefaults *nineSaved = [NSUserDefaults standardUserDefaults];
    NSString *nineLoad = [nineSaved objectForKey:@"SavePTAdvice"];
    [_PTAdvice setText: nineLoad];
    
    NSUserDefaults *tenSaved = [NSUserDefaults standardUserDefaults];
    NSString *tenLoad = [tenSaved objectForKey:@"SavePPName"];
    [_PPName setText: tenLoad];
    
    NSUserDefaults *elevenSaved = [NSUserDefaults standardUserDefaults];
    NSString *elevenLoad = [elevenSaved objectForKey:@"SavePPPhone"];
    [_PPPhone setText: elevenLoad];
    
    NSUserDefaults *twelveSaved = [NSUserDefaults standardUserDefaults];
    NSString *twelveLoad = [twelveSaved objectForKey:@"SavePPEamil"];
    [_PPEmail setText: twelveLoad];
    
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

- (IBAction)SavedButton:(UIButton *)sender {
    
    NSLog(@"SaveButton Pressed");
    
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"Do you want to save the infomration ?" message:@"Press OK to save the data" preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction *cancelAction = [UIAlertAction
                                   actionWithTitle:@"cancel"
                                   style:UIAlertActionStyleCancel
                                   handler:^(UIAlertAction *action){
                                       
                                       NSLog(@"cancel");
                                       
                                   }];
    
    UIAlertAction *OKAction = [UIAlertAction
                               actionWithTitle:@"OK"
                               style:UIAlertActionStyleDefault
                               handler:^(UIAlertAction *action) {
                                   
                                   NSLog(@"OK");
                                   
                                   
                                   NSString *emptyName = self.MyName.text;  // (1)
                                   NSUserDefaults *DefaultsEmptyName = [NSUserDefaults standardUserDefaults];
                                   [DefaultsEmptyName setObject:emptyName forKey:@"SaveMyName"];
                                   [DefaultsEmptyName synchronize];
                                   
                                   NSString *emptyWeight = self.MyWeight.text;  // (2)
                                   NSUserDefaults *DefaultsEmptyWeight = [NSUserDefaults standardUserDefaults];
                                   [DefaultsEmptyWeight setObject:emptyWeight forKey:@"SaveMyWeight"];
                                   [DefaultsEmptyWeight synchronize];
                                   
                                   NSString *emptyHeight = self.MyHeight.text;  // (3)
                                   NSUserDefaults *DefaultsEmptyHeight = [NSUserDefaults standardUserDefaults];
                                   [DefaultsEmptyHeight setObject:emptyHeight forKey:@"SaveMyHeight"];
                                   [DefaultsEmptyHeight synchronize];
                                   
                                   NSString *emptyAim = self.MyAim.text;  // (4)
                                   NSUserDefaults *DefaultsEmptyAim = [NSUserDefaults standardUserDefaults];
                                   [DefaultsEmptyAim setObject:emptyAim forKey:@"SaveMyAim"];
                                   [DefaultsEmptyAim synchronize];
                                   
                                   NSString *emptyWorkout = self.MyWorkout.text;  // (5)
                                   NSUserDefaults *DefaultsEmptyWorkout = [NSUserDefaults standardUserDefaults];
                                   [DefaultsEmptyWorkout setObject:emptyWorkout forKey:@"SaveMyWorkout"];
                                   [DefaultsEmptyWorkout synchronize];
                                   
                                   NSString *emptyPTName = self.PTName.text;  // (6)
                                   NSUserDefaults *DefaultsEmptyPTName = [NSUserDefaults standardUserDefaults];
                                   [DefaultsEmptyPTName setObject:emptyPTName forKey:@"SavePTName"];
                                   [DefaultsEmptyPTName synchronize];
                                   
                                   NSString *emptyPTPhone = self.PTPhone.text;  // (7)
                                   NSUserDefaults *DefaultsEmptyPTPhone = [NSUserDefaults standardUserDefaults];
                                   [DefaultsEmptyPTPhone setObject:emptyPTPhone forKey:@"SavePTPhone"];
                                   [DefaultsEmptyPTPhone synchronize];
                                   
                                   NSString *emptyPTEmail = self.PTEmail.text;  // (8)
                                   NSUserDefaults *DefaultsEmptyPTEmail = [NSUserDefaults standardUserDefaults];
                                   [DefaultsEmptyPTEmail setObject:emptyPTEmail forKey:@"SavePTEmail"];
                                   [DefaultsEmptyPTEmail synchronize];
                                   
                                   NSString *emptyPTAdvice = self.PTAdvice.text;  // (9)
                                   NSUserDefaults *DefaultsEmptyPTAdvice = [NSUserDefaults standardUserDefaults];
                                   [DefaultsEmptyPTAdvice setObject:emptyPTAdvice forKey:@"SavePTAdvice"];
                                   [DefaultsEmptyPTAdvice synchronize];
                                   
                                   NSString *emptyPPName = self.PPName.text;  // (10)
                                   NSUserDefaults *DefaultsEmptyPPName = [NSUserDefaults standardUserDefaults];
                                   [DefaultsEmptyPPName setObject:emptyPPName forKey:@"SavePPName"];
                                   [DefaultsEmptyPPName synchronize];
                                   
                                   NSString *emptyPPPhone = self.PPPhone.text;  // (11)
                                   NSUserDefaults *DefaultsEmptyPPPhone = [NSUserDefaults standardUserDefaults];
                                   [DefaultsEmptyPPPhone setObject:emptyPPPhone forKey:@"SavePPPhone"];
                                   [DefaultsEmptyPPPhone synchronize];
                                   
                                   NSString *emptyPPEmail = self.PPEmail.text;  // (12)
                                   NSUserDefaults *DefaultsEmptyPPEmail = [NSUserDefaults standardUserDefaults];
                                   [DefaultsEmptyPPEmail setObject:emptyPPEmail forKey:@"SavePPEamil"];
                                   [DefaultsEmptyPPEmail synchronize];
                                   
                                   NSString *emptyPPAdvice = self.PPAdvice.text;  // (13)
                                   NSUserDefaults *DefaultsEmptyPPAdvice = [NSUserDefaults standardUserDefaults];
                                   [DefaultsEmptyPPAdvice setObject:emptyPPAdvice forKey:@"SavePPAdvice"];
                                   [DefaultsEmptyPPAdvice synchronize];
                                   
                               }];
    
    [alertController addAction:cancelAction];
    [alertController addAction:OKAction];
    [self presentViewController:alertController animated:YES completion:nil];
    
    
}

- (IBAction)ResetButton:(UIButton *)sender {
    
    NSLog(@"ResetButton Pressed");
    
    
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"Do you want to delete the information ?" message:@"Press OK to delete the data" preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction *cancelAction = [UIAlertAction
                                   actionWithTitle:@"cancel"
                                   style:UIAlertActionStyleCancel
                                   handler:^(UIAlertAction *action){
                                       
                                       NSLog(@"cancel");
                                       
                                   }];
    
    UIAlertAction *OKAction = [UIAlertAction
                               actionWithTitle:@"OK"
                               style:UIAlertActionStyleDefault
                               handler:^(UIAlertAction *action) {
                                   
                                   NSLog(@"OK");
                                   
                                   self.MyName.text = nil;     // (1)
                                   self.MyWeight.text = nil;   // (2)
                                   self.MyHeight.text = nil;   // (3)
                                   self.MyAim.text = nil;      // (4)
                                   self.MyWorkout.text = nil;  // (5)
                                   self.PTName.text = nil;     // (6)
                                   self.PTPhone.text = nil;    // (7)
                                   self.PTEmail.text = nil;    // (8)
                                   self.PTAdvice.text = nil;   // (9)
                                   self.PPName.text = nil;     // (10)
                                   self.PPPhone.text = nil;    // (11)
                                   self.PPEmail.text = nil;    // (12)
                                   self.PPAdvice.text = nil;   // (13)
                                   
                                   
                                   NSString *emptyName = self.MyName.text;  // (1)
                                   NSUserDefaults *DefaultsEmptyName = [NSUserDefaults standardUserDefaults];
                                   [DefaultsEmptyName setObject:emptyName forKey:@"SaveMyName"];
                                   [DefaultsEmptyName synchronize];
                                   
                                   NSString *emptyWeight = self.MyWeight.text;  // (2)
                                   NSUserDefaults *DefaultsEmptyWeight = [NSUserDefaults standardUserDefaults];
                                   [DefaultsEmptyWeight setObject:emptyWeight forKey:@"SaveMyWeight"];
                                   [DefaultsEmptyWeight synchronize];
                                   
                                   NSString *emptyHeight = self.MyHeight.text;  // (3)
                                   NSUserDefaults *DefaultsEmptyHeight = [NSUserDefaults standardUserDefaults];
                                   [DefaultsEmptyHeight setObject:emptyHeight forKey:@"SaveMyHeight"];
                                   [DefaultsEmptyHeight synchronize];
                                   
                                   NSString *emptyAim = self.MyAim.text;  // (4)
                                   NSUserDefaults *DefaultsEmptyAim = [NSUserDefaults standardUserDefaults];
                                   [DefaultsEmptyAim setObject:emptyAim forKey:@"SaveMyAim"];
                                   [DefaultsEmptyAim synchronize];
                                   
                                   NSString *emptyWorkout = self.MyWorkout.text;  // (5)
                                   NSUserDefaults *DefaultsEmptyWorkout = [NSUserDefaults standardUserDefaults];
                                   [DefaultsEmptyWorkout setObject:emptyWorkout forKey:@"SaveMyWorkout"];
                                   [DefaultsEmptyWorkout synchronize];
                                   
                                   NSString *emptyPTName = self.PTName.text;  // (6)
                                   NSUserDefaults *DefaultsEmptyPTName = [NSUserDefaults standardUserDefaults];
                                   [DefaultsEmptyPTName setObject:emptyPTName forKey:@"SavePTName"];
                                   [DefaultsEmptyPTName synchronize];
                                   
                                   NSString *emptyPTPhone = self.PTPhone.text;  // (7)
                                   NSUserDefaults *DefaultsEmptyPTPhone = [NSUserDefaults standardUserDefaults];
                                   [DefaultsEmptyPTPhone setObject:emptyPTPhone forKey:@"SavePTPhone"];
                                   [DefaultsEmptyPTPhone synchronize];
                                   
                                   NSString *emptyPTEmail = self.PTEmail.text;  // (8)
                                   NSUserDefaults *DefaultsEmptyPTEmail = [NSUserDefaults standardUserDefaults];
                                   [DefaultsEmptyPTEmail setObject:emptyPTEmail forKey:@"SavePTEmail"];
                                   [DefaultsEmptyPTEmail synchronize];
                                   
                                   NSString *emptyPTAdvice = self.PTAdvice.text;  // (9)
                                   NSUserDefaults *DefaultsEmptyPTAdvice = [NSUserDefaults standardUserDefaults];
                                   [DefaultsEmptyPTAdvice setObject:emptyPTAdvice forKey:@"SavePTAdvice"];
                                   [DefaultsEmptyPTAdvice synchronize];
                                   
                                   NSString *emptyPPName = self.PPName.text;  // (10)
                                   NSUserDefaults *DefaultsEmptyPPName = [NSUserDefaults standardUserDefaults];
                                   [DefaultsEmptyPPName setObject:emptyPPName forKey:@"SavePPName"];
                                   [DefaultsEmptyPPName synchronize];
                                   
                                   NSString *emptyPPPhone = self.PPPhone.text;  // (11)
                                   NSUserDefaults *DefaultsEmptyPPPhone = [NSUserDefaults standardUserDefaults];
                                   [DefaultsEmptyPPPhone setObject:emptyPPPhone forKey:@"SavePPPhone"];
                                   [DefaultsEmptyPPPhone synchronize];
                                   
                                   NSString *emptyPPEmail = self.PPEmail.text;  // (12)
                                   NSUserDefaults *DefaultsEmptyPPEmail = [NSUserDefaults standardUserDefaults];
                                   [DefaultsEmptyPPEmail setObject:emptyPPEmail forKey:@"SavePPEamil"];
                                   [DefaultsEmptyPPEmail synchronize];
                                   
                                   NSString *emptyPPAdvice = self.PPAdvice.text;  // (13)
                                   NSUserDefaults *DefaultsEmptyPPAdvice = [NSUserDefaults standardUserDefaults];
                                   [DefaultsEmptyPPAdvice setObject:emptyPPAdvice forKey:@"SavePPAdvice"];
                                   [DefaultsEmptyPPAdvice synchronize];
                                   
                                   
                               }];
    
    [alertController addAction:cancelAction];
    [alertController addAction:OKAction];
    [self presentViewController:alertController animated:YES completion:nil];
    
    
    
}



- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    
    [textField resignFirstResponder];
    
    return YES;
    
}



- (IBAction)Mybackground:(id)sender {
    
    NSLog(@"Background is pressed");
    
    if ([self.MyName isFirstResponder]) {
        [self.MyName resignFirstResponder];
    }
    
    
    if ([self.MyWeight isFirstResponder]) {
        [self.MyWeight resignFirstResponder];
    }
    
    
    if ([self.MyHeight isFirstResponder]) {
        [self.MyHeight resignFirstResponder];
    }
    
    
    if ([self.MyAim isFirstResponder]) {
        [self.MyAim resignFirstResponder];
    }
    
    
    if ([self.MyWorkout isFirstResponder]) {
        [self.MyWorkout resignFirstResponder];
    }
    
    
    if ([self.PTName isFirstResponder]) {
        [self.PTName resignFirstResponder];
    }
    
    
    if ([self.PTPhone isFirstResponder]) {
        [self.PTPhone resignFirstResponder];
    }
    
    
    if ([self.PTEmail isFirstResponder]) {
        [self.PTEmail resignFirstResponder];
    }
    
    
    if ([self.PTAdvice isFirstResponder]) {
        [self.PTAdvice resignFirstResponder];
    }
    
    
    if ([self.PPName isFirstResponder]) {
        [self.PPName resignFirstResponder];
    }
    
    
    if ([self.PPPhone isFirstResponder]) {
        [self.PPPhone resignFirstResponder];
    }
    
    
    if ([self.PPEmail isFirstResponder]) {
        [self.PPEmail resignFirstResponder];
    }
    
    
    if ([self.PPAdvice isFirstResponder]) {
        [self.PPAdvice resignFirstResponder];
    }
    
    
}
@end

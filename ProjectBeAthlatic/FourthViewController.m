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
                                   
                                   
                                   
                               }];
    
    [alertController addAction:cancelAction];
    [alertController addAction:OKAction];
    [self presentViewController:alertController animated:YES completion:nil];
    
    
    
}
@end

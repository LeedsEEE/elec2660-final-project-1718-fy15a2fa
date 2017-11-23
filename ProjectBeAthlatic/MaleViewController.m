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
    
    
    //creating an object in order to display that recieved data on the labels
    //I create an this object in viewDidLoad to ensure it will updates as soon as possible
    //when the viewcontroller opens
    self.LevelMaleLabel.text = self.MaleData.LevelMale; //show level
    self.TimeMaleLabel.text = self.MaleData.TimeMale; //show time
    self.DiscriptionMaleLabel.text = self.MaleData.DiscriptionMale; //show discription
    
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

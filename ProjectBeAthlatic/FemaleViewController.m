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
    
    self.LevelFemaleLabel.text = self.FemaleData.LevelFemale;
    self.TimeFemaleLabel.text = self.FemaleData.TimeFemale;
    self.DiscriptionFemaleLabel.text = self.FemaleData.DiscriptionFemale;
    
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

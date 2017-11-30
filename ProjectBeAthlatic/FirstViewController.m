//
//  FirstViewController.m
//  ProjectBeAthlatic
//
//  Created by Ahmad Alotaibi on 21/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

-(void) awakeFromNib {
    [super awakeFromNib];
    
    //Let the buttons in the nagivationn appear in black color
    [[UINavigationBar appearance] setTintColor:[UIColor blackColor]];
    
    //Let the navigation bar appears in red color.
    [[UINavigationBar appearance] setBarTintColor:[UIColor yellowColor]];
    
    //Let the text (title) apears in black color
    [[UINavigationBar appearance] setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor blackColor]}];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

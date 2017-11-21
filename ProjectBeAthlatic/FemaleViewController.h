//
//  FemaleViewController.h
//  ProjectBeAthlatic
//
//  Created by Ahmad Alotaibi on 21/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FemaleProperties.h"

@interface FemaleViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *LevelFemaleLabel;
@property (weak, nonatomic) IBOutlet UILabel *TimeFemaleLabel;
@property (weak, nonatomic) IBOutlet UILabel *DiscriptionFemaleLabel;

@property (strong, nonatomic) FemaleProperties *FemaleData;

@end

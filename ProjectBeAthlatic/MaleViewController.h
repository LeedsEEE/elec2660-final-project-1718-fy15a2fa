//
//  MaleViewController.h
//  ProjectBeAthlatic
//
//  Created by Ahmad Alotaibi on 21/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MaleProperties.h"

@interface MaleViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *LevelMaleLabel;
@property (weak, nonatomic) IBOutlet UILabel *TimeMaleLabel;
@property (weak, nonatomic) IBOutlet UILabel *DiscriptionMaleLabel;

@property (strong, nonatomic) MaleProperties *MaleData;

@end

//
//  ImperialViewController.h
//  ProjectBeAthlatic
//
//  Created by Ahmad Alotaibi on 22/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ImperialViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *BMIValueImperial;
@property (weak, nonatomic) IBOutlet UILabel *BMICategoryImperial;

@property (weak, nonatomic) IBOutlet UIPickerView *ImperialHeightPicker;
@property (weak, nonatomic) IBOutlet UIPickerView *ImperialWeightPicker;

@end

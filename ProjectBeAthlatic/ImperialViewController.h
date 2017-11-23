//
//  ImperialViewController.h
//  ProjectBeAthlatic
//
//  Created by Ahmad Alotaibi on 22/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ImperialViewController : UIViewController <UIPickerViewDataSource, UIPickerViewDelegate>

// I connected BMI Value label in order to show BMI value for the users (As outlet)
@property (weak, nonatomic) IBOutlet UILabel *BMIValueImperial;
// I connected BMI Category label in order to show BMI category for the users (As outlet)
@property (weak, nonatomic) IBOutlet UILabel *BMICategoryImperial;

// I connected height picker in order to let the users enter their height (As outlet)
@property (weak, nonatomic) IBOutlet UIPickerView *ImperialHeightPicker;
// I connected  weight picker in order to let the users enter their wieght (As outlet)
@property (weak, nonatomic) IBOutlet UIPickerView *ImperialWeightPicker;

@end

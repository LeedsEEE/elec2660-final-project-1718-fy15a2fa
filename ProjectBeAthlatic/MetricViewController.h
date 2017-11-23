//
//  MetricViewController.h
//  ProjectBeAthlatic
//
//  Created by Ahmad Alotaibi on 21/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MetricViewController : UIViewController <UIPickerViewDataSource, UIPickerViewDelegate>

// I connected BMI Value label in order to show BMI value for the users (As outlet)
@property (weak, nonatomic) IBOutlet UILabel *BMIValueMetric;
// I connected BMI Category label in order to show BMI category for the users (As outlet)
@property (weak, nonatomic) IBOutlet UILabel *BMICategoryMetric;

// I connected height picker in order to let the users enter their height (As outlet)
@property (weak, nonatomic) IBOutlet UIPickerView *MetricHeightPicker;
// I connected weight picker in order to let the users enter their weight (As outlet)
@property (weak, nonatomic) IBOutlet UIPickerView *MetricWeightPicker;

@end

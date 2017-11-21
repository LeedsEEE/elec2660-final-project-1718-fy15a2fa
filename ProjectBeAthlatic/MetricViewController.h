//
//  MetricViewController.h
//  ProjectBeAthlatic
//
//  Created by Ahmad Alotaibi on 21/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MetricViewController : UIViewController <UIPickerViewDataSource, UIPickerViewDelegate>

@property (weak, nonatomic) IBOutlet UILabel *BMIValueMetric;
@property (weak, nonatomic) IBOutlet UILabel *BMICategoryMetric;

@property (weak, nonatomic) IBOutlet UIPickerView *MetricHeightPicker;
@property (weak, nonatomic) IBOutlet UIPickerView *MetricWeightPicker;

@end

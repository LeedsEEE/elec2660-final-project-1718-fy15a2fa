//
//  MetricViewController.m
//  ProjectBeAthlatic
//
//  Created by Ahmad Alotaibi on 21/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import "MetricViewController.h"

@interface MetricViewController ()

@end

@implementation MetricViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.MetricHeightPicker.delegate = self;
    self.MetricHeightPicker.dataSource = self;
    
    self.MetricWeightPicker.delegate = self;
    self.MetricWeightPicker.dataSource = self;

    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSString *)pickerView:(UIPickerView *)pickerView
             titleForRow:(NSInteger)row
            forComponent:(NSInteger)component; {
    
    NSString *coordinate;
    
    
    
    if (pickerView == self.MetricHeightPicker && component == 0) {
        coordinate = [NSString stringWithFormat:@"%li",row];
    }
    
    else if (pickerView == self.MetricHeightPicker && component ==1) {
        coordinate = [NSString stringWithFormat:@"."];
    }
    
    else if (pickerView == self.MetricHeightPicker && component == 2) {
        coordinate = [NSString stringWithFormat:@"%li",row];
    }
    
    else if (pickerView == self.MetricHeightPicker && component == 3) {
        coordinate = [NSString stringWithFormat:@"%li",row];
    }
    
    else if (pickerView == self.MetricHeightPicker && component == 4) {
        coordinate = [NSString stringWithFormat:@"m"];
    }
    
    else if (pickerView == self.MetricWeightPicker && component == 0) {
        coordinate = [NSString stringWithFormat:@"%li",row];
    }
    
    else if (pickerView == self.MetricWeightPicker && component == 1) {
        coordinate = [NSString stringWithFormat:@"%li",row];
    }
    
    else if (pickerView == self.MetricWeightPicker && component == 2) {
        coordinate = [NSString stringWithFormat:@"%li",row];
    }
    
    else if (pickerView == self.MetricWeightPicker && component == 3) {
        coordinate = [NSString stringWithFormat:@"."];
    }
    
    else if (pickerView == self.MetricWeightPicker && component == 4) {
        coordinate = [NSString stringWithFormat:@"%li",row];
    }
    
    else if (pickerView == self.MetricWeightPicker && component == 5) {
        coordinate = [NSString stringWithFormat:@"%li",row];
    }
    
    else {
        coordinate = [NSString stringWithFormat:@"kg"];
    }
    
    return coordinate;
    
}

- (void)pickerView:(UIPickerView *)pickerView
      didSelectRow:(NSInteger)row
       inComponent:(NSInteger)component; {
    
    
    
    float MetricHeightValue;
    float MetricWeightValue;
    
    MetricHeightValue = (([self.MetricHeightPicker selectedRowInComponent:0])*1.0f) + (([self.MetricHeightPicker selectedRowInComponent:2])/10.0f) + (([self.MetricHeightPicker selectedRowInComponent:3])/100.0f);
    NSLog(@"Height = %.2f",MetricHeightValue);
    
    MetricWeightValue = (([self.MetricWeightPicker selectedRowInComponent:0])*100.0f) + (([self.MetricWeightPicker selectedRowInComponent:1])*10.0f) + (([self.MetricWeightPicker selectedRowInComponent:2])*1.0f) + (([self.MetricWeightPicker selectedRowInComponent:4])/10.0f) + (([self.MetricWeightPicker selectedRowInComponent:5])/100.0f) ;
    NSLog(@"Weight = %.2f", MetricWeightValue);
    
    float MetricBMIValue = MetricWeightValue/(MetricHeightValue*MetricHeightValue);
    NSLog(@"BMI value = %.2f", MetricBMIValue);
    
    self.BMIValueMetric.text = [NSString stringWithFormat:@"%.2f",MetricBMIValue];
    
    if (MetricBMIValue < 15.0) {
        
        self.BMICategoryMetric.text = @"Very severly underweight";
        
    } else if (MetricBMIValue >= 15.0 && MetricBMIValue < 16.0) {
        
        self.BMICategoryMetric.text = @"Severly underweight";
        
    } else if (MetricBMIValue >= 16.0 && MetricBMIValue < 18.5) {
        
        self.BMICategoryMetric.text = @"Undetweight";
        
    } else if (MetricBMIValue >= 18.5 && MetricBMIValue < 25.0) {
        
        self.BMICategoryMetric.text = @"Normal (Healthy)";
        
    } else if (MetricBMIValue >= 25.0 && MetricBMIValue < 30.0) {
        
        self.BMICategoryMetric.text = @"Overweight";
        
    } else if (MetricBMIValue >= 30.0 && MetricBMIValue < 35.0) {
        
        self.BMICategoryMetric.text = @"Obese Class I (Moderately obese)";
        
    } else if (MetricBMIValue >= 35.0 && MetricBMIValue < 40.0) {
        
        self.BMICategoryMetric.text = @"Obese Class II (Severely obese)";
        
    } else  {
        
        self.BMICategoryMetric.text = @"Obese Class III (Very severly obese)";
    }
    
}

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView; {
 
    if (pickerView == self.MetricHeightPicker) {
        return 5;
    } else {
        return 7;
    }
    
}

- (NSInteger)pickerView:(UIPickerView *)pickerView
numberOfRowsInComponent:(NSInteger)component; {
    
    if (pickerView == self.MetricHeightPicker && component == 0) {
        return 3;
    }
    
    else if (pickerView == self.MetricHeightPicker && component == 1) {
        return 1;
    }
    
    else if (pickerView == self.MetricHeightPicker && component == 2) {
        return 10;
    }
    
    else if (pickerView == self.MetricHeightPicker && component == 3) {
        return 10;
    }
    
    else if (pickerView == self.MetricHeightPicker && component == 4) {
        return 1;
    }
    
    else if (pickerView == self.MetricWeightPicker && component == 0) {
        return 3;
    }
    
    else if (pickerView == self.MetricWeightPicker && component == 1) {
        return 10;
    }
    
    else if (pickerView == self.MetricWeightPicker && component == 2) {
        return 10;
    }
    
    else if (pickerView == self.MetricWeightPicker && component == 3) {
        return 1;
    }
    
    else if (pickerView == self.MetricWeightPicker && component == 4) {
        return 10;
    }
    
    else if (pickerView == self.MetricWeightPicker && component == 5) {
        return 10;
    }
    
    else {
        return 1;
    }
    
    
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

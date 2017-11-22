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
    
    NSString *MetricCoordinate;
    
    
    
    if (pickerView == self.MetricHeightPicker && component == 0) {
        MetricCoordinate = [NSString stringWithFormat:@"%li",row];
    }
    
    else if (pickerView == self.MetricHeightPicker && component ==1) {
        MetricCoordinate = [NSString stringWithFormat:@"."];
    }
    
    else if (pickerView == self.MetricHeightPicker && component == 2) {
        MetricCoordinate = [NSString stringWithFormat:@"%li",row];
    }
    
    else if (pickerView == self.MetricHeightPicker && component == 3) {
        MetricCoordinate = [NSString stringWithFormat:@"%li",row];
    }
    
    else if (pickerView == self.MetricHeightPicker && component == 4) {
        MetricCoordinate = [NSString stringWithFormat:@"m"];
    }
    
    else if (pickerView == self.MetricWeightPicker && component == 0) {
        MetricCoordinate = [NSString stringWithFormat:@"%li",row];
    }
    
    else if (pickerView == self.MetricWeightPicker && component == 1) {
        MetricCoordinate = [NSString stringWithFormat:@"%li",row];
    }
    
    else if (pickerView == self.MetricWeightPicker && component == 2) {
        MetricCoordinate = [NSString stringWithFormat:@"%li",row];
    }
    
    else if (pickerView == self.MetricWeightPicker && component == 3) {
        MetricCoordinate = [NSString stringWithFormat:@"."];
    }
    
    else if (pickerView == self.MetricWeightPicker && component == 4) {
        MetricCoordinate = [NSString stringWithFormat:@"%li",row];
    }
    
    else if (pickerView == self.MetricWeightPicker && component == 5) {
        MetricCoordinate = [NSString stringWithFormat:@"%li",row];
    }
    
    else {
        MetricCoordinate = [NSString stringWithFormat:@"kg"];
    }
    
    return MetricCoordinate;
    
}

- (void)pickerView:(UIPickerView *)pickerView
      didSelectRow:(NSInteger)row
       inComponent:(NSInteger)component; {
    
    
    
    float MetricHeightValue;
    float MetricWeightValue;
    float MetricBMIValue;
    
    MetricHeightValue = (([self.MetricHeightPicker selectedRowInComponent:0])*1.0f) + (([self.MetricHeightPicker selectedRowInComponent:2])/10.0f) + (([self.MetricHeightPicker selectedRowInComponent:3])/100.0f);
    
    NSLog(@"Height = %.2f m",MetricHeightValue);
    
    
    MetricWeightValue = (([self.MetricWeightPicker selectedRowInComponent:0])*100.0f) + (([self.MetricWeightPicker selectedRowInComponent:1])*10.0f) + (([self.MetricWeightPicker selectedRowInComponent:2])*1.0f) + (([self.MetricWeightPicker selectedRowInComponent:4])/10.0f) + (([self.MetricWeightPicker selectedRowInComponent:5])/100.0f) ;
    
    NSLog(@"Weight = %.2f kg", MetricWeightValue);
    
    
    MetricBMIValue = MetricWeightValue/(MetricHeightValue*MetricHeightValue);
    
    NSLog(@"BMI value = %.2f", MetricBMIValue);
    
    self.BMIValueMetric.text = [NSString stringWithFormat:@"%.2f",MetricBMIValue];
    
    if (MetricBMIValue < 15.0) {
        
        self.BMICategoryMetric.text = @"Very severly underweight";
        NSLog(@"The category is %@",self.BMICategoryMetric.text);
        
    } else if (MetricBMIValue >= 15.0 && MetricBMIValue < 16.0) {
        
        self.BMICategoryMetric.text = @"Severly underweight";
        NSLog(@"The category is %@",self.BMICategoryMetric.text);
        
    } else if (MetricBMIValue >= 16.0 && MetricBMIValue < 18.5) {
        
        self.BMICategoryMetric.text = @"Undetweight";
        NSLog(@"The category is %@",self.BMICategoryMetric.text);
        
    } else if (MetricBMIValue >= 18.5 && MetricBMIValue < 25.0) {
        
        self.BMICategoryMetric.text = @"Normal (Healthy)";
        NSLog(@"The category is %@",self.BMICategoryMetric.text);
        
    } else if (MetricBMIValue >= 25.0 && MetricBMIValue < 30.0) {
        
        self.BMICategoryMetric.text = @"Overweight";
        NSLog(@"The category is %@",self.BMICategoryMetric.text);
        
    } else if (MetricBMIValue >= 30.0 && MetricBMIValue < 35.0) {
        
        self.BMICategoryMetric.text = @"Obese Class I (Moderately obese)";
        NSLog(@"The category is %@",self.BMICategoryMetric.text);
        
    } else if (MetricBMIValue >= 35.0 && MetricBMIValue < 40.0) {
        
        self.BMICategoryMetric.text = @"Obese Class II (Severely obese)";
        NSLog(@"The category is %@",self.BMICategoryMetric.text);
        
    } else  {
        
        self.BMICategoryMetric.text = @"Obese Class III (Very severly obese)";
        NSLog(@"The category is %@",self.BMICategoryMetric.text);
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

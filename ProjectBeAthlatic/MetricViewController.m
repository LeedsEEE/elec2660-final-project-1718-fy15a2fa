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

#pragma mark viewDidLoad method

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //tell the MetricHeightPicker to use a controller as its delegate and data source
    self.MetricHeightPicker.delegate = self;
    self.MetricHeightPicker.dataSource = self;
    
    //tell the MetricWeightPicker to use a controller as its delegate and data source
    self.MetricWeightPicker.delegate = self;
    self.MetricWeightPicker.dataSource = self;

    
}

#pragma mark didRecieveMemoryWarning method

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark titleForRow forComponent method

//this method is used in order to set the titles for each row and component such as numbers and symbols
- (NSString *)pickerView:(UIPickerView *)pickerView
             titleForRow:(NSInteger)row
            forComponent:(NSInteger)component; {
    
    // I identified MetricCoorddinate as NSSTring in order to an array for component
    NSString *MetricCoordinate;
    
    // if and else if statements are used in order to set the arrays for each components
    
    if (pickerView == self.MetricHeightPicker && component == 0) { // set an array of numbers in this component
        MetricCoordinate = [NSString stringWithFormat:@"%li",row];
    }
    
    else if (pickerView == self.MetricHeightPicker && component ==1) { // set a point (.)
        MetricCoordinate = [NSString stringWithFormat:@"."];
    }

    else if (pickerView == self.MetricHeightPicker && component == 2) { // set an array of numbers in this component
        MetricCoordinate = [NSString stringWithFormat:@"%li",row];
    }
    
    else if (pickerView == self.MetricHeightPicker && component == 3) { // set an array of numbers in this component
        MetricCoordinate = [NSString stringWithFormat:@"%li",row];
    }
    
    else if (pickerView == self.MetricHeightPicker && component == 4) { // set (m) which represents a symbol of meter
        MetricCoordinate = [NSString stringWithFormat:@"m"];
    }
    
    else if (pickerView == self.MetricWeightPicker && component == 0) { // set an array of numbers in this component
        MetricCoordinate = [NSString stringWithFormat:@"%li",row];
    }
    
    else if (pickerView == self.MetricWeightPicker && component == 1) { // set an array of numbers in this component
        MetricCoordinate = [NSString stringWithFormat:@"%li",row];
    }
    
    else if (pickerView == self.MetricWeightPicker && component == 2) { // set an array of numbers in this component
        MetricCoordinate = [NSString stringWithFormat:@"%li",row];
    }
    
    else if (pickerView == self.MetricWeightPicker && component == 3) { // set a point (.)
        MetricCoordinate = [NSString stringWithFormat:@"."];
    }
    
    else if (pickerView == self.MetricWeightPicker && component == 4) { // set an array of numbers in this component
        MetricCoordinate = [NSString stringWithFormat:@"%li",row];
    }
    
    else if (pickerView == self.MetricWeightPicker && component == 5) { // set an array of numbers in this component
        MetricCoordinate = [NSString stringWithFormat:@"%li",row];
    }
    
    else {
        MetricCoordinate = [NSString stringWithFormat:@"kg"]; // set (kg) which represents a symbol of kilogram
    }
    
    return MetricCoordinate; // return MetricCoordniate in order to get the arrays in their compoenets
    
}

#pragma mark didSelectedRowinComponent mehtod

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

#pragma mark numberOfComponentsInPickerView

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView; {
 
    if (pickerView == self.MetricHeightPicker) {
        
        return 5;
        
    } else {
        
        return 7;
        
    }
    
}

#pragma mark numberOfRowsInComponent method

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

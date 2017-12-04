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

#pragma mark View Method

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //tell the MetricHeightPicker to use a controller as its delegate and data source
    self.MetricHeightPicker.delegate = self;
    self.MetricHeightPicker.dataSource = self;
    
    //tell the MetricWeightPicker to use a controller as its delegate and data source
    self.MetricWeightPicker.delegate = self;
    self.MetricWeightPicker.dataSource = self;
    
    self.navigationItem.title = @"Metric Calculator"; //add a title

    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark Title for Row and for Component Method

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

#pragma mark Selected Row Mehtod

//this mehtod is used in order to some operations such as calculating BMI value and finding BMI category
- (void)pickerView:(UIPickerView *)pickerView
      didSelectRow:(NSInteger)row
       inComponent:(NSInteger)component; {
    
    
    // I identified three float variables in order to get BMI vlaue and category
    float MetricHeightValue;
    float MetricWeightValue;
    float MetricBMIValue;
    
    // I finded the height value by adding the pikcer's value together
    MetricHeightValue = (([self.MetricHeightPicker selectedRowInComponent:0])*1.0f) + (([self.MetricHeightPicker selectedRowInComponent:2])/10.0f) + (([self.MetricHeightPicker selectedRowInComponent:3])/100.0f);
    
    NSLog(@"Height = %.2f m",MetricHeightValue); // I use NSLog in order to check the height value before go on
    
    
    // I finded the weight value by adding the pikcer's value together
    MetricWeightValue = (([self.MetricWeightPicker selectedRowInComponent:0])*100.0f) + (([self.MetricWeightPicker selectedRowInComponent:1])*10.0f) + (([self.MetricWeightPicker selectedRowInComponent:2])*1.0f) + (([self.MetricWeightPicker selectedRowInComponent:4])/10.0f) + (([self.MetricWeightPicker selectedRowInComponent:5])/100.0f) ;
    
    NSLog(@"Weight = %.2f kg", MetricWeightValue); // I use NSLog in order to check the weight value before go on
    
    
    MetricBMIValue = MetricWeightValue/(MetricHeightValue*MetricHeightValue); //Calculate BMI value
    
    NSLog(@"BMI value = %.2f", MetricBMIValue); // I use NSLog in order to check the BMI value before go on
    
    self.BMIValueMetric.text = [NSString stringWithFormat:@"%.2f",MetricBMIValue]; //show BMI value on its label
    
    // I used if and else if statements in order to show BMI category
    
    if (MetricBMIValue < 15.0) {
        
        self.BMICategoryMetric.text = @"Very severly underweight"; //show BMI category on its label
        NSLog(@"The category is %@",self.BMICategoryMetric.text); // I used NSLog to make couble check that I got the right category
        
    } else if (MetricBMIValue >= 15.0 && MetricBMIValue < 16.0) {
        
        self.BMICategoryMetric.text = @"Severly underweight"; //show BMI category on its label
        NSLog(@"The category is %@",self.BMICategoryMetric.text); // I used NSLog to make couble check that I got the right category
        
    } else if (MetricBMIValue >= 16.0 && MetricBMIValue < 18.5) {
        
        self.BMICategoryMetric.text = @"Undetweight"; //show BMI category on its label
        NSLog(@"The category is %@",self.BMICategoryMetric.text); // I used NSLog to make couble check that I got the right category
        
    } else if (MetricBMIValue >= 18.5 && MetricBMIValue < 25.0) {
        
        self.BMICategoryMetric.text = @"Normal (Healthy)"; //show BMI category on its label
        NSLog(@"The category is %@",self.BMICategoryMetric.text); // I used NSLog to make couble check that I got the right category
        
    } else if (MetricBMIValue >= 25.0 && MetricBMIValue < 30.0) {
        
        self.BMICategoryMetric.text = @"Overweight"; //show BMI category on its label
        NSLog(@"The category is %@",self.BMICategoryMetric.text); // I used NSLog to make couble check that I got the right category
        
    } else if (MetricBMIValue >= 30.0 && MetricBMIValue < 35.0) {
        
        self.BMICategoryMetric.text = @"Obese Class I (Moderately obese)"; //show BMI category on its label
        NSLog(@"The category is %@",self.BMICategoryMetric.text); // I used NSLog to make couble check that I got the right category
        
    } else if (MetricBMIValue >= 35.0 && MetricBMIValue < 40.0) {
        
        self.BMICategoryMetric.text = @"Obese Class II (Severely obese)"; //show BMI category on its label
        NSLog(@"The category is %@",self.BMICategoryMetric.text); // I used NSLog to make couble check that I got the right category
        
    } else  {
        
        self.BMICategoryMetric.text = @"Obese Class III (Very severly obese)"; //show BMI category on its label
        NSLog(@"The category is %@",self.BMICategoryMetric.text); // I used NSLog to make couble check that I got the right category
    }
    
}

#pragma mark Number of Components in PickerView

//this mehtod is used to set the number of components
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView; {
 
    //if and else statements are used in order to set different components for each picker
    if (pickerView == self.MetricHeightPicker) {
        
        return 5; // 5 components for height picker
        
    } else {
        
        return 7; // 7 compoents for weight picker
        
    }
    
}

#pragma mark Number of Rows in Component Method

// this mehtod is used in order to set the number rows in each component
- (NSInteger)pickerView:(UIPickerView *)pickerView
numberOfRowsInComponent:(NSInteger)component; {
    
    // if and else if statements are used to set number of rows in each component
    if (pickerView == self.MetricHeightPicker && component == 0) {
        return 3; //providing 3 rows
    }
    
    else if (pickerView == self.MetricHeightPicker && component == 1) {
        return 1; // providing a row
    }
    
    else if (pickerView == self.MetricHeightPicker && component == 2) {
        return 10; // providing 10 rows
    }
    
    else if (pickerView == self.MetricHeightPicker && component == 3) {
        return 10; // providing 10 rows
    }
    
    else if (pickerView == self.MetricHeightPicker && component == 4) {
        return 1; // providing a row
    }
    
    else if (pickerView == self.MetricWeightPicker && component == 0) {
        return 3; // providing 3 rows
    }
    
    else if (pickerView == self.MetricWeightPicker && component == 1) {
        return 10; // providing 10 rows
    }
    
    else if (pickerView == self.MetricWeightPicker && component == 2) {
        return 10; // providing 10 rows
    }
    
    else if (pickerView == self.MetricWeightPicker && component == 3) {
        return 1; // providing a row
    }
    
    else if (pickerView == self.MetricWeightPicker && component == 4) {
        return 10; // providing 10 rows
    }
    
    else if (pickerView == self.MetricWeightPicker && component == 5) {
        return 10; // providing 10 rows
    }
    
    else {
        return 1; // providing a row
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

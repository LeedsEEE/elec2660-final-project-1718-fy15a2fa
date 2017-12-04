//
//  ImperialViewController.m
//  ProjectBeAthlatic
//
//  Created by Ahmad Alotaibi on 22/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import "ImperialViewController.h"

@interface ImperialViewController ()

@end

@implementation ImperialViewController

#pragma mark viewDidLoad method

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //tell the ImperialHeightPicker to use a controller as its delegate and data source
    self.ImperialHeightPicker.delegate = self;
    self.ImperialHeightPicker.dataSource = self;
    
    //tell the ImperialWeightPicker to use a controller as its delegate and data source
    self.ImperialWeightPicker.delegate = self;
    self.ImperialWeightPicker.dataSource = self;
    
    self.navigationItem.title = @"Imperial Units"; //add a title
    
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
    
    // I identified ImperialCoorddinate as NSSTring in order to an array for component
    NSString *ImperialCoordinate;
    
    // if and else if statements are used in order to set the arrays for each components
    
    
    if (pickerView == self.ImperialHeightPicker && component == 0) { // set an array of numbers in this component
        ImperialCoordinate = [NSString stringWithFormat:@"%li",row];
    }
    
    else if (pickerView == self.ImperialHeightPicker && component ==1) { // set a point (.)
        ImperialCoordinate = [NSString stringWithFormat:@"."];
    }
    
    else if (pickerView == self.ImperialHeightPicker && component == 2) { // set an array of numbers in this component
        ImperialCoordinate = [NSString stringWithFormat:@"%li",row];
    }
    
    else if (pickerView == self.ImperialHeightPicker && component == 3) { // set an array of numbers in this component
        ImperialCoordinate = [NSString stringWithFormat:@"%li",row];
    }
    
    else if (pickerView == self.ImperialHeightPicker && component == 4) { // set (ft) which represents a symbol of foot
        ImperialCoordinate = [NSString stringWithFormat:@"ft"];
    }
    
    else if (pickerView == self.ImperialWeightPicker && component == 0) { // set an array of numbers in this component
        ImperialCoordinate = [NSString stringWithFormat:@"%li",row];
    }
    
    else if (pickerView == self.ImperialWeightPicker && component == 1) { // set an array of numbers in this component
        ImperialCoordinate = [NSString stringWithFormat:@"%li",row];
    }
    
    else if (pickerView == self.ImperialWeightPicker && component == 2) { // set an array of numbers in this component
        ImperialCoordinate = [NSString stringWithFormat:@"%li",row];
    }
    
    else if (pickerView == self.ImperialWeightPicker && component == 3) { // set a point (.)
        ImperialCoordinate = [NSString stringWithFormat:@"."];
    }
    
    else if (pickerView == self.ImperialWeightPicker && component == 4) { // set an array of numbers in this component
        ImperialCoordinate = [NSString stringWithFormat:@"%li",row];
    }
    
    else if (pickerView == self.ImperialWeightPicker && component == 5) { // set an array of numbers in this component
        ImperialCoordinate = [NSString stringWithFormat:@"%li",row];
    }
    
    else {
        ImperialCoordinate = [NSString stringWithFormat:@"Ib"]; // set (Ib) which represents a symbol of pound
    }
    
    return ImperialCoordinate; // return ImperialCoordniate in order to get the arrays in their compoenets
    
}

#pragma mark didSelectedRowinComponent mehtod

//this mehtod is used in order to some operations such as calculating BMI value and finding BMI category
- (void)pickerView:(UIPickerView *)pickerView
      didSelectRow:(NSInteger)row
       inComponent:(NSInteger)component; {
    
    
    // I identified three float variables in order to get BMI vlaue and category
    float ImperialHeightValue;
    float ImperialWeightValue;
    float ImperailBMIValue;
    
    // I finded the height value by adding the pikcer's value together
    ImperialHeightValue = (([self.ImperialHeightPicker selectedRowInComponent:0])*1.0f) + (([self.ImperialHeightPicker selectedRowInComponent:2])/10.0f) + (([self.ImperialHeightPicker selectedRowInComponent:3])/100.0f);
    
    NSLog(@"Height = %.2f ft",ImperialHeightValue); // I use NSLog in order to check the height value before go on
    
    
    // I finded the height value by adding the pikcer's value together
    ImperialWeightValue = (([self.ImperialWeightPicker selectedRowInComponent:0])*100.0f) + (([self.ImperialWeightPicker selectedRowInComponent:1])*10.0f) + (([self.ImperialWeightPicker selectedRowInComponent:2])*1.0f) + (([self.ImperialWeightPicker selectedRowInComponent:4])/10.0f) + (([self.ImperialWeightPicker selectedRowInComponent:5])/100.0f) ;
    
    NSLog(@"Weight = %.2f Ib", ImperialWeightValue); // I use NSLog in order to check the height value before go on
    
    
    ImperailBMIValue = (4.88f)*(ImperialWeightValue)/(ImperialHeightValue*ImperialHeightValue); // calculate BMI vlaue
    
    NSLog(@"BMI value = %.2f", ImperailBMIValue); // I use NSLog in order to check the BMI value before go on
    
    self.BMIValueImperial.text = [NSString stringWithFormat:@"%.2f",ImperailBMIValue]; // show BMI value on its label
    
    // I used if and else if statements in order to show BMI category
    
    if (ImperailBMIValue < 15.0) {
        
        self.BMICategoryImperial.text = @"Very severly underweight"; //show BMI category on its label
        NSLog(@"The category is %@",self.BMICategoryImperial.text); // I used NSLog to make couble check that I got the right category
        
    } else if (ImperailBMIValue >= 15.0 && ImperailBMIValue < 16.0) {
        
        self.BMICategoryImperial.text = @"Severly underweight"; //show BMI category on its label
        NSLog(@"The category is %@",self.BMICategoryImperial.text); // I used NSLog to make couble check that I got the right category
        
    } else if (ImperailBMIValue >= 16.0 && ImperailBMIValue < 18.5) {
        
        self.BMICategoryImperial.text = @"Undetweight"; //show BMI category on its label
        NSLog(@"The category is %@",self.BMICategoryImperial.text); // I used NSLog to make couble check that I got the right category
        
    } else if (ImperailBMIValue >= 18.5 && ImperailBMIValue < 25.0) {
        
        self.BMICategoryImperial.text = @"Normal (Healthy)"; //show BMI category on its label
        NSLog(@"The category is %@",self.BMICategoryImperial.text); // I used NSLog to make couble check that I got the right category
        
    } else if (ImperailBMIValue >= 25.0 && ImperailBMIValue < 30.0) {
        
        self.BMICategoryImperial.text = @"Overweight"; //show BMI category on its label
        NSLog(@"The category is %@",self.BMICategoryImperial.text); // I used NSLog to make couble check that I got the right category
        
    } else if (ImperailBMIValue >= 30.0 && ImperailBMIValue < 35.0) {
        
        self.BMICategoryImperial.text = @"Obese Class I (Moderately obese)"; //show BMI category on its label
        NSLog(@"The category is %@",self.BMICategoryImperial.text); // I used NSLog to make couble check that I got the right category
        
    } else if (ImperailBMIValue >= 35.0 && ImperailBMIValue < 40.0) {
        
        self.BMICategoryImperial.text = @"Obese Class II (Severely obese)"; //show BMI category on its label
        NSLog(@"The category is %@",self.BMICategoryImperial.text); // I used NSLog to make couble check that I got the right category
        
    } else  {
        
        self.BMICategoryImperial.text = @"Obese Class III (Very severly obese)"; //show BMI category on its label
        NSLog(@"The category is %@",self.BMICategoryImperial.text); // I used NSLog to make couble check that I got the right category
    }
    
}

#pragma mark numberOfComponentsInPickerView

//this mehtod is used to set the number of components
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView; {
    
    //if and else statements are used in order to set different components for each picker
    if (pickerView == self.ImperialHeightPicker) {
        
        return 5; // 5 componets for height picker
        
    } else {
        
        return 7; // 7 components for weight picker
        
    }
    
}

#pragma mark numberOfRowsInComponent method

// this mehtod is used in order to set the number rows in each component
- (NSInteger)pickerView:(UIPickerView *)pickerView
numberOfRowsInComponent:(NSInteger)component; {
    
    // if and else if statements are used to set number of rows in each component
    if (pickerView == self.ImperialHeightPicker && component == 0) {
        return 8; // providing 8 rows
    }
    
    else if (pickerView == self.ImperialHeightPicker && component == 1) {
        return 1; // providing a row
    }
    
    else if (pickerView == self.ImperialHeightPicker && component == 2) {
        return 10; // providing 10 rows
    }
    
    else if (pickerView == self.ImperialHeightPicker && component == 3) {
        return 10; // providing 10 rows
    }
    
    else if (pickerView == self.ImperialHeightPicker && component == 4) {
        return 1; // providng a row
    }
    
    else if (pickerView == self.ImperialWeightPicker && component == 0) {
        return 10; // providing 10 rows
    }
    
    else if (pickerView == self.ImperialWeightPicker && component == 1) {
        return 10; // providing 10 rows
    }
    
    else if (pickerView == self.ImperialWeightPicker && component == 2) {
        return 10; // providing 10 rows
    }
    
    else if (pickerView == self.ImperialWeightPicker && component == 3) {
        return 1; // providing a row
    }
    
    else if (pickerView == self.ImperialWeightPicker && component == 4) {
        return 10; // providing 10 rows
    }
    
    else if (pickerView == self.ImperialWeightPicker && component == 5) {
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

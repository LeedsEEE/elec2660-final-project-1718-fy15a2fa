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

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.ImperialHeightPicker.delegate = self;
    self.ImperialHeightPicker.dataSource = self;
    
    self.ImperialWeightPicker.delegate = self;
    self.ImperialWeightPicker.dataSource = self;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (NSString *)pickerView:(UIPickerView *)pickerView
             titleForRow:(NSInteger)row
            forComponent:(NSInteger)component; {
    
    NSString *ImperialCoordinate;
    
    
    
    if (pickerView == self.ImperialWeightPicker && component == 0) {
        ImperialCoordinate = [NSString stringWithFormat:@"%li",row];
    }
    
    else if (pickerView == self.ImperialHeightPicker && component ==1) {
        ImperialCoordinate = [NSString stringWithFormat:@"."];
    }
    
    else if (pickerView == self.ImperialHeightPicker && component == 2) {
        ImperialCoordinate = [NSString stringWithFormat:@"%li",row];
    }
    
    else if (pickerView == self.ImperialHeightPicker && component == 3) {
        ImperialCoordinate = [NSString stringWithFormat:@"%li",row];
    }
    
    else if (pickerView == self.ImperialHeightPicker && component == 4) {
        ImperialCoordinate = [NSString stringWithFormat:@"ft"];
    }
    
    else if (pickerView == self.ImperialWeightPicker && component == 0) {
        ImperialCoordinate = [NSString stringWithFormat:@"%li",row];
    }
    
    else if (pickerView == self.ImperialWeightPicker && component == 1) {
        ImperialCoordinate = [NSString stringWithFormat:@"%li",row];
    }
    
    else if (pickerView == self.ImperialWeightPicker && component == 2) {
        ImperialCoordinate = [NSString stringWithFormat:@"%li",row];
    }
    
    else if (pickerView == self.ImperialWeightPicker && component == 3) {
        ImperialCoordinate = [NSString stringWithFormat:@"."];
    }
    
    else if (pickerView == self.ImperialWeightPicker && component == 4) {
        ImperialCoordinate = [NSString stringWithFormat:@"%li",row];
    }
    
    else if (pickerView == self.ImperialWeightPicker && component == 5) {
        ImperialCoordinate = [NSString stringWithFormat:@"%li",row];
    }
    
    else {
        ImperialCoordinate = [NSString stringWithFormat:@"kg"];
    }
    
    return ImperialCoordinate;
    
}


- (void)pickerView:(UIPickerView *)pickerView
      didSelectRow:(NSInteger)row
       inComponent:(NSInteger)component; {
    
    float ImperialHeightValue;
    float ImperialWeightValue;
    
    ImperialHeightValue = (([self.ImperialHeightPicker selectedRowInComponent:0])*1.0f) + (([self.ImperialHeightPicker selectedRowInComponent:2])/10.0f) + (([self.ImperialHeightPicker selectedRowInComponent:3])/100.0f);
    
    NSLog(@"Height = %.2f",ImperialHeightValue);
    
    
    ImperialWeightValue = (([self.ImperialWeightPicker selectedRowInComponent:0])*100.0f) + (([self.ImperialWeightPicker selectedRowInComponent:1])*10.0f) + (([self.ImperialWeightPicker selectedRowInComponent:2])*1.0f) + (([self.ImperialWeightPicker selectedRowInComponent:4])/10.0f) + (([self.ImperialWeightPicker selectedRowInComponent:5])/100.0f) ;
    
    NSLog(@"Weight = %.2f", ImperialWeightValue);
    
}


- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView; {
    
    if (pickerView == self.ImperialHeightPicker) {
        
        return 5;
        
    } else {
        
        return 7;
        
    }
    
}


- (NSInteger)pickerView:(UIPickerView *)pickerView
numberOfRowsInComponent:(NSInteger)component; {
    
    if (pickerView == self.ImperialHeightPicker && component == 0) {
        return 8;
    }
    
    else if (pickerView == self.ImperialHeightPicker && component == 1) {
        return 1;
    }
    
    else if (pickerView == self.ImperialHeightPicker && component == 2) {
        return 10;
    }
    
    else if (pickerView == self.ImperialHeightPicker && component == 3) {
        return 10;
    }
    
    else if (pickerView == self.ImperialHeightPicker && component == 4) {
        return 1;
    }
    
    else if (pickerView == self.ImperialWeightPicker && component == 0) {
        return 10;
    }
    
    else if (pickerView == self.ImperialWeightPicker && component == 1) {
        return 10;
    }
    
    else if (pickerView == self.ImperialWeightPicker && component == 2) {
        return 10;
    }
    
    else if (pickerView == self.ImperialWeightPicker && component == 3) {
        return 1;
    }
    
    else if (pickerView == self.ImperialWeightPicker && component == 4) {
        return 10;
    }
    
    else if (pickerView == self.ImperialWeightPicker && component == 5) {
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

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
    
    
    
    if (pickerView == self.MetricHeightPicker && component == 0 && row == 0) {
        coordinate = [NSString stringWithFormat:@"1"];
    }
    
    else if (pickerView == self.MetricHeightPicker && component == 0 && row == 1) {
        coordinate = [NSString stringWithFormat:@"2"];
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
    
    else if (pickerView == self.MetricWeightPicker && component == 0 && row == 0) {
        coordinate = [NSString stringWithFormat:@"0"];
    }
    
    else if (pickerView == self.MetricWeightPicker && component == 0 && row == 1) {
        coordinate = [NSString stringWithFormat:@"1"];
    }
    
    else if (pickerView == self.MetricWeightPicker && component == 0 && row == 2) {
        coordinate = [NSString stringWithFormat:@"2"];
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
        return 2;
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

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
    
}


- (void)pickerView:(UIPickerView *)pickerView
      didSelectRow:(NSInteger)row
       inComponent:(NSInteger)component; {
    
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

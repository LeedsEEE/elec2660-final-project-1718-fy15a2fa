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
    
    self.ImperialHeightPicker.delegate = self;
    self.ImperialHeightPicker.dataSource = self;
    
    self.ImperialWeightPicker.delegate = self;
    self.ImperialWeightPicker.dataSource = self;
    
}

#pragma mark didRecieveMemoryWarning method

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark titleForRow forComponent method

- (NSString *)pickerView:(UIPickerView *)pickerView
             titleForRow:(NSInteger)row
            forComponent:(NSInteger)component; {
    
    NSString *ImperialCoordinate;
    
    
    
    if (pickerView == self.ImperialHeightPicker && component == 0) {
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
        ImperialCoordinate = [NSString stringWithFormat:@"Ib"];
    }
    
    return ImperialCoordinate;
    
}

#pragma mark didSelectedRowinComponent mehtod

- (void)pickerView:(UIPickerView *)pickerView
      didSelectRow:(NSInteger)row
       inComponent:(NSInteger)component; {
    
    float ImperialHeightValue;
    float ImperialWeightValue;
    float ImperailBMIValue;
    
    ImperialHeightValue = (([self.ImperialHeightPicker selectedRowInComponent:0])*1.0f) + (([self.ImperialHeightPicker selectedRowInComponent:2])/10.0f) + (([self.ImperialHeightPicker selectedRowInComponent:3])/100.0f);
    
    NSLog(@"Height = %.2f ft",ImperialHeightValue);
    
    
    ImperialWeightValue = (([self.ImperialWeightPicker selectedRowInComponent:0])*100.0f) + (([self.ImperialWeightPicker selectedRowInComponent:1])*10.0f) + (([self.ImperialWeightPicker selectedRowInComponent:2])*1.0f) + (([self.ImperialWeightPicker selectedRowInComponent:4])/10.0f) + (([self.ImperialWeightPicker selectedRowInComponent:5])/100.0f) ;
    
    NSLog(@"Weight = %.2f Ib", ImperialWeightValue);
    
    
    ImperailBMIValue = (4.88f)*(ImperialWeightValue)/(ImperialHeightValue*ImperialHeightValue);
    
    NSLog(@"BMI value = %.2f", ImperailBMIValue);
    
    self.BMIValueImperial.text = [NSString stringWithFormat:@"%.2f",ImperailBMIValue];
    
    if (ImperailBMIValue < 15.0) {
        
        self.BMICategoryImperial.text = @"Very severly underweight";
        NSLog(@"The category is %@",self.BMICategoryImperial.text);
        
    } else if (ImperailBMIValue >= 15.0 && ImperailBMIValue < 16.0) {
        
        self.BMICategoryImperial.text = @"Severly underweight";
        NSLog(@"The category is %@",self.BMICategoryImperial.text);
        
    } else if (ImperailBMIValue >= 16.0 && ImperailBMIValue < 18.5) {
        
        self.BMICategoryImperial.text = @"Undetweight";
        NSLog(@"The category is %@",self.BMICategoryImperial.text);
        
    } else if (ImperailBMIValue >= 18.5 && ImperailBMIValue < 25.0) {
        
        self.BMICategoryImperial.text = @"Normal (Healthy)";
        NSLog(@"The category is %@",self.BMICategoryImperial.text);
        
    } else if (ImperailBMIValue >= 25.0 && ImperailBMIValue < 30.0) {
        
        self.BMICategoryImperial.text = @"Overweight";
        NSLog(@"The category is %@",self.BMICategoryImperial.text);
        
    } else if (ImperailBMIValue >= 30.0 && ImperailBMIValue < 35.0) {
        
        self.BMICategoryImperial.text = @"Obese Class I (Moderately obese)";
        NSLog(@"The category is %@",self.BMICategoryImperial.text);
        
    } else if (ImperailBMIValue >= 35.0 && ImperailBMIValue < 40.0) {
        
        self.BMICategoryImperial.text = @"Obese Class II (Severely obese)";
        NSLog(@"The category is %@",self.BMICategoryImperial.text);
        
    } else  {
        
        self.BMICategoryImperial.text = @"Obese Class III (Very severly obese)";
        NSLog(@"The category is %@",self.BMICategoryImperial.text);
    }
    
}

#pragma mark numberOfComponentsInPickerView

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView; {
    
    if (pickerView == self.ImperialHeightPicker) {
        
        return 5;
        
    } else {
        
        return 7;
        
    }
    
}

#pragma mark numberOfRowsInComponent method

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

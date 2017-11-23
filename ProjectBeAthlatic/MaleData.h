//
//  MaleData.h
//  ProjectBeAthlatic
//
//  Created by Ahmad Alotaibi on 21/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MaleProperties.h" //import this class in order to get male properties for the workouts

@interface MaleData : NSObject

//creating an array for each body parts by using NSMutableArray
//in order to add the workouts in their appropriate arrays
@property (nonatomic, strong) NSMutableArray *ShouldersMale; //shoulders array
@property (nonatomic, strong) NSMutableArray *ArmsMale; //arms array
@property (nonatomic, strong) NSMutableArray *LegsMale; //legs array
@property (nonatomic, strong) NSMutableArray *ChestMale; //chest array
@property (nonatomic, strong) NSMutableArray *ABSMale; //ABS array

@end

//
//  FemaleData.h
//  ProjectBeAthlatic
//
//  Created by Ahmad Alotaibi on 21/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FemaleProperties.h" //import this class in order to get male properties for the workouts

@interface FemaleData : NSObject

//creating an array for each body parts by using NSMutableArray
//in order to add the workouts in their appropriate arrays
@property (nonatomic, strong) NSMutableArray *ShouldersFemale; //shoulders array
@property (nonatomic, strong) NSMutableArray *ArmsFeamle; //arms array
@property (nonatomic, strong) NSMutableArray *LegsFemale; //legs array
@property (nonatomic, strong) NSMutableArray *ChestFemale; //chest array
@property (nonatomic, strong) NSMutableArray *ABSFemale; //ABS array


@end

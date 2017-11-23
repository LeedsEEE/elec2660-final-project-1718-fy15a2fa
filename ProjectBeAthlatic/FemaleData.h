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

@property (nonatomic, strong) NSMutableArray *ShouldersFemale;
@property (nonatomic, strong) NSMutableArray *ArmsFeamle;
@property (nonatomic, strong) NSMutableArray *LegsFemale;
@property (nonatomic, strong) NSMutableArray *ChestFemale;
@property (nonatomic, strong) NSMutableArray *ABSFemale;


@end

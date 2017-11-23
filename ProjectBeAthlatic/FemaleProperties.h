//
//  FemaleProperties.h
//  ProjectBeAthlatic
//
//  Created by Ahmad Alotaibi on 21/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import <Foundation/Foundation.h>

//creating a class in order to some propertis to male's workouts

@interface FemaleProperties : NSObject

//creating properties for male workouts
@property (nonatomic, strong) NSString *NameWorkoutFemale; //workout name (NSString)
@property (nonatomic, strong) NSString *LevelFemale; //level property shows level of work outs (NSString)
@property (nonatomic, strong) NSString *TimeFemale; //level property shows time of work outs (NSString in order to add a text to time)
@property (nonatomic, strong) NSString *DiscriptionFemale; //level property shows discription of work outs (NSString)

@end

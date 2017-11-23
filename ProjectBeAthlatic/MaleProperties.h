//
//  MaleProperties.h
//  ProjectBeAthlatic
//
//  Created by Ahmad Alotaibi on 21/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import <Foundation/Foundation.h>

//creating a class in order to some propertis to male's workouts

@interface MaleProperties : NSObject

//creating properties for male work outs
@property (nonatomic, strong) NSString *NameWorkoutMale; //workout name (NSString)
@property (nonatomic, strong) NSString *LevelMale; //level property shows level of work outs (NSString)
@property (nonatomic, strong) NSString *TimeMale; //level property shows time of work outs (NSString in order to add a text to time)
@property (nonatomic, strong) NSString *DiscriptionMale; //level property shows discription of work outs (NSString)

@end

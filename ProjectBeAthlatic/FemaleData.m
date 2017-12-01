//
//  FemaleData.m
//  ProjectBeAthlatic
//
//  Created by Ahmad Alotaibi on 21/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import "FemaleData.h"

@implementation FemaleData


//create custom init function in order to add workouts' details
- (instancetype)init
{
    self = [super init];
    if (self) {
        
        
        
        #pragma mark shoulders' workouts
        
        //set an array for shoulders' workouts by using [NSMutableArray array]
        self.ShouldersFemale = [NSMutableArray array];
        
        //create an object for walking in order to some properties to it such as level, time , discription and photo
        //in addition, allocate memory for the workout
        FemaleProperties *www = [[FemaleProperties alloc] init];
        www.NameWorkoutFemale = @"www"; //set workout name
        www.LevelFemale = @"Advanced"; //set the level of workout
        www.TimeFemale = @"4 minutes"; //set the time of workout
        www.DiscriptionFemale = @"fjkjsdfk gjdklahf hdaufh hshd dushuis hsusf shusy suishisiu hisiu sius hgur suis his shsis shiuss pfjsoio fsius oisie hro g sosioser"; //set the discription of workout
        
        
        //create an object for walking in order to some properties to it such as level, time , discription and photo
            //in addition, allocate memory for the workout
            FemaleProperties *ssw = [[FemaleProperties alloc] init];
        ssw.NameWorkoutFemale = @"www"; //set workout name
        ssw.LevelFemale = @"Advanced"; //set the level of workout
        ssw.TimeFemale = @"4 minutes"; //set the time of workout
        ssw.DiscriptionFemale = @"fjkjsdfk gjdklahf hdaufh hshd dushuis hsusf shusy suishisiu hisiu sius hgur suis his shsis shiuss pfjsoio fsius oisie hro g sosioser"; //set the discription of workout
        
        #pragma mark add shoulders' workouts to the array
        
        //add the workouts into the shoulders array by using addObject function
        [self.ShouldersFemale addObject:www]; //This workout goes into (INDEX 0)
        [self.ShouldersFemale addObject:ssw]; //This workout goes into (INDEX 1)
        
        
        
        #pragma mark arms' workouts
        
        //set an array for arms' workouts by using [NSMutableArray array]
        self.ArmsFeamle = [NSMutableArray array];
        
        //create an object for walking in order to some properties to it such as level, time , discription and photo
        //in addition, allocate memory for the workout
        FemaleProperties *rrr = [[FemaleProperties alloc] init];
        rrr.NameWorkoutFemale = @"rrr"; //set workout name
        rrr.LevelFemale = @"Beginner"; //set the level of workout
        rrr.TimeFemale = @"5 minutes"; //set the time of workout
        rrr.DiscriptionFemale = @"fjkjsdfk gjdklahf hdaufh hshd dushuis hsusf shusy suishisiu hisiu sius hgur suis his shsis shiuss pfjsoio fsius oisie hro g sosioser"; //set the discription of workout
        
        
        #pragma mark add arms' workouts to the array
        
        //add the workouts into the arms array by using addObject function
        [self.ArmsFeamle addObject:rrr]; //This workout goes into (INDEX 0)
        
        
        
        #pragma mark legs' workouts
        
        //set an array for legs' workouts by using [NSMutableArray array]
        self.LegsFemale = [NSMutableArray array];
        
        //create an object for walking in order to some properties to it such as level, time , discription and photo
        //in addition, allocate memory for the workout
        FemaleProperties *ggg = [[FemaleProperties alloc] init];
        ggg.NameWorkoutFemale = @"ggg"; //set workout name
        ggg.LevelFemale = @"Beginner"; //set the level of workout
        ggg.TimeFemale = @"5 minutes"; //set the time of workout
        ggg.DiscriptionFemale = @"fjkjsdfk gjdklahf hdaufh hshd dushuis hsusf shusy suishisiu hisiu sius hgur suis his shsis shiuss pfjsoio fsius oisie hro g sosioser"; //set the discription of workout
        
        
        #pragma mark add legs' workouts to the array
        
        //add the workouts into the legs array by using addObject function
        [self.LegsFemale addObject:ggg]; //This workout goes into (INDEX 0)
        
        
        
        #pragma mark chest's workouts
        
        //set an array for chest's workouts by using [NSMutableArray array]
        self.ChestFemale = [NSMutableArray array];
        
        //create an object for walking in order to some properties to it such as level, time , discription and photo
        //in addition, allocate memory for the workout
        FemaleProperties *qqq = [[FemaleProperties alloc] init];
        qqq.NameWorkoutFemale = @"qqq"; //set workout name
        qqq.LevelFemale = @"Advanced"; //set the level of workout
        qqq.TimeFemale = @"10 minutes"; //set the time of workout
        qqq.DiscriptionFemale = @"fjkjsdfk gjdklahf hdaufh hshd dushuis hsusf shusy suishisiu hisiu sius hgur suis his shsis shiuss pfjsoio fsius oisie hro g sosioser"; //set the discription of workout
        
        
        #pragma mark add chest's workouts to the array
        
        //add the workouts into the chest array by using addObject function
        [self.ChestFemale addObject:qqq]; //This workout goes into (INDEX 0)
        
        
        
        #pragma mark ABS's workouts
        
        //set an array for ABS's workouts by using [NSMutableArray array]
        self.ABSFemale = [NSMutableArray array];
        
        //create an object for walking in order to some properties to it such as level, time , discription and photo
        //in addition, allocate memory for the workout
        FemaleProperties *ccc = [[FemaleProperties alloc] init];
        ccc.NameWorkoutFemale = @"ccc"; //set workout name
        ccc.LevelFemale = @"Advanced"; //set the level of workout
        ccc.TimeFemale = @"8 minutes"; //set the time of workout
        ccc.DiscriptionFemale = @"fjkjsdfk gjdklahf hdaufh hshd dushuis hsusf shusy suishisiu hisiu sius hgur suis his shsis shiuss pfjsoio fsius oisie hro g sosioser"; //set the discription of workout
        
        
        #pragma mark add ABS's workouts to the array
        
        //add the workouts into the ABS array by using addObject function
        [self.ABSFemale addObject:ccc]; //This workout goes into (INDEX 0)
        
    }
    return self;
}


@end

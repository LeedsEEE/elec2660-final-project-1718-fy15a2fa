//
//  MaleData.m
//  ProjectBeAthlatic
//
//  Created by Ahmad Alotaibi on 21/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import "MaleData.h"

@implementation MaleData


//create custom init function in order to add workouts' details
- (instancetype)init
{
    self = [super init];
    if (self) {
        
        
        
        #pragma mark shoulders' workouts
        
        //set an array for shoulders' workouts by using [NSMutableArray array]
        self.ShouldersMale = [NSMutableArray array];
        
        //create an object for walking in order to some properties to it such as level, time , discription and photo
        //in addition, allocate memory for the workout
        MaleProperties *www = [[MaleProperties alloc] init];
        www.NameWorkoutMale = @"www"; //set workout name
        www.LevelMale = @"Advanced"; //set the level of workout
        www.TimeMale = @"4 minutes"; //set the time of workout
        www.DiscriptionMale = @"fjkjsdfk gjdklahf hdaufh hshd dushuis hsusf shusy suishisiu hisiu sius hgur suis his shsis shiuss pfjsoio fsius oisie hro g sosioser"; //set the discription of workout
        
        
        #pragma mark add shoulders' workouts to the array
        
        //add the workouts into the shoulders array by using addObject function
        [self.ShouldersMale addObject:www]; //This workout goes into (INDEX 0)
        
        
        
        #pragma mark arms' workouts
        
        //set an array for arms' workouts by using [NSMutableArray array]
        self.ArmsMale = [NSMutableArray array];
        
        //create an object for walking in order to some properties to it such as level, time , discription and photo
        //in addition, allocate memory for the workout
        MaleProperties *rrr = [[MaleProperties alloc] init];
        rrr.NameWorkoutMale = @"rrr"; //set workout name
        rrr.LevelMale = @"Beginner"; //set the level of workout
        rrr.TimeMale = @"5 minutes"; //set the time of workout
        rrr.DiscriptionMale = @"fjkjsdfk gjdklahf hdaufh hshd dushuis hsusf shusy suishisiu hisiu sius hgur suis his shsis shiuss pfjsoio fsius oisie hro g sosioser"; //set the discription of workout
        
        
        #pragma mark add arms' workouts to the array
        
        //add the workouts into the arms array by using addObject function
        [self.ArmsMale addObject:rrr]; //This workout goes into (INDEX 0)
        
        
        
        #pragma mark legs' workouts
        
        //set an array for legs' workouts by using [NSMutableArray array]
        self.LegsMale = [NSMutableArray array];
        
        //create an object for walking in order to some properties to it such as level, time , discription and photo
        //in addition, allocate memory for the workout
        MaleProperties *ggg = [[MaleProperties alloc] init];
        ggg.NameWorkoutMale = @"ggg"; //set workout name
        ggg.LevelMale = @"Beginner"; //set the level of workout
        ggg.TimeMale = @"5 minutes"; //set the time of workout
        ggg.DiscriptionMale = @"fjkjsdfk gjdklahf hdaufh hshd dushuis hsusf shusy suishisiu hisiu sius hgur suis his shsis shiuss pfjsoio fsius oisie hro g sosioser"; //set the discription of workout
        
        
        #pragma mark add legs' workouts to the array
        
        //add the workouts into the legs array by using addObject function
        [self.LegsMale addObject:ggg]; //This workout goes into (INDEX 0)
        
        
        
        #pragma mark chest's workouts
        
        //set an array for chest's workouts by using [NSMutableArray array]
        self.ChestMale = [NSMutableArray array];
        
        //create an object for walking in order to some properties to it such as level, time , discription and photo
        //in addition, allocate memory for the workout
        MaleProperties *qqq = [[MaleProperties alloc] init];
        qqq.NameWorkoutMale = @"qqq"; //set workout name
        qqq.LevelMale = @"Advanced"; //set the level of workout
        qqq.TimeMale = @"10 minutes"; //set the time of workout
        qqq.DiscriptionMale = @"fjkjsdfk gjdklahf hdaufh hshd dushuis hsusf shusy suishisiu hisiu sius hgur suis his shsis shiuss pfjsoio fsius oisie hro g sosioser"; //set the discription of workout
        
        
        #pragma mark add chest's workouts to the array

        //add the workouts into the chest array by using addObject function
        [self.ChestMale addObject:qqq]; //This workout goes into (INDEX 0)
        
        
        
        #pragma mark ABS's workouts
        
        //set an array for ABS's workouts by using [NSMutableArray array]
        self.ABSMale = [NSMutableArray array];
        
        //create an object for walking in order to some properties to it such as level, time , discription and photo
        //in addition, allocate memory for the workout
        MaleProperties *ccc = [[MaleProperties alloc] init];
        ccc.NameWorkoutMale = @"ccc"; //set workout name
        ccc.LevelMale = @"Advanced"; //set the level of workout
        ccc.TimeMale = @"8 minutes"; //set the time of workout
        ccc.DiscriptionMale = @"fjkjsdfk gjdklahf hdaufh hshd dushuis hsusf shusy suishisiu hisiu sius hgur suis his shsis shiuss pfjsoio fsius oisie hro g sosioser"; //set the discription of workout
        
        
        #pragma mark add ABS's workouts to the array
        
        //add the workouts into the ABS array by using addObject function
        [self.ABSMale addObject:ccc]; //This workout goes into (INDEX 0)
        
    }
    return self;
}


@end

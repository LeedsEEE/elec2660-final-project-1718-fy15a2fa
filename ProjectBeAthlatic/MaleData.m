//
//  MaleData.m
//  ProjectBeAthlatic
//
//  Created by Ahmad Alotaibi on 21/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import "MaleData.h"

@implementation MaleData

- (instancetype)init
{
    self = [super init];
    if (self) {
        
        self.ShouldersMale = [NSMutableArray array];
        MaleProperties *www = [[MaleProperties alloc] init];
        www.NameWorkoutMale = @"www";
        www.LevelMale = @"Advanced";
        www.TimeMale = @"4 minutes";
        www.DiscriptionMale = @"fjkjsdfk gjdklahf hdaufh hshd dushuis hsusf shusy suishisiu hisiu sius hgur suis his shsis shiuss pfjsoio fsius oisie hro g sosioser";
        
        [self.ShouldersMale addObject:www];
        
        
        self.ArmsMale = [NSMutableArray array];
        MaleProperties *rrr = [[MaleProperties alloc] init];
        rrr.NameWorkoutMale = @"rrr";
        rrr.LevelMale = @"beginner";
        rrr.TimeMale = @"5 minutes";
        rrr.DiscriptionMale = @"fjkjsdfk gjdklahf hdaufh hshd dushuis hsusf shusy suishisiu hisiu sius hgur suis his shsis shiuss pfjsoio fsius oisie hro g sosioser";
        
        [self.ArmsMale addObject:rrr];
        
        
        self.LegsMale = [NSMutableArray array];
        MaleProperties *ggg = [[MaleProperties alloc] init];
        ggg.NameWorkoutMale = @"ggg";
        ggg.LevelMale = @"beginner";
        ggg.TimeMale = @"5 minutes";
        ggg.DiscriptionMale = @"fjkjsdfk gjdklahf hdaufh hshd dushuis hsusf shusy suishisiu hisiu sius hgur suis his shsis shiuss pfjsoio fsius oisie hro g sosioser";
        
        [self.LegsMale addObject:ggg];
        
        
        self.ChestMale = [NSMutableArray array];
        MaleProperties *qqq = [[MaleProperties alloc] init];
        qqq.NameWorkoutMale = @"qqq";
        qqq.LevelMale = @"Advanced";
        qqq.TimeMale = @"10 minutes";
        qqq.DiscriptionMale = @"fjkjsdfk gjdklahf hdaufh hshd dushuis hsusf shusy suishisiu hisiu sius hgur suis his shsis shiuss pfjsoio fsius oisie hro g sosioser";
        
        [self.ChestMale addObject:qqq];
        
        
        self.ABSMale = [NSMutableArray array];
        MaleProperties *ccc = [[MaleProperties alloc] init];
        ccc.NameWorkoutMale = @"ccc";
        ccc.LevelMale = @"Advanced";
        ccc.TimeMale = @"8 minutes";
        ccc.DiscriptionMale = @"fjkjsdfk gjdklahf hdaufh hshd dushuis hsusf shusy suishisiu hisiu sius hgur suis his shsis shiuss pfjsoio fsius oisie hro g sosioser";
        
        [self.ABSMale addObject:ccc];
        
    }
    return self;
}


@end

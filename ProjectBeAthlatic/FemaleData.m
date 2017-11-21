//
//  FemaleData.m
//  ProjectBeAthlatic
//
//  Created by Ahmad Alotaibi on 21/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import "FemaleData.h"

@implementation FemaleData

- (instancetype)init
{
    self = [super init];
    if (self) {
        
        self.ShouldersFemale = [NSMutableArray array];
        FemaleProperties *www = [[FemaleProperties alloc] init];
        www.NameWorkoutFemale = @"www";
        www.LevelFemale = @"Advanced";
        www.TimeFemale = @"4 minutes";
        www.DiscriptionFemale = @"fjkjsdfk gjdklahf hdaufh hshd dushuis hsusf shusy suishisiu hisiu sius hgur suis his shsis shiuss pfjsoio fsius oisie hro g sosioser";
        
        [self.ShouldersFemale addObject:www];
        
        
        self.ArmsFeamle = [NSMutableArray array];
        FemaleProperties *rrr = [[FemaleProperties alloc] init];
        rrr.NameWorkoutFemale = @"rrr";
        rrr.LevelFemale = @"beginner";
        rrr.TimeFemale = @"5 minutes";
        rrr.DiscriptionFemale = @"fjkjsdfk gjdklahf hdaufh hshd dushuis hsusf shusy suishisiu hisiu sius hgur suis his shsis shiuss pfjsoio fsius oisie hro g sosioser";
        
        [self.ArmsFeamle addObject:rrr];
        
        
        self.LegsFemale = [NSMutableArray array];
        FemaleProperties *ggg = [[FemaleProperties alloc] init];
        ggg.NameWorkoutFemale = @"ggg";
        ggg.LevelFemale = @"beginner";
        ggg.TimeFemale = @"5 minutes";
        ggg.DiscriptionFemale = @"fjkjsdfk gjdklahf hdaufh hshd dushuis hsusf shusy suishisiu hisiu sius hgur suis his shsis shiuss pfjsoio fsius oisie hro g sosioser";
        
        [self.LegsFemale addObject:ggg];
        
        
        self.ChestFemale = [NSMutableArray array];
        FemaleProperties *qqq = [[FemaleProperties alloc] init];
        qqq.NameWorkoutFemale = @"qqq";
        qqq.LevelFemale = @"Advanced";
        qqq.TimeFemale = @"10 minutes";
        qqq.DiscriptionFemale = @"fjkjsdfk gjdklahf hdaufh hshd dushuis hsusf shusy suishisiu hisiu sius hgur suis his shsis shiuss pfjsoio fsius oisie hro g sosioser";
        
        [self.ChestFemale addObject:qqq];
        
        
        self.ABSFemale = [NSMutableArray array];
        FemaleProperties *ccc = [[FemaleProperties alloc] init];
        ccc.NameWorkoutFemale = @"ccc";
        ccc.LevelFemale = @"Advanced";
        ccc.TimeFemale = @"8 minutes";
        ccc.DiscriptionFemale = @"fjkjsdfk gjdklahf hdaufh hshd dushuis hsusf shusy suishisiu hisiu sius hgur suis his shsis shiuss pfjsoio fsius oisie hro g sosioser";
        
        [self.ABSFemale addObject:ccc];
        
    }
    return self;
}


@end

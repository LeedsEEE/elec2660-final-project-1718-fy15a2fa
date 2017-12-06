//
//  GymPins.h
//  ProjectBeAthlatic
//
//  Created by Ahmad Alotaibi on 27/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MapKit/MapKit.h"

//I toke this small part from Jaffrey App Channel on youtube
//https://www.youtube.com/watch?v=sKnHZQPtpjE

@interface GymPins : NSObject <MKAnnotation> { // use this in order to add them to the pins
    NSString *title; // represents name of a gym
    NSString *subtitle; // represent a nearest street to a gym
    CLLocationCoordinate2D coordinate; // represents coordinate of a gym
}



@property (nonatomic, assign) CLLocationCoordinate2D coordinate; // represents coordinate of a gym
@property (nonatomic, copy) NSString *title;  // represents name of a gym
@property (nonatomic, copy) NSString *subtitle; // represent a nearest street to a gym



@end

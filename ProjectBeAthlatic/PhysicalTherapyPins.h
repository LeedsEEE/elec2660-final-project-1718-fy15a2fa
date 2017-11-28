//
//  PhysicalTherapyPins.h
//  ProjectBeAthlatic
//
//  Created by Ahmad Alotaibi on 27/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MapKit/MapKit.h"

@interface PhysicalTherapyPins : NSObject <MKAnnotation> {
    NSString *title; // represents a name of physical therapy center
    NSString *subtitle; // represent a nearest street to a physical therapy center
    CLLocationCoordinate2D coordinate; //represents the coordiante of physical therapy center
}

@property (nonatomic, assign) CLLocationCoordinate2D coordinate; //represents the coordiante of physical therapy center
@property (nonatomic, copy) NSString *title;  // represents a name of physical therapy center
@property (nonatomic, copy) NSString *subtitle; // represent a nearest street to a gym

@end

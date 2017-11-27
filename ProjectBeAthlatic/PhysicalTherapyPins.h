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
    NSString *PhysicalTherapyName;
    NSString *PhysicalTherapyStreet;
    CLLocationCoordinate2D coordinate;
}

@property (nonatomic, assign) CLLocationCoordinate2D coordinate;
@property (nonatomic, copy) NSString *PhysicalTherapyName;
@property (nonatomic, copy) NSString *PhysicalTherapyStreet;

@end

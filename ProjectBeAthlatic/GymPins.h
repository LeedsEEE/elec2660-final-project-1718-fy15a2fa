//
//  GymPins.h
//  ProjectBeAthlatic
//
//  Created by Ahmad Alotaibi on 27/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MapKit/MapKit.h"

@interface GymPins : NSObject <MKAnnotation> {
    NSString *gymName;
    NSString *gymStreet;
    CLLocationCoordinate2D coordinate;
}

@property (nonatomic, assign) CLLocationCoordinate2D coordinate;
@property (nonatomic, copy) NSString *gymName;
@property (nonatomic, copy) NSString *gymStreet;

@end

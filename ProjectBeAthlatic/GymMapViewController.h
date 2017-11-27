//
//  GymMapViewController.h
//  ProjectBeAthlatic
//
//  Created by Ahmad Alotaibi on 27/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MapKit/MapKit.h"
#import "CoreLocation/CoreLocation.h"

@interface GymMapViewController : UIViewController <MKMapViewDelegate, CLLocationManagerDelegate>

@property (weak, nonatomic) IBOutlet MKMapView *GymMapView;

@property (nonatomic, strong) CLLocationManager *Mylocation;

- (IBAction)selectMapType:(id)sender;

- (IBAction)ToTheGym:(id)sender;
- (IBAction)ToPureGym:(id)sender;
- (IBAction)ToSipritGym:(id)sender;
- (IBAction)ToNuffieldGym:(id)sender;



@end

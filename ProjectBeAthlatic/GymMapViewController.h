//
//  GymMapViewController.h
//  ProjectBeAthlatic
//
//  Created by Ahmad Alotaibi on 27/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MapKit/MapKit.h" //import MapKit in order to use it
#import "CoreLocation/CoreLocation.h" //import CoreLocation in order to use it

// I set view controller to be Map View's delegate and Location Manager's delegate
@interface GymMapViewController : UIViewController <MKMapViewDelegate, CLLocationManagerDelegate>

@property (weak, nonatomic) IBOutlet MKMapView *GymMapView; // Map view (outlet)

@property (nonatomic, strong) CLLocationManager *Mylocation; // create this property to get my location on the map (CLLocationManager)

- (IBAction)selectMapType:(id)sender; // segemnt control in order to the map type (action)

- (IBAction)ToTheGym:(id)sender; // button show the route to the gym (action)
- (IBAction)ToPureGym:(id)sender; // button show the route to the pure gym (action)
- (IBAction)ToSipritGym:(id)sender; // button show the route to the siprit gym (action)
- (IBAction)ToNuffieldGym:(id)sender; //button show the route to the nuffield gym (action)



@end

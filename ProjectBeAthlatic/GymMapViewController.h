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
#import "GymPins.h" //import this class in order to get the data about the gyms

// I set view controller to be Map View's delegate and Location Manager's delegate
@interface GymMapViewController : UIViewController <MKMapViewDelegate, CLLocationManagerDelegate>

@property (weak, nonatomic) IBOutlet MKMapView *GymMapView; // Map view (outlet)

@property (nonatomic, strong) CLLocationManager *Mylocation; // create this property to get my location on the map (CLLocationManager)

- (IBAction)selectMapType:(id)sender; // segemnt control in order to the map type (action)

//by mistake I wrote the gym but the correct gym is implexus gym
- (IBAction)ToTheGym:(id)sender; // button shows the route to the Implexus gym (action)
- (IBAction)ToPureGym:(id)sender; // button shows the route to the pure gym (action)
- (IBAction)ToSipritGym:(id)sender; // button shows the route to the siprit gym (action)
//by mistake I wrote nuffield gym but the correct gym is Leodis gym
- (IBAction)ToNuffieldGym:(id)sender; //button shows the route to the Leodis gym (action)



@end

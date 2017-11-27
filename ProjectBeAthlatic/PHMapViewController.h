//
//  PHMapViewController.h
//  ProjectBeAthlatic
//
//  Created by Ahmad Alotaibi on 27/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MapKit/MapKit.h" //import MapKit in order to use it
#import "CoreLocation/CoreLocation.h" //import CoreLocation in order to use it
#import "PhysicalTherapyPins.h" //import this class in order to get physical therapy centers data

// I set view controller to be Map View's delegate and Location Manager's delegate
@interface PHMapViewController : UIViewController <MKMapViewDelegate, CLLocationManagerDelegate>

@property (weak, nonatomic) IBOutlet MKMapView *PHMapView; // Map view (outlet)

@property (nonatomic, strong) CLLocationManager *Mylocation; // create this property to get my location on the map (CLLocationManager)

- (IBAction)selecteMapTypes:(id)sender; // segemnt control in order to the map type (action

- (IBAction)ToPhoenixCenter:(id)sender; // button shows the route to the Pheonix center (action)
- (IBAction)ToWYCenter:(id)sender; // button shows the route to the WestYorkshire center (action)
- (IBAction)ToWestPCenter:(id)sender; // button shows the route to the West Point center (action)
- (IBAction)ToPWCenter:(id)sender; // button shows the route to the PhysioWorld center (action)



@end

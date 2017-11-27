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

@interface PHMapViewController : UIViewController <MKMapViewDelegate, CLLocationManagerDelegate>

@property (weak, nonatomic) IBOutlet MKMapView *PHMapView;

- (IBAction)selecteMapTypes:(id)sender;

- (IBAction)ToPhoenixCenter:(id)sender;
- (IBAction)ToWYCenter:(id)sender;
- (IBAction)ToWestPCenter:(id)sender;
- (IBAction)ToPWCenter:(id)sender;



@end

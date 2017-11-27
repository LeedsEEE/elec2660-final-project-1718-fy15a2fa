//
//  GymMapViewController.m
//  ProjectBeAthlatic
//
//  Created by Ahmad Alotaibi on 27/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import "GymMapViewController.h"

@interface GymMapViewController ()

@end

@implementation GymMapViewController

#pragma mark viewDidLoad method

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.Mylocation = [[CLLocationManager alloc] init];
    
    self.GymMapView.delegate = self;
    self.Mylocation.delegate = self;
    
    [self.Mylocation requestWhenInUseAuthorization];
    
    self.GymMapView.showsUserLocation = YES;
    
    CLLocation *MeOnMap = self.Mylocation.location;
    CLLocationCoordinate2D MyCoordinates = MeOnMap.coordinate;
    self.GymMapView.region = MKCoordinateRegionMake(MyCoordinates, MKCoordinateSpanMake(0.02, 0.02));
    
    
}

#pragma mark didReciveMemoryWarning method

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark didUpdatedUserLocation method


- (void)mapView:(MKMapView *)mapView didUpdateUserLocation:(MKUserLocation *)userLocation; {
    
    NSLog(@" I am in = %f (latitude), %f (longitude)", userLocation.coordinate.latitude, userLocation.coordinate.longitude);
    
    MKCoordinateRegion place = MKCoordinateRegionMake(userLocation.coordinate, MKCoordinateSpanMake(0.15, 0.15));
    
    [self.GymMapView setRegion:place animated: YES];
    
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

#pragma mark segment control

- (IBAction)selectMapType:(id)sender {
    
    switch (((UISegmentedControl *)sender).selectedSegmentIndex) {
        case 0: //first
            
            NSLog(@"Standard Map"); // just for checking if it works
            
            _GymMapView.mapType = MKMapTypeStandard;
            
            break;
        case 1:
            
            NSLog(@"Satellite Map"); // just for checking if it works
            
            _GymMapView.mapType = MKMapTypeSatellite;
            
            break;
        case 2:
            
            NSLog(@"Hybrid Map"); // just for checking if it works
            
            _GymMapView.mapType = MKMapTypeHybrid;
            
            break;
        default:
            break;
    }
    
}

#pragma mark buttons

- (IBAction)ToTheGym:(id)sender {
    
    NSLog(@"ToTheGym button pressed"); // just for checking if it works
    
}

- (IBAction)ToPureGym:(id)sender {
    
    NSLog(@"TOPureGym button pressed"); // just for checking if it works
    
}

- (IBAction)ToSipritGym:(id)sender {
    
    NSLog(@"ToSipritGym button pressed"); // just for checking if it works
    
}

- (IBAction)ToNuffieldGym:(id)sender {
    
    NSLog(@"ToNuffieldGym button pressed"); // just for checking if it works
    
}
@end

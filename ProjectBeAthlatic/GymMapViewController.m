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
    
    
    
    MKCoordinateRegion ImplexusGym = { {0.0, 0.0}, {0.0, 0.0}};
    
    ImplexusGym.center.longitude = -1.581800; //implexus gym
    ImplexusGym.center.latitude = 53.799068;
    
    ImplexusGym.span.latitudeDelta = 1.0f;
    ImplexusGym.span.longitudeDelta = 1.0f;
    
    [_GymMapView setRegion:ImplexusGym animated:YES];
    
    GymPins *firstgym = [[GymPins alloc] init];
    
    firstgym.gymName = @"The Gym";
    firstgym.gymStreet = @"Pickering Street";
    firstgym.coordinate = ImplexusGym.center;
    
    [_GymMapView addAnnotation:firstgym];
    
    
    
    MKCoordinateRegion PureGym = { {0.0, 0.0}, {0.0, 0.0}};
    
    PureGym.center.longitude = -1.540059;
    PureGym.center.latitude = 53.795568;
    
    PureGym.span.latitudeDelta = 0.1f;
    PureGym.span.longitudeDelta = 0.1f;
    
    [_GymMapView setRegion:PureGym animated:YES];
    
    GymPins *secondgym = [[GymPins alloc] init];
    
    secondgym.gymName = @"Pure Gym";
    secondgym.gymStreet = @"Lovell Park Road";
    secondgym.coordinate = PureGym.center;
    
    [_GymMapView addAnnotation:secondgym];
    
    
    
    MKCoordinateRegion SipritGym = { {0.0, 0.0}, {0.0, 0.0}};
    
    SipritGym.center.longitude = -1.557779;
    SipritGym.center.latitude = 53.796568;
    
    SipritGym.span.latitudeDelta = 0.1f;
    SipritGym.span.longitudeDelta = 0.1f;
    
    [_GymMapView setRegion:SipritGym animated:YES];
    
    GymPins *thirdgym = [[GymPins alloc] init];
    
    thirdgym.gymName = @"The Siprit Gym";
    thirdgym.gymStreet = @"Wellington Street";
    thirdgym.coordinate = SipritGym.center;
    
    [_GymMapView addAnnotation:thirdgym];
    
    
    
    MKCoordinateRegion LeodisGym = { {0.0, 0.0}, {0.0, 0.0}};
    
    LeodisGym.center.longitude = -1.516406; //leodis gym
    LeodisGym.center.latitude = 53.791590;
    
    LeodisGym.span.latitudeDelta = 0.1f;
    LeodisGym.span.longitudeDelta = 0.1f;
    
    [_GymMapView setRegion:LeodisGym animated:YES];
    
    GymPins *fourthgym = [[GymPins alloc] init];
    
    fourthgym.gymName = @"The Siprit Gym";
    fourthgym.gymStreet = @"Easy Road";
    fourthgym.coordinate = LeodisGym.center;
    
    [_GymMapView addAnnotation:fourthgym];
    
    
    
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

//this mehtod allows to update my location on the map
- (void)mapView:(MKMapView *)mapView didUpdateUserLocation:(MKUserLocation *)userLocation; {
    
    //use NSLog in order to check that the method is working
    NSLog(@" I am in = %f (latitude), %f (longitude)", userLocation.coordinate.latitude, userLocation.coordinate.longitude);
    
    //create varible  in order to update span and and center of map in order to allow the user to move
    MKCoordinateRegion place = MKCoordinateRegionMake(userLocation.coordinate, MKCoordinateSpanMake(0.15, 0.15));
    
    //showing the updated location on the map by using animated way
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

//this is segment control is added to change the map type
- (IBAction)selectMapType:(id)sender {
    
    //switch statement is used to switch between the different maps
    switch (((UISegmentedControl *)sender).selectedSegmentIndex) {
        case 0: // first case represents standard map
            
            NSLog(@"Standard Map"); // just for checking if it works
            
            _GymMapView.mapType = MKMapTypeStandard; // set the map to standard
            
            break; // break point to allow change map type
            
        case 1: // second case represents satellite map
            
            NSLog(@"Satellite Map"); // just for checking if it works
            
            _GymMapView.mapType = MKMapTypeSatellite; // set the map to satellite
            
            break; // break point to allow change map type
            
        case 2: // third case represents hybrid map
            
            NSLog(@"Hybrid Map"); // just for checking if it works
            
            _GymMapView.mapType = MKMapTypeHybrid; // set the map to hybrid
            
            break; // break point to allow change map type
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

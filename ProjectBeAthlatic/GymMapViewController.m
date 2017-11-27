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
    
    ImplexusGym.center.longitude = -1.581800; //set the longitude
    ImplexusGym.center.latitude = 53.799068; //set the latitude
    
    ImplexusGym.span.latitudeDelta = 0.1f;
    ImplexusGym.span.longitudeDelta = 0.1f;
    
    [_GymMapView setRegion:ImplexusGym animated:YES];
    
    GymPins *firstgym = [[GymPins alloc] init]; //create object for the first gym to set its information
    
    firstgym.gymName = @"The Implexus Gym"; //set gym name
    firstgym.gymStreet = @"Pickering Street"; //set the street for the gym
    firstgym.coordinate = ImplexusGym.center; //set its location by using longitude and latitude
    
    [_GymMapView addAnnotation:firstgym]; //add the gym as pin
    
    
    
    MKCoordinateRegion PureGym = { {0.0, 0.0}, {0.0, 0.0}};
    
    PureGym.center.longitude = -1.540059; //set the longitude
    PureGym.center.latitude = 53.795568; //set the latitude
    
    PureGym.span.latitudeDelta = 0.1f;
    PureGym.span.longitudeDelta = 0.1f;
    
    [_GymMapView setRegion:PureGym animated:YES];
    
    GymPins *secondgym = [[GymPins alloc] init]; //create object for the second gym to set its information
    
    secondgym.gymName = @"Pure Gym"; //set gym name
    secondgym.gymStreet = @"Cloth Hall Street"; //set the street for the gym
    secondgym.coordinate = PureGym.center; //set its location by using longitude and latitude
    
    [_GymMapView addAnnotation:secondgym]; //add the gym as pin
    
    
    
    MKCoordinateRegion SipritGym = { {0.0, 0.0}, {0.0, 0.0}};
    
    SipritGym.center.longitude = -1.557779; //set the longitude
    SipritGym.center.latitude = 53.796568; //set the latitude
    
    SipritGym.span.latitudeDelta = 0.1f;
    SipritGym.span.longitudeDelta = 0.1f;
    
    [_GymMapView setRegion:SipritGym animated:YES];
    
    GymPins *thirdgym = [[GymPins alloc] init]; //create object for the third gym to set its information
    
    thirdgym.gymName = @"The Siprit Gym"; //set gym name
    thirdgym.gymStreet = @"Wellington Street"; //set the street for the gym
    thirdgym.coordinate = SipritGym.center; //set its location by using longitude and latitude
    
    [_GymMapView addAnnotation:thirdgym]; //add the gym as pin
    
    
    
    MKCoordinateRegion LeodisGym = { {0.0, 0.0}, {0.0, 0.0}};
    
    LeodisGym.center.longitude = -1.516406; //set the longitude
    LeodisGym.center.latitude = 53.791590; //set the latitude
    
    LeodisGym.span.latitudeDelta = 0.1f;
    LeodisGym.span.longitudeDelta = 0.1f;
    
    [_GymMapView setRegion:LeodisGym animated:YES];
    
    GymPins *fourthgym = [[GymPins alloc] init]; //create object for the fourth gym to set its information
    
    fourthgym.gymName = @"The Leodis Gym"; //set gym name
    fourthgym.gymStreet = @"Easy Road"; //set the street for the gym
    fourthgym.coordinate = LeodisGym.center; //set its location by using longitude and latitude
    
    [_GymMapView addAnnotation:fourthgym]; //add the gym as pin
    
    
    
    self.Mylocation = [[CLLocationManager alloc] init]; //create an object for my location
    
    self.GymMapView.delegate = self; //tell the GymMapView to use a controller as its delegate
    self.Mylocation.delegate = self; //tell the Mylocation to use a controller as its delegate
    
    [self.Mylocation requestWhenInUseAuthorization]; // request to show my location on the map
    
    self.GymMapView.showsUserLocation = YES; // show my location on the map
    
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

// this button shows direction to Implexus Gym
- (IBAction)ToTheGym:(id)sender {
    
    NSLog(@"Show direction to Implexus Gym"); // just for checking if it works
    
    // use apple map, and set the longitude latitude
    NSString *way = @"http://maps.apple.com/maps?daddr=53.799068,-1.581800";
    //this command open URL in order to get the direction
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:way]];
    
}

// this button shows direction to Pure Gym
- (IBAction)ToPureGym:(id)sender {
    
    NSLog(@"Show direction to Pure Gym"); // just for checking if it works
    
    // use apple map, and set the longitude latitude
    NSString *way = @"http://maps.apple.com/maps?daddr=53.795568,-1.540059";
    //this command open URL in order to get the direction
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:way]];
    
    
}

// this button shows direction to Siprit Gym
- (IBAction)ToSipritGym:(id)sender {
    
    NSLog(@"Show direction to Siprit Gym"); // just for checking if it works
    
    // use apple map, and set the longitude latitude
    NSString *way = @"http://maps.apple.com/maps?daddr=53.796568,-1.557779";
    //this command open URL in order to get the direction
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:way]];
    
}

// this button shows direction to Leodis Gym
- (IBAction)ToNuffieldGym:(id)sender {
    
    NSLog(@"Show direction to Leodis Gym"); // just for checking if it works
    
    // use apple map, and set the longitude latitude
    NSString *way = @"http://maps.apple.com/maps?daddr=53.791590,-1.516406";
    //this command open URL in order to get the direction
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:way]];
    
}
@end

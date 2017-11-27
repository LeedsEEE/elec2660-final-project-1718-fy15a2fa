//
//  PHMapViewController.m
//  ProjectBeAthlatic
//
//  Created by Ahmad Alotaibi on 27/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import "PHMapViewController.h"

@interface PHMapViewController ()

@end

@implementation PHMapViewController

#pragma mark viewDidLoad method

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    // adding the location for The Leeds Sport Injury and Physiotherapy Clinic to show it on the map
    MKCoordinateRegion LeedsClinic = { {0.0, 0.0}, {0.0, 0.0}};
    
    LeedsClinic.center.longitude = -1.576782; //set the longitude
    LeedsClinic.center.latitude = 53.821056; //set the latitude
    
    LeedsClinic.span.latitudeDelta = 0.1f;
    LeedsClinic.span.longitudeDelta = 0.1f;
    
    [_PHMapView setRegion:LeedsClinic animated:YES];
    
    PhysicalTherapyPins *firstPhysicalTherapyC = [[PhysicalTherapyPins alloc] init]; //create object for the first gym to set its information
    
    firstPhysicalTherapyC.PhysicalTherapyName = @"Leeds Sport injury Clinic"; //set physical therapy center name
    firstPhysicalTherapyC.PhysicalTherapyStreet = @"Shire Oak Street"; //set a street name for the physiscal therapy center
    firstPhysicalTherapyC.coordinate = LeedsClinic.center; //set its location by using longitude and latitude
    
    [_PHMapView addAnnotation:firstPhysicalTherapyC]; //add the physical therapy center as pin
    
    
    
    // adding the location for West Yorkshire Multiple Sclerosis Center to show it on the map
    MKCoordinateRegion WestYorkshireTherapy = { {0.0, 0.0}, {0.0, 0.0}};
    
    WestYorkshireTherapy.center.longitude = -1.578856; //set the longitude
    WestYorkshireTherapy.center.latitude = 53.782439; //set the latitude
    
    WestYorkshireTherapy.span.latitudeDelta = 0.1f;
    WestYorkshireTherapy.span.longitudeDelta = 0.1f;
    
    [_PHMapView setRegion:WestYorkshireTherapy animated:YES];
    
    PhysicalTherapyPins *secondPhysicalTherapyC = [[PhysicalTherapyPins alloc] init]; //create object for the first gym to set its information
    
    secondPhysicalTherapyC.PhysicalTherapyName = @"West Yorkshire Therapy Center"; //set physical therapy center name
    secondPhysicalTherapyC.PhysicalTherapyStreet = @"Gelderd Lane"; //set a street name for the physiscal therapy center
    secondPhysicalTherapyC.coordinate = WestYorkshireTherapy.center; //set its location by using longitude and latitude
    
    [_PHMapView addAnnotation:secondPhysicalTherapyC]; //add the physical therapy center as pin
    
    
    
    // adding the location for The West Point Practice-Leeds center to show it on the map
    MKCoordinateRegion TheWestPointPracticeLeeds = { {0.0, 0.0}, {0.0, 0.0}};
    
    TheWestPointPracticeLeeds.center.longitude = -1.556010; //set the longitude
    TheWestPointPracticeLeeds.center.latitude = 53.797345; //set the latitude
    
    TheWestPointPracticeLeeds.span.latitudeDelta = 0.1f;
    TheWestPointPracticeLeeds.span.longitudeDelta = 0.1f;
    
    [_PHMapView setRegion:TheWestPointPracticeLeeds animated:YES];
    
    PhysicalTherapyPins *thirdPhysicalTherapyC = [[PhysicalTherapyPins alloc] init]; //create object for the first gym to set its information
    
    thirdPhysicalTherapyC.PhysicalTherapyName = @"The West Point Practice"; //set physical therapy center name
    thirdPhysicalTherapyC.PhysicalTherapyStreet = @"Wellington Street"; //set a street name for the physiscal therapy center
    thirdPhysicalTherapyC.coordinate = TheWestPointPracticeLeeds.center; //set its location by using longitude and latitude
    
    [_PHMapView addAnnotation:thirdPhysicalTherapyC]; //add the physical therapy center as pin
    
    
    
    // adding the location for PhysionWorld Leeds center to show it on the map
        MKCoordinateRegion PhysioWorldLeeds = { {0.0, 0.0}, {0.0, 0.0}};
    
    PhysioWorldLeeds.center.longitude = -1.552551; //set the longitude
    PhysioWorldLeeds.center.latitude = 53.780848; //set the latitude
    
    PhysioWorldLeeds.span.latitudeDelta = 0.1f;
    PhysioWorldLeeds.span.longitudeDelta = 0.1f;
    
    [_PHMapView setRegion:PhysioWorldLeeds animated:YES];
    
    PhysicalTherapyPins *fourthPhysicalTherapyC = [[PhysicalTherapyPins alloc] init]; //create object for the first gym to set its information
    
    fourthPhysicalTherapyC.PhysicalTherapyName = @"PhysioWorld Leeds"; //set physical therapy center name
    fourthPhysicalTherapyC.PhysicalTherapyStreet = @"Beeston Road"; //set a street name for the physiscal therapy center
    fourthPhysicalTherapyC.coordinate = PhysioWorldLeeds.center; //set its location by using longitude and latitude
    
    [_PHMapView addAnnotation:fourthPhysicalTherapyC]; //add the physical therapy center as pin
    
    
    
    self.Mylocation = [[CLLocationManager alloc] init]; //create an object for my location
    
    self.PHMapView.delegate = self; //tell the PHMapView to use a controller as its delegate
    self.Mylocation.delegate = self; //tell the Mylocation to use a controller as its delegate
    
    [self.Mylocation requestWhenInUseAuthorization]; // request to show my location on the map
    
    self.PHMapView.showsUserLocation = YES; // show my location on the map
    
    CLLocation *MeOnMap = self.Mylocation.location;
    CLLocationCoordinate2D MyCoordinates = MeOnMap.coordinate;
    self.PHMapView.region = MKCoordinateRegionMake(MyCoordinates, MKCoordinateSpanMake(0.02, 0.02));
    
    
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
    [self.PHMapView setRegion:place animated: YES];
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

#pragma mark segmented control

//this is segment control is added to change the map type
- (IBAction)selecteMapTypes:(id)sender {
    
    //switch statement is used to switch between the different maps
    switch (((UISegmentedControl *)sender).selectedSegmentIndex) {
        case 0: // first case represents standard map
            
            NSLog(@"Standard Map"); // just for checking if it works
            
           _PHMapView.mapType = MKMapTypeStandard; // set the map to standard
            
            break; // break point to allow change map type
            
        case 1: // second case represents satellite map
            
            NSLog(@"Satellite Map"); // just for checking if it works
            
           _PHMapView.mapType = MKMapTypeSatellite; // set the map to satellite
            
            break; // break point to allow change map type
            
        case 2: // third case represents hybrid map
            
            NSLog(@"Hybrid Map"); // just for checking if it works
            
           _PHMapView.mapType = MKMapTypeHybrid; // set the map to hybrid
            
            break; // break point to allow change map type
        default:
            break;
    }
    
}

#pragma mark buttons

// this button shows direction to Phoenix Health and Wallbeing Center
- (IBAction)ToPhoenixCenter:(id)sender {
    
    NSLog(@"Show direction to Phoenix Center"); // just for checking if it works
    
}

// this button shows direction to West Yorkshire Multiple Sclerosis Therapy Center
- (IBAction)ToWYCenter:(id)sender {
    
    NSLog(@"Show direction to West YorkShire Center"); // just for checking if it works
    
}

// this button shows direction to The West Point Practice Center
- (IBAction)ToWestPCenter:(id)sender {
    
    NSLog(@"Show direction to The West Point Center"); // just for checking if it works
    
}

// this button shows direction to PhysioWorld Center
- (IBAction)ToPWCenter:(id)sender {
    
    NSLog(@"Show direction to PhysioWorld Center"); // just for checking if it works
    
}
@end
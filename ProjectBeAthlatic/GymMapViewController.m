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

#pragma mark View method

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    self.navigationItem.title = @"Gym Map"; //add a title
    
    
    // I chose four of the best gyms in Leeds, and I made sure that all of them in approximately in the center of Leeds near my residence (LS1 2FH)
    // my residence's longitude is(-1.554237) and latitude is (53.798416)
    
    //I toke this small part about pins from Jaffrey App Channel on youtube
    //https://www.youtube.com/watch?v=sKnHZQPtpjE
    
    
    // adding the location for the Implexus Gym to show it on the map
    MKCoordinateRegion ImplexusGym = { {0.0, 0.0}, {0.0, 0.0}};
    
    ImplexusGym.center.longitude = -1.581800; //set the longitude
    ImplexusGym.center.latitude = 53.799068; //set the latitude
    
    // making span on latitude and longtidue
    ImplexusGym.span.latitudeDelta = 0.02f;
    ImplexusGym.span.longitudeDelta = 0.02f;
    
    [_GymMapView setRegion:ImplexusGym animated:YES];
    
    GymPins *firstgym = [[GymPins alloc] init]; //create object for the first gym to set its information
    
    firstgym.title = @"The Implexus Gym"; //set gym name
    firstgym.subtitle = @"Pickering Street"; //set a street name for the gym (appears when pin is cliked)
    firstgym.coordinate = ImplexusGym.center; //set its location by using longitude and latitude
    
    [_GymMapView addAnnotation:firstgym]; //add the gym as pin
    
    
    // adding the location for Motive8 North Gym to show it on the map
    MKCoordinateRegion MotiveNorth = { {0.0, 0.0}, {0.0, 0.0}};
    
    MotiveNorth.center.longitude = -1.553990; //set the longitude
    MotiveNorth.center.latitude = 53.791053; //set the latitude
    
    // making span on latitude and longtidue
    MotiveNorth.span.latitudeDelta = 0.02f;
    MotiveNorth.span.longitudeDelta = 0.02f;
    
    [_GymMapView setRegion:MotiveNorth animated:YES];
    
    GymPins *secondgym = [[GymPins alloc] init]; //create object for the second gym to set its information
    
    secondgym.title = @"Motive8 North"; //set gym name
    secondgym.subtitle = @"Marshal Street"; //set a street name for the gym (appears when pin is cliked)
    secondgym.coordinate = MotiveNorth.center; //set its location by using longitude and latitude
    
    [_GymMapView addAnnotation:secondgym]; //add the gym as pin
    
    
    // adding the location for The Edge to show it on the map
    MKCoordinateRegion TheEdge = { {0.0, 0.0}, {0.0, 0.0}};
    
    TheEdge.center.longitude = -1.553392; //set the longitude
    TheEdge.center.latitude = 53.804216; //set the latitude
    
    // making span on latitude and longtidue
    TheEdge.span.latitudeDelta = 0.02f;
    TheEdge.span.longitudeDelta = 0.02f;
    
    [_GymMapView setRegion:TheEdge animated:YES];
    
    GymPins *thirdgym = [[GymPins alloc] init]; //create object for the third gym to set its information
    
    thirdgym.title = @"The Edge"; //set gym name
    thirdgym.subtitle = @"Willow Terrace Road"; //set a street name for the gym (appears when pin is cliked)
    thirdgym.coordinate = TheEdge.center; //set its location by using longitude and latitude
    
    [_GymMapView addAnnotation:thirdgym]; //add the gym as pin
    
    
    // adding the location for Leodis Gym to show it on the map
    MKCoordinateRegion LeodisGym = { {0.0, 0.0}, {0.0, 0.0}};
    
    LeodisGym.center.longitude = -1.516406; //set the longitude
    LeodisGym.center.latitude = 53.791590; //set the latitude
    
    // making span on latitude and longtidue
    LeodisGym.span.latitudeDelta = 0.02f;
    LeodisGym.span.longitudeDelta = 0.02f;
    
    [_GymMapView setRegion:LeodisGym animated:YES];
    
    GymPins *fourthgym = [[GymPins alloc] init]; //create object for the fourth gym to set its information
    
    fourthgym.title = @"Leodis Gym"; //set gym name
    fourthgym.subtitle = @"Easy Road"; //set a street name for the gym (appears when pin is cliked)
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



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark  Updated User Location Method

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

#pragma mark Segmented Control

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

#pragma mark buttons to Show Directions

// this button shows direction to Implexus Gym
- (IBAction)ToTheGym:(id)sender {
    
    NSLog(@"Show direction to Implexus Gym"); // just for checking if it works
    
    
    // I added UIAlertController in order to the user chance to cancel finding the route for one of the gyms
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"Do you want to go to Implexus Gym ?" message:@"Press OK to go" preferredStyle:UIAlertControllerStyleAlert];
    
    // create cancel button in the UIAlertController
    UIAlertAction *cancelAction = [UIAlertAction
                                   actionWithTitle:@"Cancel"
                                   style:UIAlertActionStyleCancel
                                   handler:^(UIAlertAction *action){
                                       
                                       NSLog(@"Cancel"); //Using NSLog to check if cancel action work
                                       
                                   }];
    
    // create OK button in the UIAlertController
    UIAlertAction *OKAction = [UIAlertAction
                               actionWithTitle:@"OK"
                               style:UIAlertActionStyleDefault
                               handler:^(UIAlertAction *action) {
                                   
                                   NSLog(@"OK"); //Using NSLog to check if OK action work
                                   
                                   
                                   //I toke this small part from Jaffrey App Channel on youtube
                                   //https://www.youtube.com/watch?v=A-_m-zIzc2M

                                  
                                   // use apple map, and set the longitude latitude
                                   NSString *way = @"http://maps.apple.com/maps?daddr=53.799068,-1.581800";
                                   //this command open URL in order to get the direction
                                   [[UIApplication sharedApplication] openURL:[NSURL URLWithString:way]];
                                   
                               }];
    
    [alertController addAction:cancelAction]; // add cancel action to UIAlertController
    [alertController addAction:OKAction]; // add OK action to UIAlertController
    [self presentViewController:alertController animated:YES completion:nil]; // show the alet to the users
    
    
}

// this button shows direction to Motive8 North
- (IBAction)ToPureGym:(id)sender {
    
    NSLog(@"Show direction to Motive8 North"); // just for checking if it works
    
    
    // I added UIAlertController in order to the user chance to cancel finding the route for one of the gyms
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"Do you want to go to Motive8 North Gym ?" message:@"Press OK to go" preferredStyle:UIAlertControllerStyleAlert];
    
    // create cancel button in the UIAlertController
    UIAlertAction *cancelAction = [UIAlertAction
                                   actionWithTitle:@"Cancel"
                                   style:UIAlertActionStyleCancel
                                   handler:^(UIAlertAction *action){
                                       
                                       NSLog(@"Cancel"); //Using NSLog to check if cancel action work
                                       
                                   }];
    
    // create OK button in the UIAlertController
    UIAlertAction *OKAction = [UIAlertAction
                               actionWithTitle:@"OK"
                               style:UIAlertActionStyleDefault
                               handler:^(UIAlertAction *action) {
                                   
                                   NSLog(@"OK"); //Using NSLog to check if OK action work
                                   
                                   //I toke this small part from Jaffrey App Channel on youtube
                                   //https://www.youtube.com/watch?v=A-_m-zIzc2M
                                   
                                   
                                   // use apple map, and set the longitude latitude
                                   NSString *way = @"http://maps.apple.com/maps?daddr=53.795568,-1.540059";
                                   //this command open URL in order to get the direction
                                   [[UIApplication sharedApplication] openURL:[NSURL URLWithString:way]];
                                   
                               }];
    
    [alertController addAction:cancelAction]; // add cancel action to UIAlertController
    [alertController addAction:OKAction]; // add OK action to UIAlertController
    [self presentViewController:alertController animated:YES completion:nil]; // show the alet to the users
    
    
    
    
}

// this button shows direction to The Edge
- (IBAction)ToSipritGym:(id)sender {
    
    NSLog(@"Show direction to The Edge"); // just for checking if it works
    
    
    // I added UIAlertController in order to the user chance to cancel finding the route for one of the gyms
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"Do you want to go to The Edge ?" message:@"Press OK to go" preferredStyle:UIAlertControllerStyleAlert];
    
    // create cancel button in the UIAlertController
    UIAlertAction *cancelAction = [UIAlertAction
                                   actionWithTitle:@"Cancel"
                                   style:UIAlertActionStyleCancel
                                   handler:^(UIAlertAction *action){
                                       
                                       NSLog(@"Cancel"); //Using NSLog to check if cancel action work
                                       
                                   }];
    
    // create OK button in the UIAlertController
    UIAlertAction *OKAction = [UIAlertAction
                               actionWithTitle:@"OK"
                               style:UIAlertActionStyleDefault
                               handler:^(UIAlertAction *action) {
                                   
                                   NSLog(@"OK"); //Using NSLog to check if OK action work
                                   
                                   //I toke this small part from Jaffrey App Channel on youtube
                                   //https://www.youtube.com/watch?v=A-_m-zIzc2M
                                   
                                   
                                   // use apple map, and set the longitude latitude
                                   NSString *way = @"http://maps.apple.com/maps?daddr=53.796568,-1.557779";
                                   //this command open URL in order to get the direction
                                   [[UIApplication sharedApplication] openURL:[NSURL URLWithString:way]];
                                   
                               }];
    
    [alertController addAction:cancelAction]; // add cancel action to UIAlertController
    [alertController addAction:OKAction]; // add OK action to UIAlertController
    [self presentViewController:alertController animated:YES completion:nil]; // show the alet to the users
    
    
    
}

// this button shows direction to Leodis Gym
- (IBAction)ToNuffieldGym:(id)sender {
    
    NSLog(@"Show direction to Leodis Gym"); // just for checking if it works
    
    // I added UIAlertController in order to the user chance to cancel finding the route for one of the gyms
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"Do you want to go to The Leodis Gym ?" message:@"Press OK to go" preferredStyle:UIAlertControllerStyleAlert];
    
    // create cancel button in the UIAlertController
    UIAlertAction *cancelAction = [UIAlertAction
                                   actionWithTitle:@"Cancel"
                                   style:UIAlertActionStyleCancel
                                   handler:^(UIAlertAction *action){
                                       
                                       NSLog(@"Cancel"); //Using NSLog to check if cancel action work
                                       
                                   }];
    
    // create OK button in the UIAlertController
    UIAlertAction *OKAction = [UIAlertAction
                               actionWithTitle:@"OK"
                               style:UIAlertActionStyleDefault
                               handler:^(UIAlertAction *action) {
                                   
                                   NSLog(@"OK"); //Using NSLog to check if OK action work
                                   
                                   //I toke this small part from Jaffrey App Channel on youtube
                                   //https://www.youtube.com/watch?v=A-_m-zIzc2M
                                   
                                   // use apple map, and set the longitude latitude
                                   NSString *way = @"http://maps.apple.com/maps?daddr=53.791590,-1.516406";
                                   //this command open URL in order to get the direction
                                   [[UIApplication sharedApplication] openURL:[NSURL URLWithString:way]];;
                                   
                               }];
    
    [alertController addAction:cancelAction]; // add cancel action to UIAlertController
    [alertController addAction:OKAction]; // add OK action to UIAlertController
    [self presentViewController:alertController animated:YES completion:nil]; // show the alet to the users
    
    
    
}
@end

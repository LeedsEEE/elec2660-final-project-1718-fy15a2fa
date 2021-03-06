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

#pragma mark View method

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    self.navigationItem.title = @"Physical Therapy Centers Map"; //add a title
    
    
    // I chose four of the best physical therapy centers in Leeds, and I made sure that all of them in approximately in the center of Leeds near my residence (LS1 2FH)
    // my residence's longitude is(-1.554237) and latitude is (53.798416)
    
    //I toke this small part about pins from Jaffrey App Channel on youtube
    //https://www.youtube.com/watch?v=sKnHZQPtpjE
    
    
    // adding the location for The Leeds Sport Injury and Physiotherapy Clinic to show it on the map
    MKCoordinateRegion LeedsClinic = { {0.0, 0.0}, {0.0, 0.0}};
    
    LeedsClinic.center.longitude = -1.576782; //set the longitude
    LeedsClinic.center.latitude = 53.821056; //set the latitude
    
    // making span on latitude and longtidue
    LeedsClinic.span.latitudeDelta = 0.02f;
    LeedsClinic.span.longitudeDelta = 0.02f;
    
    [_PHMapView setRegion:LeedsClinic animated:YES];
    
    PhysicalTherapyPins *firstPhysicalTherapyC = [[PhysicalTherapyPins alloc] init]; //create object for the first gym to set its information
    
    firstPhysicalTherapyC.title = @"Leeds Sport injury Clinic"; //set physical therapy center name
    firstPhysicalTherapyC.subtitle = @"Shire Oak Street"; //set a street name for the physiscal therapy center (appears when pin is cliked)
    firstPhysicalTherapyC.coordinate = LeedsClinic.center; //set its location by using longitude and latitude
    
    [_PHMapView addAnnotation:firstPhysicalTherapyC]; //add the physical therapy center as pin
    
    
    
    // adding the location for West Yorkshire Multiple Sclerosis Center to show it on the map
    MKCoordinateRegion WestYorkshireTherapy = { {0.0, 0.0}, {0.0, 0.0}};
    
    WestYorkshireTherapy.center.longitude = -1.578856; //set the longitude
    WestYorkshireTherapy.center.latitude = 53.782439; //set the latitude
    
    // making span on latitude and longtidue
    WestYorkshireTherapy.span.latitudeDelta = 0.02f;
    WestYorkshireTherapy.span.longitudeDelta = 0.02f;
    
    [_PHMapView setRegion:WestYorkshireTherapy animated:YES];
    
    PhysicalTherapyPins *secondPhysicalTherapyC = [[PhysicalTherapyPins alloc] init]; //create object for the first gym to set its information
    
    secondPhysicalTherapyC.title = @"West Yorkshire Therapy Center"; //set physical therapy center name
    secondPhysicalTherapyC.subtitle = @"Gelderd Lane"; //set a street name for the physiscal therapy center (appears when pin is cliked)
    secondPhysicalTherapyC.coordinate = WestYorkshireTherapy.center; //set its location by using longitude and latitude
    
    [_PHMapView addAnnotation:secondPhysicalTherapyC]; //add the physical therapy center as pin
    
    
    
    // adding the location for The West Point Practice-Leeds center to show it on the map
    MKCoordinateRegion TheWestPointPracticeLeeds = { {0.0, 0.0}, {0.0, 0.0}};
    
    TheWestPointPracticeLeeds.center.longitude = -1.556010; //set the longitude
    TheWestPointPracticeLeeds.center.latitude = 53.797345; //set the latitude
    
    // making span on latitude and longtidue
    TheWestPointPracticeLeeds.span.latitudeDelta = 0.02f;
    TheWestPointPracticeLeeds.span.longitudeDelta = 0.02f;
    
    [_PHMapView setRegion:TheWestPointPracticeLeeds animated:YES];
    
    PhysicalTherapyPins *thirdPhysicalTherapyC = [[PhysicalTherapyPins alloc] init]; //create object for the first gym to set its information
    
    thirdPhysicalTherapyC.title = @"The West Point Practice"; //set physical therapy center name
    thirdPhysicalTherapyC.subtitle = @"Wellington Street"; //set a street name for the physiscal therapy center (appears when pin is cliked)
    thirdPhysicalTherapyC.coordinate = TheWestPointPracticeLeeds.center; //set its location by using longitude and latitude
    
    [_PHMapView addAnnotation:thirdPhysicalTherapyC]; //add the physical therapy center as pin
    
    
    
    // adding the location for PhysionWorld Leeds center to show it on the map
        MKCoordinateRegion PhysioWorldLeeds = { {0.0, 0.0}, {0.0, 0.0}};
    
    PhysioWorldLeeds.center.longitude = -1.552551; //set the longitude
    PhysioWorldLeeds.center.latitude = 53.780848; //set the latitude
    
    // making span on latitude and longtidue
    PhysioWorldLeeds.span.latitudeDelta = 0.02f;
    PhysioWorldLeeds.span.longitudeDelta = 0.02f;
    
    [_PHMapView setRegion:PhysioWorldLeeds animated:YES];
    
    PhysicalTherapyPins *fourthPhysicalTherapyC = [[PhysicalTherapyPins alloc] init]; //create object for the first gym to set its information
    
    fourthPhysicalTherapyC.title = @"PhysioWorld Leeds"; //set physical therapy center name
    fourthPhysicalTherapyC.subtitle = @"Beeston Road"; //set a street name for the physiscal therapy center (appears when pin is cliked)
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


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark Updated User Location Method

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

#pragma mark Segmented Control

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

#pragma mark buttons to Show Directions

// this button shows direction to Leeds Sport Injury Clinic and Wallbeing Center
- (IBAction)ToPhoenixCenter:(id)sender {
    
    NSLog(@"Show direction to Leeds Sport Injury Clinic"); // just for checking if it works
    
    
    // I added UIAlertController in order to the user chance to cancel finding the route for one of the gyms
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"Do you want to go to Leeds Sport Injury Clinic and Wallbeing Center?" message:@"Press OK to go" preferredStyle:UIAlertControllerStyleAlert];
    
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
                                   NSString *way = @"http://maps.apple.com/maps?daddr=53.821056,-1.576782";
                                   //this command open URL in order to get the direction
                                   [[UIApplication sharedApplication] openURL:[NSURL URLWithString:way]];
                                   
                               }];
    
    [alertController addAction:cancelAction]; // add cancel action to UIAlertController
    [alertController addAction:OKAction]; // add OK action to UIAlertController
    [self presentViewController:alertController animated:YES completion:nil]; // show the alet to the users
    
   
    
}

// this button shows direction to West Yorkshire Multiple Sclerosis Therapy Center
- (IBAction)ToWYCenter:(id)sender {
    
    NSLog(@"Show direction to West YorkShire Center"); // just for checking if it works
    
    
    // I added UIAlertController in order to the user chance to cancel finding the route for one of the gyms
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"Do you want to go to West Yorkshire Multiple Sclerosis Therapy Center?" message:@"Press OK to go" preferredStyle:UIAlertControllerStyleAlert];
    
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
                                   NSString *way = @"http://maps.apple.com/maps?daddr=53.782439,-1.578856";
                                   //this command open URL in order to get the direction
                                   [[UIApplication sharedApplication] openURL:[NSURL URLWithString:way]];
                                   
                               }];
    
    [alertController addAction:cancelAction]; // add cancel action to UIAlertController
    [alertController addAction:OKAction]; // add OK action to UIAlertController
    [self presentViewController:alertController animated:YES completion:nil]; // show the alet to the users
    
    
    
}

// this button shows direction to The West Point Practice Center
- (IBAction)ToWestPCenter:(id)sender {
    
    NSLog(@"Show direction to The West Point Center"); // just for checking if it works
    
    
    // I added UIAlertController in order to the user chance to cancel finding the route for one of the gyms
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"Do you want to go to The West Point Practice Center?" message:@"Press OK to go" preferredStyle:UIAlertControllerStyleAlert];
    
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
                                   NSString *way = @"http://maps.apple.com/maps?daddr=53.797345,-1.556010";
                                   //this command open URL in order to get the direction
                                   [[UIApplication sharedApplication] openURL:[NSURL URLWithString:way]];
                                   
                               }];
    
    [alertController addAction:cancelAction]; // add cancel action to UIAlertController
    [alertController addAction:OKAction]; // add OK action to UIAlertController
    [self presentViewController:alertController animated:YES completion:nil]; // show the alet to the users
    
    
    
}

// this button shows direction to PhysioWorld Center
- (IBAction)ToPWCenter:(id)sender {
    
    NSLog(@"Show direction to PhysioWorld Center"); // just for checking if it works
    
    
    // I added UIAlertController in order to the user chance to cancel finding the route for one of the gyms
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"Do you want to go to PhysioWorld Center?" message:@"Press OK to go" preferredStyle:UIAlertControllerStyleAlert];
    
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
                                   NSString *way = @"http://maps.apple.com/maps?daddr=53.780848,-1.552551";
                                   //this command open URL in order to get the direction
                                   [[UIApplication sharedApplication] openURL:[NSURL URLWithString:way]];
                                   
                               }];
    
    [alertController addAction:cancelAction]; // add cancel action to UIAlertController
    [alertController addAction:OKAction]; // add OK action to UIAlertController
    [self presentViewController:alertController animated:YES completion:nil]; // show the alet to the users
    
   
    
}
@end

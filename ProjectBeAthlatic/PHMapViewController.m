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

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)selecteMapTypes:(id)sender {
}

- (IBAction)ToPhoenixCenter:(id)sender {
}

- (IBAction)ToWYCenter:(id)sender {
}

- (IBAction)ToWestPCenter:(id)sender {
}

- (IBAction)ToPWCenter:(id)sender {
}
@end

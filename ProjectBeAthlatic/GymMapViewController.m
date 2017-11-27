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

- (IBAction)selectMapType:(id)sender {
    
    switch (((UISegmentedControl *)sender).selectedSegmentIndex) {
        case 0:
            
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

- (IBAction)ToTheGym:(id)sender {
}

- (IBAction)ToPureGym:(id)sender {
}

- (IBAction)ToSipritGym:(id)sender {
}

- (IBAction)ToNuffieldGym:(id)sender {
}
@end

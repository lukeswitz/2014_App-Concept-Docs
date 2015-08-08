//
//  FirstViewController.m
//  Week_3
//
//  Created by Luke Switzer on 6/17/13.
//  Copyright (c) 2013 com.fullsail.testApp. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad
{
    
     [super viewDidLoad];
    
 /*   UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Welcome"
                                                    message:@"Please tap the map to get started"
                                                   delegate:nil
                                          cancelButtonTitle:@"OK!"
                                          otherButtonTitles:nil];
    [alert show];

    */
   
	// Do any additional setup after loading the view, typically from a nib.

   

}

-(void)viewWillAppear:(BOOL)animated{
    
   
    
    
}

//Change the location with the user and zoom down to street level

- (void)mapView:(MKMapView *)aMapView didUpdateUserLocation:(MKUserLocation *)aUserLocation {
    MKCoordinateRegion region;
    MKCoordinateSpan span;
    span.latitudeDelta = 0.005;
    span.longitudeDelta = 0.005;
    CLLocationCoordinate2D location;
    location.latitude = aUserLocation.coordinate.latitude;
    location.longitude = aUserLocation.coordinate.longitude;
    region.span = span;
    region.center = location;
    [aMapView setRegion:region animated:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

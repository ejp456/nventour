//
//  FirstViewController.m
//  nventour
//
//  Created by Etai Pinckney on 3/4/14.
//  Copyright (c) 2014 Etai Pinckney. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()



@end

@implementation FirstViewController
@synthesize tripImage = imageView;
@synthesize mapView;

- (void)viewDidLoad
{
    [super viewDidLoad];
    UIImage * myImage = [UIImage imageNamed: @"mountains"];
    //self.tripImage = [[UIImageView alloc] initWithImage:myImage];
    self.tripImage.image = myImage;
    [self moveToSelectedPlace];
	// Do any additional setup after loading the view, typically from a nib.
}
-(void)moveToSelectedPlace{
    float latitude = 33.42357962;
    float longitutde = -111.93946123123;
    NSLog(@"This is latitude %.2f", latitude);
    NSLog(@"This is longitude %.2f", longitutde);
    //float lat1 = 33.42357962;
    //float lon1 = -111.93946123123;
    CLLocationCoordinate2D center = CLLocationCoordinate2DMake(latitude, longitutde);
    
    MKCoordinateSpan span = MKCoordinateSpanMake(0.01 ,0.01);
    
    MKCoordinateRegion newRegion = MKCoordinateRegionMake(center, span);
    
    [self.mapView setRegion:newRegion animated:YES];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

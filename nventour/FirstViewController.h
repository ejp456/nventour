//
//  FirstViewController.h
//  nventour
//
//  Created by Etai Pinckney on 3/4/14.
//  Copyright (c) 2014 Etai Pinckney. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@interface FirstViewController : UIViewController{
    UIImageView *imageView;
    
}
@property (strong, nonatomic) IBOutlet UIImageView *tripImage;
@property (weak, nonatomic) IBOutlet MKMapView *mapView;

@end

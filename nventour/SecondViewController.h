//
//  SecondViewController.h
//  nventour
//
//  Created by Etai Pinckney on 3/4/14.
//  Copyright (c) 2014 Etai Pinckney. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SecondViewController : UIViewController<UIImagePickerControllerDelegate, UINavigationControllerDelegate>

@property (strong, nonatomic) IBOutlet UIImageView *ImageView;

-(IBAction)takePhoto:(id)sender;
-(IBAction)selectPhoto:(id)sender;

@end

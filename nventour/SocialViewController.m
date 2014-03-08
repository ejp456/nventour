//
//  CameraViewController.m
//  nventour
//
//  Created by Etai Pinckney on 3/4/14.
//  Copyright (c) 2014 Etai Pinckney. All rights reserved.
//

#import "SocialViewController.h"

@interface SocialViewController ()

@end

@implementation SocialViewController

@synthesize profilePicture = profileImage;
- (void)viewDidLoad
{
    [super viewDidLoad];
    UIImage * myImage = [UIImage imageNamed: @"mountains"];
    //self.tripImage = [[UIImageView alloc] initWithImage:myImage];
    self.profilePicture.image = myImage;
	// Do any additional setup after loading the view, typically from a nib.
    UITapGestureRecognizer *singleTap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapDetected)];
    singleTap.numberOfTapsRequired = 1;
    self.profilePicture.userInteractionEnabled = YES;
    [self.profilePicture addGestureRecognizer:singleTap];}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        
    }
    return self;
}
-(void)tapDetected{
    NSLog(@"single Tap on imageview");
    UIActionSheet *updateImage = [[UIActionSheet alloc]initWithTitle:@"Update Profile" delegate:self cancelButtonTitle:@"Cancel"
                                              destructiveButtonTitle:nil otherButtonTitles:@"Take Photo",@"Select Photo", nil];
    
    [updateImage showInView:self.view];
    
}
-(void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex{
    NSString *buttonTitle = [actionSheet buttonTitleAtIndex:buttonIndex];
    
    
    if([buttonTitle isEqualToString:@"Take Photo"]){
        [self takePicture];
    }else if([buttonTitle isEqualToString:@"Select Photo"]){
        [self selectPictureFromGallery];
    }
}
-(void)selectPictureFromGallery{
    UIImagePickerController *picker = [[UIImagePickerController alloc] init];
    picker.delegate = self;
    picker.allowsEditing = YES;
    picker.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
    
    [self presentViewController:picker animated:YES completion:NULL];
}
-(void)takePicture{
    UIImagePickerController *picker = [[UIImagePickerController alloc] init];
    picker.delegate = self;
    picker.allowsEditing = YES;
    picker.sourceType = UIImagePickerControllerSourceTypeCamera;
    
    [self presentViewController:picker animated:YES completion:NULL];
    
}
- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info {
    
    UIImage *chosenImage = info[UIImagePickerControllerEditedImage];
    self.profilePicture.image = chosenImage;
    
    [picker dismissViewControllerAnimated:YES completion:NULL];
}
- (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker {
    
    [picker dismissViewControllerAnimated:YES completion:NULL];
    
}
@end

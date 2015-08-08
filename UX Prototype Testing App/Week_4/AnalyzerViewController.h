//
//  AnalyzerViewController.h
//  Week_3
//
//  Created by Luke Switzer on 6/17/13.
//  Copyright (c) 2013 com.fullsail.testApp. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AnalyzerViewController :  UIViewController<UIImagePickerControllerDelegate,UIAlertViewDelegate,UINavigationControllerDelegate>
{
    
    IBOutlet UIButton *cameraButton;
    IBOutlet UIImageView *imageView;
    IBOutlet UIButton *homeButton;
}

-(IBAction)openCamera;
-(IBAction)onSave:(id)sender;
-(IBAction)onClose:(id)sender;
@end

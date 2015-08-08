//
//  AnalyzerViewController.m
//  Week_3
//
//  Created by Luke Switzer on 6/17/13.
//  Copyright (c) 2013 com.fullsail.testApp. All rights reserved.
//

#import "AnalyzerViewController.h"

@interface AnalyzerViewController ()

@end

@implementation AnalyzerViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self
                                                                          action:@selector(dismissTheView)];
    
    [self.view addGestureRecognizer:tap];
    [super viewDidLoad];
    
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)dismissTheView {
    [self dismissViewControllerAnimated:true completion:nil];
}

-(IBAction)openCamera
{
    @try
    {
        UIImagePickerController *picker = [[UIImagePickerController alloc] init];
        picker.sourceType = UIImagePickerControllerSourceTypeCamera;
        picker.delegate = self;
        [self presentViewController:picker animated:true completion:nil];
        
        //Alert for prototype
        
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Task"
                                                        message:@"Move the camera around and capture a picture of the rock wall"
                                                       delegate:nil
                                              cancelButtonTitle:@"OK"
                                              otherButtonTitles:nil];
        [alert show];
        
    }
    @catch (NSException *exception)
    {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"No Camera" message:@"Camera is not available right now " delegate:self cancelButtonTitle:@"Ok" otherButtonTitles:nil];
        [alert show];
    }
}

-(void)imagePickerController:(UIImagePickerController*)picker didFinishPickingMediaWithInfo:(NSDictionary*)info
{
    [picker dismissViewControllerAnimated:NO completion:nil];
    imageView.image=[info objectForKey:@"UIImagePickerControllerOriginalImage"];
}



-(IBAction)onSave:(id)sender{
    
    
    
    
    
    [self dismissViewControllerAnimated:true completion:nil];
    
}


-(IBAction)onClose:(id)sender{
    
    
    [self dismissViewControllerAnimated:true completion:nil];
    
}




@end

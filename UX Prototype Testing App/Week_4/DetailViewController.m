//
//  DetailViewController.m
//  Week_3
//
//  Created by Luke Switzer on 6/17/13.
//  Copyright (c) 2013 com.fullsail.testApp. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

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
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)onSave:(id)sender{
    
    NSLog(@"Saving Route");
    
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Complete"
                                                    message:@"Route Saved!"
                                                   delegate:nil
                                          cancelButtonTitle:@"Okay"
                                          otherButtonTitles:nil];
    [alert show];
    
    [self dismissViewControllerAnimated:true completion:nil];
    
}



//The following methods will hide the keyboard if either a touch happens outside the textfield or the on return

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    UITouch * touch = [touches anyObject];
    if(touch.phase == UITouchPhaseBegan) {   //Thanks to stackoverflow for this line
        [name resignFirstResponder];
        [location resignFirstResponder];
    
        NSLog(@"Hiding Keys");
    }
}


- (BOOL)textFieldShouldReturn:(UITextField*)textField
{
    [textField resignFirstResponder];
    return YES;
     NSLog(@"Hiding Keys");
}



@end



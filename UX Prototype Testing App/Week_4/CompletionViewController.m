//
//  CompletionViewController.m
//  Week_3
//
//  Created by Luke Switzer on 6/17/13.
//  Copyright (c) 2013 com.fullsail.testApp. All rights reserved.
//

#import "CompletionViewController.h"

@interface CompletionViewController ()

@end

@implementation CompletionViewController

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
    
    UIAlertView *alertTwo = [[UIAlertView alloc] initWithTitle:@"Thanks, All Done!"
                                                       message:@"This will show you routes on the wall, stay tuned."
                                                      delegate:nil
                                             cancelButtonTitle:@"OK"
                                             otherButtonTitles:nil];
    
    [alertTwo show];
    
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

-(void)dismissTheView {
    [self dismissViewControllerAnimated:true completion:nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)onSurvey:(id)sender{
    
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString: @"https://docs.google.com/forms/d/12NQ5_SEPFqwIBeVcz8jM1BAupgJ9CcotXngNwHj1I1k/viewform"]];
}

-(IBAction)onClose:(id)sender{
    
    [self dismissViewControllerAnimated:true completion:nil];
}


@end

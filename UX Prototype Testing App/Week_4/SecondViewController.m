//
//  SecondViewController.m
//  Climb Prototype
//
//  Created by Luke Switzer on 6/12/13.
//  Copyright (c) 2013 com.fullsail.testApp. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

static NSString *CellIdentifier = @"CellIdentifier";

- (void)viewDidLoad
{
    //Set up the webview info

    [webView setAlpha:1];
    NSString *urlAddress = @"http://www.rockclimbing.com/routes/North_America/United_States/";
    NSURL *url = [NSURL URLWithString:urlAddress];
    NSURLRequest *requestObj = [NSURLRequest requestWithURL:url];
    [webView loadRequest:requestObj];

    webView.scalesPageToFit = YES;
    
//    webView.frame=self.view.bounds;
    
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self
                                                                          action:@selector(dismissTheView)];
    
    [self.view addGestureRecognizer:tap];
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)tapGesture:(UITapGestureRecognizer*)gesture
{
    
    [searchBarField resignFirstResponder];
    [self.view endEditing:YES];
}
-(void)dismissTheView {
    [self dismissViewControllerAnimated:true completion:nil];
}

- (void)searchBarSearchButtonClicked:(UISearchBar *)searchBar
{
    [searchBar resignFirstResponder];
    [self.view endEditing:YES];
    // Do the search...
    
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Search Function"
                                                    message:@"This will search databases and sort climbs based on your location"
                                                   delegate:nil
                                          cancelButtonTitle:@"OK"
                                          otherButtonTitles:nil];
    [alert show];

    
    
    
    
}

-(IBAction)onClose:(id)sender{
    
    
    [self dismissViewControllerAnimated:true completion:nil];
    NSLog(@"WTF");
}

- (IBAction)detailTap:(UITapGestureRecognizer*)detailTap
{
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Climb Detail View"
                                                    message:@"Selection opens new detail view with map and images of climb"
                                                   delegate:nil
                                          cancelButtonTitle:@"OK"
                                          otherButtonTitles:nil];
    
    NSLog(@"Getting details");
    [alert show];
    
    
    
}




- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 5;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 5;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    // Configure Cell
    UILabel *label = (UILabel *)[cell.contentView viewWithTag:10];
    [label setText:[NSString stringWithFormat:@"Row %i in Section %i", [indexPath row], [indexPath section]]];
    return cell;
}
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    return NO;
}
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    return NO;
}




@end

//
//  SecondViewController.h
//  Week_3
//
//  Created by Luke Switzer on 6/17/13.
//  Copyright (c) 2013 com.fullsail.testApp. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SecondViewController : UIViewController<UISearchBarDelegate,UIAlertViewDelegate,UITableViewDelegate>{
    
    
    IBOutlet UISearchBar *searchBarField;
    IBOutlet UIButton *closeButton;
    IBOutlet UIWebView *webView;
    
    

}
-(IBAction)onClose:(id)sender;
- (IBAction)tapGesture:(UITapGestureRecognizer*)gesture;
- (IBAction)detailTap:(UITapGestureRecognizer*)detailTap;
@end

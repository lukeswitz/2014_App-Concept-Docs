//
//  DetailViewController.h
//  Week_3
//
//  Created by Luke Switzer on 6/17/13.
//  Copyright (c) 2013 com.fullsail.testApp. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController<UITextFieldDelegate>{
    
    IBOutlet UIButton *saveButton;
    IBOutlet UITextField *newTextField;
    IBOutlet UITextField *secondNewTextField;
    
    IBOutlet UITextField *name;
    IBOutlet UITextField *location;
}

-(IBAction)onSave:(id)sender;

@end



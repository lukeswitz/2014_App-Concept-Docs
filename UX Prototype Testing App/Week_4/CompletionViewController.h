//
//  CompletionViewController.h
//  Week_3
//
//  Created by Luke Switzer on 6/17/13.
//  Copyright (c) 2013 com.fullsail.testApp. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CompletionViewController :UIViewController{
    
    IBOutlet UIButton *surveyButton;
    IBOutlet UIButton *closeButton;
}

-(IBAction)onSurvey:(id)sender;
-(IBAction)onClose:(id)sender;
@end

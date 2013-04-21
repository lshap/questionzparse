//
//  JALNewQuestionViewController.h
//  QuestionParse
//
//  Created by Lauren Shapiro on 4/21/13.
//  Copyright (c) 2013 Lauren Shapiro. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface JALNewQuestionViewController : UIViewController <UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITextField *questionTextField;
- (IBAction)addButton:(id)sender;

@end

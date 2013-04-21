//
//  JALNewQuestionViewController.m
//  QuestionParse
//
//  Created by Lauren Shapiro on 4/21/13.
//  Copyright (c) 2013 Lauren Shapiro. All rights reserved.
//

#import "JALNewQuestionViewController.h"
#import <Parse/Parse.h>
@interface JALNewQuestionViewController ()

@end

@implementation JALNewQuestionViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    
    self.questionTextField.delegate = self;
    
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]
                                   initWithTarget:self
                                   action:@selector(dismissKeyboard)];
    
    [self.view addGestureRecognizer:tap];
    [tap setCancelsTouchesInView:NO];
    
    return self;
}

-(void)dismissKeyboard {
    [self.questionTextField resignFirstResponder];
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [self.questionTextField resignFirstResponder];
    return NO;
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


- (IBAction)addButton:(id)sender {
    PFObject* newquestion = [[PFObject alloc]initWithClassName:@"Question"];
    NSString* nequestionString = _questionTextField.text;
    
    [newquestion setObject: nequestionString forKey:@"questionString"];
    [newquestion saveInBackground];
    [self dismissViewControllerAnimated: YES completion: nil];
}
@end

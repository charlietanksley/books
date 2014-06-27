//
//  QuizAppDelegate.h
//  Quiz
//
//  Created by Charlie Tanksley on 6/21/13.
//  Copyright (c) 2013 Charlie Tanksley. All rights reserved.
//

#import <UIKit/UIKit.h>

@class QuizViewController;

@interface QuizAppDelegate : UIResponder <UIApplicationDelegate>
{
    int currentQuestionIndex;
    
    NSMutableArray *questions;
    NSMutableArray *answers;
    
    IBOutlet UILabel *questionField;
    IBOutlet UILabel *answerField;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (strong, nonatomic) QuizViewController *viewController;

- (IBAction)showQuestion:(id)sender;
- (IBAction)showAnswer:(id)sender;
@end

//
//  QuizViewController.h
//  Quiz
//
//  Created by Charlie Tanksley on 6/21/13.
//  Copyright (c) 2013 Charlie Tanksley. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface QuizViewController : UIViewController
- (IBAction)showQuestion:(id)sender;
@property (weak, nonatomic) IBOutlet UILabel *showAnswer;

@end

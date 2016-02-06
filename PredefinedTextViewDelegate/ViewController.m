//
//  ViewController.m
//  PredefinedTextViewDelegate
//
//  Created by Pavankumar Arepu on 04/02/2016.
//  Copyright © 2016 ppam. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    CGRect textViewFrame = CGRectMake(20.0f, 20.0f, 280.0f, 124.0f);
    UITextView *textView = [[UITextView alloc] initWithFrame:textViewFrame];
    textView.backgroundColor = [UIColor greenColor];
    textView.returnKeyType = UIReturnKeyDone;
    [self.view addSubview:textView];
   textView.delegate = self;
    
    
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    NSLog(@"touchesBegan:withEvent:");
    [self.view endEditing:YES];
    [super touchesBegan:touches withEvent:event];
}


#pragma mark - Text View delegates

-(void)textViewDidBeginEditing:(UITextView *)textView{
    NSLog(@"Did begin editing");
}
-(void)textViewDidChange:(UITextView *)textView{
    NSLog(@"Did Change");
    
}
-(void)textViewDidEndEditing:(UITextView *)textView{
    NSLog(@"Did End editing");
    
}
-(BOOL)textViewShouldEndEditing:(UITextView *)textView{
    [textView resignFirstResponder];
    return YES;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

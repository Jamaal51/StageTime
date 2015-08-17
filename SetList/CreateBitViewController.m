//
//  CreateBitViewController.m
//  SetList
//
//  Created by Jamaal Sedayao on 8/16/15.
//  Copyright © 2015 Jamaal Sedayao. All rights reserved.
//

#import "CreateBitViewController.h"
#import "BitModel.h"
#import "SLBit.h"
#import "BitListTableViewController.h"

@interface CreateBitViewController ()

@property (weak, nonatomic) IBOutlet UITextField *bitNameTextField;
@property (weak, nonatomic) IBOutlet UITextView *bitTextView;
@property (nonatomic) BitModel * existingData;
@property (weak, nonatomic) IBOutlet UIButton *createBitButton;

@end

@implementation CreateBitViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.bitNameTextField.delegate = self;
    
    self.existingData = [BitModel bitInstance];
    [self.existingData initializeModel];
    
    
//drag in label and view interface
//in a button action take values and create a new instance of SLBit
// assign values to SLBit properties
// add SLBit to shared instance array
    
}
- (IBAction)createBitTapped:(UIButton *)sender {
    
    SLBit *newJoke = [[SLBit alloc] init];
    
    NSString *bitName = self.bitNameTextField.text;
    NSString *bitText = self.bitTextView.text;
    
    newJoke.name = bitName;
    newJoke.bit = bitText;
    
    NSLog(@"New Bit");
    
    [self.existingData.allBits addObject:newJoke];
    
    
    [self.navigationController popToRootViewControllerAnimated:YES];
    
    
}
- (BOOL) textFieldShouldReturn:(UITextField *)textField {
    
    [textField resignFirstResponder];
    
    NSLog(@"closed text field");
    return YES;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

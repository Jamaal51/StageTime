//
//  ViewController.m
//  SetList
//
//  Created by Jamaal Sedayao on 8/16/15.
//  Copyright © 2015 Jamaal Sedayao. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}
- (IBAction)createBitButtonTapped:(UIButton *)sender {
    
    // create a reference to Main.storyboard
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    
    // create a new instance of UIViewController from our storyboard
    CreateBitViewController *createBitViewController = [storyboard instantiateViewControllerWithIdentifier:@"CreateBitIdentifier"]; //Storyboard ID assigned!!
    
//    createBitViewController.planetArray = [[NSMutableArray alloc]init]; // instantiate at another view from this view
    
//    [planetViewController.planetArray addObjectsFromArray:self.planets];
    
    // tell the UINavigationController to push the new view controller on to the stack
    
    [self.navigationController pushViewController:createBitViewController animated:YES];
    
    
}

@end

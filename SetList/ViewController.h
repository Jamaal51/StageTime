//
//  ViewController.h
//  SetList
//
//  Created by Jamaal Sedayao on 8/16/15.
//  Copyright © 2015 Jamaal Sedayao. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BitListTableViewController.h"
#import "CreateBitViewController.h"

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIImageView *logoImageView;
@property (weak, nonatomic) IBOutlet UIButton *pushToList;
@property (weak, nonatomic) IBOutlet UIButton *pushToCreateBit;

@end


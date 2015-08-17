//
//  BitModel.h
//  SetList
//
//  Created by Jamaal Sedayao on 8/16/15.
//  Copyright © 2015 Jamaal Sedayao. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SLBit.h"

@interface BitModel : NSObject

@property (nonatomic) NSMutableArray * allBits;

- (void) initializeModel;

+ (BitModel *) bitInstance; //method that creates an instance of class

@end

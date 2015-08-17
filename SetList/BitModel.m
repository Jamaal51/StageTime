//
//  BitModel.m
//  SetList
//
//  Created by Jamaal Sedayao on 8/16/15.
//  Copyright © 2015 Jamaal Sedayao. All rights reserved.
//

#import "BitModel.h"

@implementation BitModel

+ (BitModel *) bitInstance{
    
    static dispatch_once_t once;
    static id sharedInstance;
    dispatch_once(&once, ^{
        sharedInstance = [[self alloc] init];
    });
    return sharedInstance;
}

- (void) initializeModel {
    
    if (self.allBits == nil){
        self.allBits = [[NSMutableArray alloc] init];
    } else {
        nil;
    }
}

@end

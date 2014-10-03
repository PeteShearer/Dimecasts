//
//  ObjCMath.m
//  SwiftlyObjectifying
//
//  Created by Peter Shearer on 10/2/14.
//  Copyright (c) 2014 Peter Shearer. All rights reserved.
//

#import "ObjCMath.h"
#import "SwiftlyObjectifying-Swift.h"

@implementation ObjCMath

-(int) SquareAndDouble:(int)aNumber {
    
    SwiftMath *math = [SwiftMath new];
    //SwiftMath *math = [SwiftMath newInstance]; // alternate way
    int interimResult = aNumber * aNumber;
    return [math DoubleIt:interimResult];
    
}

@end

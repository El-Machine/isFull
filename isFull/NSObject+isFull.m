//
//  NSObject+isFull.m
//  Auto
//
//  Created by Alko on 5/5/13.
//  Copyright (c) 2013 company. All rights reserved.
//

#import "NSObject+isFull.h"

@implementation NSObject (isFull)

- (BOOL)isFull
{
    NSAssert([self isMemberOfClass:[NSObject class]],
             @"Subclasses should override this method for preventing calling super from NSObject which always returns YES");
    return YES;
}

@end

@implementation NSArray (isFull)

- (BOOL)isFull
{
    return self.count > 0;
}

@end

@implementation NSDictionary (isFull)

- (BOOL)isFull
{
    return self.count > 0;
}

@end

@implementation NSNull (isFull)

- (BOOL)isFull
{
    return NO;
}

@end

@implementation NSNumber (isFull)

- (BOOL)isFull
{
    return [[self stringValue] isFull];
}

@end

@implementation NSString (isFull)

- (BOOL)isFull
{
    return self.length > 0;
}

@end

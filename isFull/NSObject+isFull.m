//
//  NSObject+isFull.h
//
// Created by Alexander Kozin (https://github.com/alkozin al.kozin@gmail.com)
// Copyright (c) 2013
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.

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
    BOOL isFull = fabs([self doubleValue]) > DBL_EPSILON;
    return isFull;
}

@end

@implementation NSOrderedSet (isFull)

- (BOOL)isFull
{
    return self.count > 0;
}

@end

@implementation NSSet (isFull)

- (BOOL)isFull
{
    return self.count > 0;
}

@end

@implementation NSString (isFull)

- (BOOL)isFull
{
    return self.length > 0;
}

@end

@implementation NSURL (isFull)

- (BOOL)isFull
{
    return [[self absoluteString] isFull];
}

@end

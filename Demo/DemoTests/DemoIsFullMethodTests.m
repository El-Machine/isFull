//
//  DemoTests.m
//  DemoTests
//
//  Created by Alko on 25/10/13.
//  Copyright (c) 2013 alkozin. All rights reserved.
//

#import <XCTest/XCTest.h>

#import <isFull.h>


@interface DemoIsFullMethodTests : XCTestCase

@end

@implementation DemoIsFullMethodTests

- (void)testNil
{
    id empty = nil;
    XCTAssertFalse( isFull(empty) , @"Should be empty");
}

- (void)testNSArray
{
    NSArray *empty = @[];
    XCTAssertFalse( [empty isFull] , @"Should be empty");

    NSArray *full = @[@"1", @"2", @"3"];
    XCTAssertTrue( [full isFull] , @"Should be full");
}

- (void)testNSDictionary
{
    NSDictionary *empty = @{};
    XCTAssertTrue( isEmpty(empty) , @"Should be empty");

    NSDictionary *full = @{@"1": @"1",
                           @"2": @"2",
                           @"3": @"3"};
    XCTAssertTrue( isFull(full) , @"Should be full");
}

- (void)testNSNull
{
    NSNull *empty = [NSNull null];
    XCTAssertTrue( isEmpty(empty) , @"Should be empty");
}

- (void)testNSNumber
{
    // zero
    NSNumber *zero = @(0);
    XCTAssertFalse( [zero isFull] , @"Should be empty");

    // char
    NSNumber *charMinNumber = @(CHAR_MIN);
    XCTAssertTrue( [charMinNumber isFull] , @"Should be full");

    NSNumber *charNumber = [NSNumber numberWithChar:-16];
    XCTAssertTrue( [charNumber isFull] , @"Should be full");

    NSNumber *charMaxNumber = @(CHAR_MAX);
    XCTAssertTrue( [charMaxNumber isFull] , @"Should be full");

    // unsigned char
    NSNumber *ucharNumber = [NSNumber numberWithUnsignedChar:16];
    XCTAssertTrue( [ucharNumber isFull] , @"Should be full");

    NSNumber *ucharMaxNumber = @(UCHAR_MAX);
    XCTAssertTrue( [ucharMaxNumber isFull] , @"Should be full");

    // short
    NSNumber *shortMinNumber = @(SHRT_MIN);
    XCTAssertTrue( [shortMinNumber isFull] , @"Should be full");

    NSNumber *shortNumber = [NSNumber numberWithShort:-16];
    XCTAssertTrue( [shortNumber isFull] , @"Should be full");

    NSNumber *shortMaxNumber = @(SHRT_MAX);
    XCTAssertTrue( [shortMaxNumber isFull] , @"Should be full");

    // unsigned short
    NSNumber *ushortNumber = [NSNumber numberWithUnsignedShort:16];
    XCTAssertTrue( [ushortNumber isFull] , @"Should be full");

    NSNumber *ushortMaxNumber = @(USHRT_MAX);
    XCTAssertTrue( [ushortMaxNumber isFull] , @"Should be full");

    // int
    NSNumber *intMinNumber = @(INT_MIN);
    XCTAssertTrue( [intMinNumber isFull] , @"Should be full");

    NSNumber *intNumber = [NSNumber numberWithShort:-16];
    XCTAssertTrue( [intNumber isFull] , @"Should be full");

    NSNumber *intMaxNumber = @(INT_MAX);
    XCTAssertTrue( [intMaxNumber isFull] , @"Should be full");

    // uint
    NSNumber *uintNumber = [NSNumber numberWithShort:16];
    XCTAssertTrue( [uintNumber isFull] , @"Should be full");

    NSNumber *uintMaxNumber = @(UINT_MAX);
    XCTAssertTrue( [uintMaxNumber isFull] , @"Should be full");

    // double
    NSNumber *dblMinNumber = @(DBL_MIN);
    XCTAssertTrue( [dblMinNumber isFull] , @"Should be full");

    NSNumber *dblNumber = [NSNumber numberWithShort:-16.5];
    XCTAssertTrue( [dblNumber isFull] , @"Should be full");

    NSNumber *dblMaxNumber = @(DBL_MAX);
    XCTAssertTrue( [dblMaxNumber isFull] , @"Should be full");

    //float
    NSNumber *fltMinNumber = @(FLT_MIN);
    XCTAssertTrue( [fltMinNumber isFull] , @"Should be full");

    NSNumber *fltNumber = @(-16.5f);
    XCTAssertTrue(  [fltNumber isFull]  , @"Should be full");

    NSNumber *fltMaxNumber = @(FLT_MAX);
    XCTAssertTrue( [fltMaxNumber isFull]  , @"Should be full");
}

- (void)testNSOrderedSet
{
    NSOrderedSet *empty = [NSOrderedSet new];
    XCTAssertTrue( isEmpty(empty) , @"Should be empty");

    NSOrderedSet *full = [[NSOrderedSet alloc] initWithArray:@[@"1",
                                                               @"2",
                                                               @"3"]];
    XCTAssertTrue( isFull(full) , @"Should be full");
}

- (void)testNSSet
{
    NSSet *empty = [NSSet set];
    XCTAssertTrue( isEmpty(empty) , @"Should be empty");

    NSSet *full = [NSSet setWithArray:@[@"1",
                                           @"2",
                                           @"3"]];
    XCTAssertTrue( isFull(full) , @"Should be full");
}

- (void)testNSString
{
    NSString *empty = @"";
    XCTAssertTrue( isEmpty(empty) , @"Should be empty");

    NSString *full = @"3";
    XCTAssertTrue( isFull(full) , @"Should be full");
}

@end

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
    XCTAssertFalse([empty isFull], @"Object should be empty");
}

- (void)testNSArray
{
    NSArray *empty = @[];
    XCTAssertFalse([empty isFull], @"Object should be empty");

    NSArray *full = @[@"1",
                      @"2",
                      @"3"];
    XCTAssertTrue([full isFull], @"Object should be full");
}

- (void)testNSDictionary
{
    NSDictionary *empty = @{};
    XCTAssertFalse([empty isFull], @"Object should be empty");

    NSDictionary *full = @{@"1": @"1",
                           @"2": @"2",
                           @"3": @"3"};
    XCTAssertTrue([full isFull], @"Object should be full");
}

- (void)testNSNull
{
    NSNull *empty = [NSNull null];
    XCTAssertFalse([empty isFull], @"Object should be empty");
}

- (void)testNSNumber
{
    // zero
    NSNumber *zero = @(0);
    XCTAssertFalse([zero isFull], @"Object should be empty");

    // char
    NSNumber *charMinNumber = @(CHAR_MIN);
    XCTAssertTrue([charMinNumber isFull], @"Object should be full");

    NSNumber *charNumber = [NSNumber numberWithChar:-16];
    XCTAssertTrue([charNumber isFull], @"Object should be full");

    NSNumber *charMaxNumber = @(CHAR_MAX);
    XCTAssertTrue([charMaxNumber isFull], @"Object should be full");

    // unsigned char
    NSNumber *ucharNumber = [NSNumber numberWithUnsignedChar:16];
    XCTAssertTrue([ucharNumber isFull], @"Object should be full");

    NSNumber *ucharMaxNumber = @(UCHAR_MAX);
    XCTAssertTrue([ucharMaxNumber isFull], @"Object should be full");

    // short
    NSNumber *shortMinNumber = @(SHRT_MIN);
    XCTAssertTrue([shortMinNumber isFull], @"Object should be full");

    NSNumber *shortNumber = [NSNumber numberWithShort:-16];
    XCTAssertTrue([shortNumber isFull], @"Object should be full");

    NSNumber *shortMaxNumber = @(SHRT_MAX);
    XCTAssertTrue([shortMaxNumber isFull], @"Object should be full");

    // unsigned short
    NSNumber *ushortNumber = [NSNumber numberWithUnsignedShort:16];
    XCTAssertTrue([ushortNumber isFull], @"Object should be full");

    NSNumber *ushortMaxNumber = @(USHRT_MAX);
    XCTAssertTrue([ushortMaxNumber isFull], @"Object should be full");

    // int
    NSNumber *intMinNumber = @(INT_MIN);
    XCTAssertTrue([intMinNumber isFull], @"Object should be full");

    NSNumber *intNumber = [NSNumber numberWithShort:-16];
    XCTAssertTrue([intNumber isFull], @"Object should be full");

    NSNumber *intMaxNumber = @(INT_MAX);
    XCTAssertTrue([intMaxNumber isFull], @"Object should be full");

    // uint

    NSNumber *uintNumber = [NSNumber numberWithShort:16];
    XCTAssertTrue([uintNumber isFull], @"Object should be full");

    NSNumber *uintMaxNumber = @(UINT_MAX);
    XCTAssertTrue([uintMaxNumber isFull], @"Object should be full");

    // double
// TODO: fix wrong behaviour
//    NSNumber *dblMinNumber = @(DBL_MIN);
//    XCTAssertTrue([dblMinNumber isFull], @"Object should be full");

    NSNumber *dblNumber = [NSNumber numberWithShort:-16.5];
    XCTAssertTrue([dblNumber isFull], @"Object should be full");

    NSNumber *dblMaxNumber = @(INT_MAX);
    XCTAssertTrue([dblMaxNumber isFull], @"Object should be full");

    // float
// TODO: fix wrong behaviour
//    NSNumber *fltMinNumber = @(FLT_MIN);
//    XCTAssertTrue([fltMinNumber isFull], @"Object should be full");

    NSNumber *fltNumber = @(-16.5f);
    XCTAssertTrue([fltNumber isFull], @"Object should be full");

    NSNumber *fltMaxNumber = @(FLT_MAX);
    XCTAssertTrue([fltMaxNumber isFull], @"Object should be full");
}

- (void)testNSOrderedSet
{
    NSOrderedSet *empty = [NSOrderedSet new];
    XCTAssertFalse([empty isFull], @"Object should be empty");

    NSOrderedSet *full = [[NSOrderedSet alloc] initWithArray:@[@"1",
                                                               @"2",
                                                               @"3"]];
    XCTAssertTrue([full isFull], @"Object should be full");
}

- (void)testNSSet
{
    NSSet *empty = [NSSet set];
    XCTAssertFalse([empty isFull], @"Object should be empty");

    NSSet *full = [NSSet setWithArray:@[@"1",
                                           @"2",
                                           @"3"]];
    XCTAssertTrue([full isFull], @"Object should be full");
}

- (void)testNSString
{
    NSString *empty = @"";
    XCTAssertFalse([empty isFull], @"Object should be empty");

    NSString *full = @"3";
    XCTAssertTrue([full isFull], @"Object should be full");
}

@end

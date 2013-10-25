//
//  NSObject+isFull.h
//  Auto
//
//  Created by Alko on 5/5/13.
//  Copyright (c) 2013 company. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (isFull)

/**
 Whether the object contains data
 
 @return 'YES' if object contains any data, otherwise 'NO'
 */
- (BOOL)isFull;

@end

//
//  FQQuote.h
//  FrozenQuotes
//
//  Created by Ilya Vinogradov on 2/11/17.
//  Copyright © 2017 Ilya Vinogradov. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FQQuote : NSObject
@property (nonatomic) NSDate *date;
@property (nonatomic) NSString *circumstances;
@property (nonatomic) NSString *quote;

-(instancetype) init;

@end

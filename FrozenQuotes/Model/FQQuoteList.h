//
//  FQQuoteList.h
//  FrozenQuotes
//
//  Created by Ilya Vinogradov on 2/11/17.
//  Copyright © 2017 Ilya Vinogradov. All rights reserved.
//

#import <Foundation/Foundation.h>
@class FQQuote;

@interface FQQuoteList : NSObject
@property(nonatomic) NSMutableArray<FQQuote *> *quotes;
@end

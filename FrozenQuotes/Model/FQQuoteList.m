//
//  FQQuoteList.m
//  FrozenQuotes
//
//  Created by Ilya Vinogradov on 2/11/17.
//  Copyright © 2017 Ilya Vinogradov. All rights reserved.
//

#import "FQQuoteList.h"
#import "FQQuote.h"

@implementation FQQuoteList

-(instancetype) init {
	//TODO: replace scaffolding
	if(self = [super init]) {
		//generate a random number of quotes between 1 and 15
		int numQuotes = arc4random_uniform(15) + 1;
		_quotes = [NSMutableArray arrayWithCapacity:numQuotes];
		for(int index = 0; index< numQuotes; index++) {
			[_quotes addObject:[FQQuote new]];

		}
	}
	return self;
}
@end

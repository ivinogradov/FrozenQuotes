//
//  FQQuote.m
//  FrozenQuotes
//
//  Created by Ilya Vinogradov on 2/11/17.
//  Copyright © 2017 Ilya Vinogradov. All rights reserved.
//

#import "FQQuote.h"
#import <stdlib.h> //FIXME: remove after replaceing scaffolding

@implementation FQQuote

-(instancetype) init {
	if(self = [super init]) {
		//TODO: replace scaffolding code with loading from persistent storage
		_date = [NSDate dateWithTimeIntervalSinceNow:arc4random_uniform(365 * 24 * 60 * 60)];
		_circumstances = @"On a frozen lake";
		_quote = [NSString stringWithFormat:@"Do you wanna build %d snowmans?", arc4random_uniform(100)];
		
	}
	return self;
}
@end

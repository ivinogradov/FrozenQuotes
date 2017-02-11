//
//  FQQuotesTableViewController.m
//  FrozenQuotes
//
//  Created by Ilya Vinogradov on 2/11/17.
//  Copyright © 2017 Ilya Vinogradov. All rights reserved.
//

#import "FQQuotesTableViewController.h"
#import "FQQuoteList.h"
#import "FQQuote.h"

@implementation FQQuotesTableViewController {
	
	FQQuoteList *_quotes;
}

-(void) viewDidLoad {
	[super viewDidLoad];
	_quotes = [FQQuoteList new];
	
}

#pragma mark - tableview datasource
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
	return _quotes.quotes.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
	
	UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"quoteCell"];
	if (cell == nil) {
		cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue2 reuseIdentifier:@"quoteCell"];
	}
	FQQuote *quote = _quotes.quotes[indexPath.row];
	cell.textLabel.text = quote.circumstances;
	cell.detailTextLabel.text = [NSDateFormatter localizedStringFromDate:quote.date dateStyle:NSDateFormatterShortStyle timeStyle:NSDateFormatterShortStyle];
	return cell;
	
}

@end

//
//  FQEditQuoteViewController.m
//  FrozenQuotes
//
//  Created by Ilya Vinogradov on 2/11/17.
//  Copyright © 2017 Ilya Vinogradov. All rights reserved.
//

#import "FQEditQuoteViewController.h"
#import "FQQuote.h"

@interface FQEditQuoteViewController ()
@property (weak, nonatomic) IBOutlet UITextField *dateTextField;
@property (weak, nonatomic) IBOutlet UITextView *circumstancesText;
@property (weak, nonatomic) IBOutlet UITextView *quoteText;
@end

@implementation FQEditQuoteViewController

- (void)viewDidLoad {
    [super viewDidLoad];
	
	_dateTextField.text = [NSDateFormatter localizedStringFromDate:_quote.date dateStyle:NSDateFormatterShortStyle timeStyle:NSDateFormatterNoStyle];
	_circumstancesText.text = _quote.circumstances;
	_quoteText.text = _quote.quote;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

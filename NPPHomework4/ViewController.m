//
//  ViewController.m
//  NPPHomework4
//
//  Created by Nick Peters on 3/2/15.
//  Copyright (c) 2015 Nick Peters. All rights reserved.
//

#import "NPPDataModel.h"
#import "ViewController.h"
#import "WebViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.websites = [[NSMutableArray alloc] initWithCapacity:5];
    
    NPPDataModel *website1 = [[NPPDataModel alloc] initWithName:@"Google" andUrl:@"http://google.com"];
    NPPDataModel *website2 = [[NPPDataModel alloc] initWithName:@"Facebook" andUrl:@"http://facebook.com"];
    NPPDataModel *website3 = [[NPPDataModel alloc] initWithName:@"Twitter" andUrl:@"http://twitter.com"];
    NPPDataModel *website4 = [[NPPDataModel alloc] initWithName:@"YouTube" andUrl:@"https://www.youtube.com/watch?v=_OBlgSz8sSM&spfreload=10"];
    NPPDataModel *website5 = [[NPPDataModel alloc] initWithName:@"Apple" andUrl:@"http://apple.com"];
    
    [self.websites addObject:website1];
    [self.websites addObject:website2];
    [self.websites addObject:website3];
    [self.websites addObject:website4];
    [self.websites addObject:website5];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"showWebView"]) {
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        WebViewController *destViewController = segue.destinationViewController;
        
        NPPDataModel *dataModel = [self.websites objectAtIndex:indexPath.row];
        NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:[dataModel url]]];
        
        destViewController.name = dataModel.name;
        destViewController.request = request;
    }
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [self.websites count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *cellIdentifier = @"WebsiteCell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
                
    cell.textLabel.text = [[self.websites objectAtIndex:indexPath.row] name];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [self.tableView deselectRowAtIndexPath:[self.tableView indexPathForSelectedRow] animated:YES];
}

@end

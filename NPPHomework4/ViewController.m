//
//  ViewController.m
//  NPPHomework4
//
//  Created by Nick Peters on 3/2/15.
//  Copyright (c) 2015 Nick Peters. All rights reserved.
//

#import "NPPDataModel.h"
#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    websites = [[NSMutableArray alloc] initWithCapacity:5];
    
    NPPDataModel *website1 = [[NPPDataModel alloc] initWithName:@"Google" andUrl:@"http://google.com"];
    NPPDataModel *website2 = [[NPPDataModel alloc] initWithName:@"Facebook" andUrl:@"http://facebook.com"];
    NPPDataModel *website3 = [[NPPDataModel alloc] initWithName:@"Twitter" andUrl:@"http://twitter.com"];
    NPPDataModel *website4 = [[NPPDataModel alloc] initWithName:@"YouTube" andUrl:@"http://youtube.com"];
    NPPDataModel *website5 = [[NPPDataModel alloc] initWithName:@"Apple" andUrl:@"http://apple.com"];
    
    [websites addObject:website1];
    [websites addObject:website2];
    [websites addObject:website3];
    [websites addObject:website4];
    [websites addObject:website5];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [websites count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *cellIdentifier = @"WebsiteCell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
                
    cell.textLabel.text = [[websites objectAtIndex:indexPath.row] name];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView
didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    // TODO: Next time
}

@end

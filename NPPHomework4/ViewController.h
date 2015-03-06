//
//  ViewController.h
//  NPPHomework4
//
//  Created by Nick Peters on 3/2/15.
//  Copyright (c) 2015 Nick Peters. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, strong) NSMutableArray *websites;
@property (nonatomic, strong) IBOutlet UITableView *tableView;

@end


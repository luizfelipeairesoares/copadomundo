//
//  TabelaViewController.h
//  copadomundo
//
//  Created by Felipe on 27/04/14.
//  Copyright (c) 2014 luizsoares. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TabelaViewController : UIViewController <UITableViewDataSource, UITableViewDelegate> {
    IBOutlet UITableView *tbl;
}

@property(strong, nonatomic) IBOutlet UIButton *btnGroups;

@end

//
//  TabelaTableViewCell.m
//  copadomundo
//
//  Created by Felipe on 04/05/14.
//  Copyright (c) 2014 luizsoares. All rights reserved.
//

#import "TabelaTableViewCell.h"

@implementation TabelaTableViewCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)awakeFromNib
{
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end

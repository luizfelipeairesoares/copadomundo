//
//  TabelaTableViewCell.h
//  copadomundo
//
//  Created by Felipe on 04/05/14.
//  Copyright (c) 2014 luizsoares. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TabelaTableViewCell : UITableViewCell

@property(strong, nonatomic) IBOutlet UILabel *lblNome;
@property(strong, nonatomic) IBOutlet UILabel *lblPontos;
@property(strong, nonatomic) IBOutlet UILabel *lblJogos;
@property(strong, nonatomic) IBOutlet UILabel *lblSaldo;

@end

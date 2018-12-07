//
//  TableViewCell.m
//  UITableView-FDTemplateLayoutCellDemo
//
//  Created by Yang on 2018/12/7.
//  Copyright © 2018年 Yang. All rights reserved.
//
#import <UIImageView+WebCache.h>
#import "TableViewCell.h"
@interface TableViewCell ()
@property (weak, nonatomic) IBOutlet UIImageView *headerImgView;
@property (weak, nonatomic) IBOutlet UILabel *userName;
@property (weak, nonatomic) IBOutlet UILabel *contentLB;
@property (weak, nonatomic) IBOutlet UILabel *DateTime;

@end
@implementation TableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}
-(void)setModel:(ArticleModel *)model{
    _model=model;
    [self.headerImgView sd_setImageWithURL:[NSURL URLWithString:@"http://192.168.2.63:80//headpic/lifeworld/2018/12/7/d79e9f1357f3422abc2e05998c398276.jpg"]];
    [self.userName setText:@"哈利波特"];
    [self.contentLB setText:@"即便她有如此多的毛病，可我却从未跟班主任提过换一个同桌。她有着好看的皮囊，求爱的男生络绎不绝。她有着开朗的性格，对于流言蜚语总是付诸一笑。她不会因为考得不好而垂头丧气，也不因为老师的批评而存有抵触情绪。她那没心没肺的样子实在是让人讨厌不起来"];

    [self.DateTime setText:@"2018/12/07 17:30"];
}
- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end

//
//  WorkingCell.m
//  云渠道
//
//  Created by xiaoq on 2018/3/15.
//  Copyright © 2018年 xiaoq. All rights reserved.
//

#import "WorkingCell.h"

@implementation WorkingCell
// test


-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        
        _headimg = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@""]];
        _headimg.frame = CGRectMake(10*SIZE, 17*SIZE, 51*SIZE, 51*SIZE);
        _headimg.backgroundColor = [UIColor blueColor];
        [self.contentView addSubview:_headimg];
        _titlelab = [[UILabel alloc]initWithFrame:CGRectMake(77*SIZE, 26*SIZE, 200*SIZE, 15*SIZE)];
        _titlelab.textColor = YJTitleLabColor;
        _titlelab.font = [UIFont boldSystemFontOfSize:14*SIZE];
        [self.contentView addSubview:_titlelab];
        _contentlab = [[UILabel alloc]initWithFrame:CGRectMake(77*SIZE, 45*SIZE, 200*SIZE, 13*SIZE)];
        _contentlab.textColor = YJContentLabColor;
        _contentlab.font =[UIFont systemFontOfSize:12*SIZE];
        [self.contentView addSubview:_contentlab];
        _tagimg = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@""]];
        _tagimg.frame = CGRectMake(343*SIZE, 36*SIZE, 8*SIZE, 12*SIZE);
        _tagimg.backgroundColor = [UIColor redColor];
        [self.contentView addSubview:_tagimg];
        UIView *lane = [[UIView alloc]initWithFrame:CGRectMake(0*SIZE, 83*SIZE, 360*SIZE, 1*SIZE)];
        lane.backgroundColor = YJBackColor;
        [self.contentView addSubview:lane];
    }
    return self;
}
-(void)setTitle:(NSString *)title content:(NSString *)content img:(NSString *)imgname
{
    _titlelab.text = title;
    _contentlab.text = content;
    [_headimg setImage:[UIImage imageNamed:imgname]];
}


@end

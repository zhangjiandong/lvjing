//
//  DonkeySceneTableViewCell.m
//  AiLvGo3
//
//  Created by apple on 15/11/20.
//  Copyright © 2015年 ailvgo. All rights reserved.
//

#import "DonkeySceneTableViewCell.h"

@implementation DonkeySceneTableViewCell

- (void)awakeFromNib {
    _sceneImageView.layer.masksToBounds=YES;
    _sceneImageView.layer.cornerRadius=10;
}
+(instancetype)cellWithTableView:(UITableView *)tableView
{
    static NSString *identifier = @"donkeyScene";
    // 1.缓存中取
    DonkeySceneTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    // 2.创建
    if (cell == nil) {
        cell = [[NSBundle mainBundle]loadNibNamed:@"DonkeySceneTableViewCell" owner:nil options:nil][0];
    }
    [cell setSelectionStyle:UITableViewCellSelectionStyleNone];
    return cell;
    
    
    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end

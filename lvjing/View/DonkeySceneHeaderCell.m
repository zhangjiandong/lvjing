//
//  DonkeySceneHeaderCell.m
//  AiLvGo3
//
//  Created by apple on 15/11/20.
//  Copyright © 2015年 ailvgo. All rights reserved.
//

#import "DonkeySceneHeaderCell.h"

@implementation DonkeySceneHeaderCell

- (void)awakeFromNib {
    // Initialization code
}
+(instancetype)cellWithTableView:(UITableView *)tableView
{
    static NSString *identifier = @"header";
    // 1.缓存中取
    DonkeySceneHeaderCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    // 2.创建
    if (cell == nil) {
        cell = [[NSBundle mainBundle]loadNibNamed:@"DonkeySceneHeaderCell" owner:nil options:nil][0];
    }
    [cell setSelectionStyle:UITableViewCellSelectionStyleNone];
    return cell;

}
-(void)setWeatherDict:(NSDictionary *)weatherDict
{
    _weatherDict=weatherDict;
    _weatherLabel.text=weatherDict[@"weather"];
    _qiwenLabel.text=[NSString stringWithFormat:@"%@/%@℃",weatherDict[@"h_tmp"],weatherDict[@"l_tmp"]];
    _locationLabel.text=weatherDict[@"city"];

}
- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end

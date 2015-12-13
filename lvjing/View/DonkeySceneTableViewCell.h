//
//  DonkeySceneTableViewCell.h
//  AiLvGo3
//
//  Created by apple on 15/11/20.
//  Copyright © 2015年 ailvgo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DonkeySceneTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *sceneImageView;
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *juliLabel;
@property (weak, nonatomic) IBOutlet UIView *zongheView;
@property (weak, nonatomic) IBOutlet UILabel *pingjiLabel;
@property (weak, nonatomic) IBOutlet UILabel *pinglunLabekl;
@property (weak, nonatomic) IBOutlet UILabel *haopingLabel;
+(instancetype)cellWithTableView:(UITableView *)tableView;
@end

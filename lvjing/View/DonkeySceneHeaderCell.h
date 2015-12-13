//
//  DonkeySceneHeaderCell.h
//  AiLvGo3
//
//  Created by apple on 15/11/20.
//  Copyright © 2015年 ailvgo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DonkeySceneHeaderCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *sceneImageView;
@property (weak, nonatomic) IBOutlet UIImageView *cloudImage;
@property (weak, nonatomic) IBOutlet UILabel *weatherLabel;
@property (weak, nonatomic) IBOutlet UILabel *qiwenLabel;
@property (weak, nonatomic) IBOutlet UILabel *locationLabel;
@property (weak, nonatomic) IBOutlet UIButton *gongluoBtn;
@property (weak, nonatomic) IBOutlet UIButton *zixunBtn;
@property (weak, nonatomic) IBOutlet UIButton *youjibtn;
@property (weak, nonatomic) IBOutlet UIButton *zhoubianBtn;
@property (strong,nonatomic) NSDictionary *weatherDict;
+(instancetype)cellWithTableView:(UITableView *)tableView;
@end

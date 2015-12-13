//
//  ViewController.m
//  lvjing
//
//  Created by apple on 15/11/23.
//  Copyright © 2015年 apple. All rights reserved.
//

#import "ViewController.h"
#import "DonkeySceneHeaderCell.h"
#import "DonkeySceneTableViewCell.h"
#import "Common.h"
@interface ViewController ()<UITableViewDataSource,UITableViewDelegate>


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UITableView *table=[[UITableView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height) style:UITableViewStyleGrouped];
    table.delegate=self;
    table.dataSource=self;
    table.bounces=NO;
    table.sectionHeaderHeight=0;
    [self.view addSubview:table];
}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    
    return 1;
}

-(UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{  UIView *view=[[UIView alloc]initWithFrame:CGRectMake(0, 0, kScreenWidth, 60)];
    view.backgroundColor=[UIColor colorWithRed:235/255.0 green:235/255.0 blue:235/255.0 alpha:1.0];
    UIView *sectionHeader=[[UIView alloc]initWithFrame:CGRectMake(0, 10, kScreenWidth, 50)];
    sectionHeader.backgroundColor=[UIColor whiteColor];
    UILabel *label=[[UILabel alloc]initWithFrame:CGRectMake(10, 10, 100, 30)];
    label.text=@"附近景点";
    label.textColor=[UIColor colorWithRed:51/255.0 green:51/255.0 blue:51/255.0 alpha:1.0];
    [sectionHeader addSubview:label];
    UIButton *reduBtn=[UIButton buttonWithType:UIButtonTypeCustom];
    reduBtn.frame=CGRectMake(kScreenWidth-10-50, 10, 50, 30);
    [reduBtn setTitle:@"热度" forState:UIControlStateNormal];
    [reduBtn setTitleColor:[UIColor colorWithRed:51/255.0 green:51/255.0 blue:51/255.0 alpha:1.0] forState:UIControlStateNormal];
    [reduBtn setTitleColor:[UIColor colorWithRed:252/255.0 green:92/255.0 blue:92/255.0 alpha:1.0] forState:UIControlStateSelected];
    [reduBtn addTarget:self action:@selector(reduBtn:) forControlEvents:UIControlEventTouchUpInside];
    
    [sectionHeader addSubview:reduBtn];
    
    UIButton *juliBtn=[UIButton buttonWithType:UIButtonTypeCustom];
    juliBtn.frame=CGRectMake(reduBtn.frame.origin.x-10-50, 10, 50, 30);
    [juliBtn setTitle:@"距离" forState:UIControlStateNormal];
    [juliBtn setTitleColor:[UIColor colorWithRed:51/255.0 green:51/255.0 blue:51/255.0 alpha:1.0] forState:UIControlStateNormal];
    [juliBtn setTitleColor:[UIColor colorWithRed:252/255.0 green:92/255.0 blue:92/255.0 alpha:1.0] forState:UIControlStateSelected];
    [juliBtn addTarget:self action:@selector(juliBtn:) forControlEvents:UIControlEventTouchUpInside];
    juliBtn.selected=YES;
    [sectionHeader addSubview:juliBtn];
    
    [view addSubview:sectionHeader];
    return view;
    
}
-(void)reduBtn:(UIButton *)sender
{
    
    NSLog(@"热度");
}
-(void)juliBtn:(UIButton *)sender
{
    
    NSLog(@"距离");
}
-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    if (section==1) {
        return 61;
    }else if(section==0){
        
        return 0;
    }else
    {
        return 0;
        
    }
    //return 100;
    
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell=[[UITableViewCell alloc]init];
    return cell;
}

//-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
//{
//        if (indexPath.section==0&&indexPath.row==0) {
//            DonkeySceneHeaderCell *cell=[DonkeySceneHeaderCell cellWithTableView:tableView];
//           
//            return cell;
//        }else
//        {
//    
//    DonkeySceneTableViewCell *cell=[DonkeySceneTableViewCell cellWithTableView:tableView ];
//    return cell;
//    
//    }
//    
//}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    
//    if (section==0) {
//        return 1;
//    }else
//    {
//        return 10;
//        
//        
//    }
    return 10;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
//        if (indexPath.section==0&&indexPath.row==0) {
//            return 247;
//        }else
//        {
//    
//  
//        }
    
      return 120;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

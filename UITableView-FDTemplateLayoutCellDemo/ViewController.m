//
//  ViewController.m
//  UITableView-FDTemplateLayoutCellDemo
//
//  Created by Yang on 2018/12/7.
//  Copyright © 2018年 Yang. All rights reserved.
//
#import "TableViewCell.h"
#define KScreenWidth                [UIScreen mainScreen].bounds.size.width
#define KScreenHeight               [UIScreen mainScreen].bounds.size.height
#import <UITableView+FDTemplateLayoutCell.h>
#import "ViewController.h"

@interface ViewController ()
<UITableViewDelegate,UITableViewDataSource>
@property (nonatomic,strong)UITableView *tableView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.tableView=[[UITableView alloc] initWithFrame:CGRectMake(0, 0, KScreenWidth, KScreenHeight) style:UITableViewStylePlain];
    self.tableView.delegate=self;
    self.tableView.dataSource=self;
    [self.view addSubview:self.tableView];
    [self.tableView registerNib:[UINib nibWithNibName:@"TableViewCell" bundle:[NSBundle mainBundle]] forCellReuseIdentifier:@"cellId"];
//    self.tableView.
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 20;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    TableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:@"cellId"];
    cell.model=[[ArticleModel alloc] init];
    return cell;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return [tableView fd_heightForCellWithIdentifier:@"cellId" configuration:^(TableViewCell *cell) {
        cell.model=[[ArticleModel alloc] init];
    }]+10;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

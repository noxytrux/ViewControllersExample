//
//  ViewController.m
//  ViewControllersFlow
//
//  Created by Marcin Pędzimąż on 25.01.2016.
//  Copyright © 2016 Marcin Małysz. All rights reserved.
//

#import "VCEViewController.h"

@interface VCEViewController () <UITableViewDataSource, UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (strong, nonatomic) NSMutableArray *items;
@end

@implementation VCEViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    
    self.items = [[NSMutableArray alloc] initWithArray:@[ @"Detail VC",
                                                          @"TabBar Controller",
                                                          @"Page Controller",
                                                          @"Split Controller",
                                                          @"Detail Controller"
                                                         ]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - <UITableViewDataSource>

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return self.items.count;
    
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {

    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"BasicCellReuseIdentifier" forIndexPath:indexPath];
    
    cell.textLabel.text = self.items[indexPath.row];
    
    return cell;
}

#pragma mark - <UITableViewDelegate>

- (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath {

    cell.backgroundColor = [UIColor clearColor];
    cell.contentView.backgroundColor = [UIColor clearColor];
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {

    return 60.0;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {

    NSArray *segues = @[@"NormalDetail", @"TabBarDetail", @"PageDetail", @"SplitDetail" , @"CollectionDetail"];

    [self performSegueWithIdentifier:segues[indexPath.row]
                              sender:self];
}


@end

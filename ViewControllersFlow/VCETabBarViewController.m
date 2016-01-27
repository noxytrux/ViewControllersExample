//
//  VCETabBarViewController.m
//  ViewControllersFlow
//
//  Created by Developer on 1/26/16.
//  Copyright © 2016 Marcin Małysz. All rights reserved.
//

#import "VCETabBarViewController.h"

@interface VCETabBarViewController ()

@end

@implementation VCETabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
     [[self.tabBar.items objectAtIndex:0] setTitle:@"Area"];
    [[self.tabBar.items objectAtIndex:0] setImage:[UIImage imageNamed:@"mountain.png"]];
     [[self.tabBar.items objectAtIndex:1] setTitle:@"Map"];
    [[self.tabBar.items objectAtIndex:1] setImage:[UIImage imageNamed:@"treasure_map.png"]];
   }

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

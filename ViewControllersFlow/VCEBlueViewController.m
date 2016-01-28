//
//  BlueViewController.m
//  ViewControllersFlow
//
//  Created by Marcin Pędzimąż on 25.01.2016.
//  Copyright © 2016 Marcin Małysz. All rights reserved.
//

#import "VCEBlueViewController.h"
#import "VCEModalViewController.h"

@interface VCEBlueViewController ()

@end

@implementation VCEBlueViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (IBAction)didPressShowModalView:(id)sender {
    
    VCEModalViewController *modal = [[VCEModalViewController alloc] initWithNibName:nil bundle:nil];
    
    UINavigationController *nvc = [[UINavigationController alloc] initWithRootViewController:modal];
    
        if ([UIDevice currentDevice].userInterfaceIdiom == UIUserInterfaceIdiomPad) {
    
        nvc.modalPresentationStyle = UIModalPresentationFormSheet;
    }

    [self.navigationController presentViewController:nvc
                                            animated:YES
                                          completion:nil];
}

@end
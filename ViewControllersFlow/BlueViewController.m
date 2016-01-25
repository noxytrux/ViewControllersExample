//
//  BlueViewController.m
//  ViewControllersFlow
//
//  Created by Marcin Pędzimąż on 25.01.2016.
//  Copyright © 2016 Marcin Małysz. All rights reserved.
//

#import "BlueViewController.h"
#import "ModalViewController.h"

@interface BlueViewController ()

@end

@implementation BlueViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (IBAction)didPressShowModalView:(id)sender {
    
    ModalViewController *modal = [[ModalViewController alloc] initWithNibName:nil bundle:nil];
    UINavigationController *nvc = [[UINavigationController alloc] initWithRootViewController:modal];
    
    if ([UIDevice currentDevice].userInterfaceIdiom == UIUserInterfaceIdiomPad) {
    
        nvc.modalPresentationStyle = UIModalPresentationFormSheet;
    }

    [self.navigationController presentViewController:nvc
                                            animated:YES
                                          completion:nil];
}

@end

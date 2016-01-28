//
//  VCECollectionViewController.m
//  ViewControllersFlow
//
//  Created by Developer on 1/27/16.
//  Copyright © 2016 Marcin Małysz. All rights reserved.
//

#import "VCECollectionViewController.h"

@interface VCECollectionViewController ()

@end

@implementation VCECollectionViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.collectionImages = [NSArray arrayWithObjects:  @"No1.png",
                                                        @"No2.png",
                                                        @"No3.png",
                                                        @"No4.png",
                                                        @"No5.png",
                                                        @"No6.png",
                                                        @"No7.png",
                                                        @"No8.png",nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    
    return [self.collectionImages count];
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *identifier = @"myCell";
    
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:identifier
                                                                           forIndexPath:indexPath];
    
    UIImageView *collectionImageView = (UIImageView *)[cell viewWithTag:100];
    
    collectionImageView.image = [UIImage imageNamed:[self.collectionImages objectAtIndex:indexPath.row]];
    
    return cell;
}

@end
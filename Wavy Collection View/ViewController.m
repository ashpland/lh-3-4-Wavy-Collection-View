//
//  ViewController.m
//  Wavy Collection View
//
//  Created by Andrew on 2017-10-19.
//  Copyright © 2017 Andrew. All rights reserved.
//

#import "ViewController.h"
#import "WavyFlowLayout.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UICollectionView *collectionViewController;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.collectionViewController.collectionViewLayout = [WavyFlowLayout new];

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (nonnull __kindof UICollectionViewCell *)collectionView:(nonnull UICollectionView *)collectionView cellForItemAtIndexPath:(nonnull NSIndexPath *)indexPath {
    
    UICollectionViewCell *cell = [self.collectionViewController dequeueReusableCellWithReuseIdentifier:@"tealCell" forIndexPath:indexPath];
    
    return  cell;
    
    
}

- (NSInteger)collectionView:(nonnull UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return 10;
}


@end

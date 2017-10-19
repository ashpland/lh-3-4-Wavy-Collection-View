//
//  WavyFlowLayout.m
//  Wavy Collection View
//
//  Created by Andrew on 2017-10-19.
//  Copyright © 2017 Andrew. All rights reserved.
//

#import "WavyFlowLayout.h"

@implementation WavyFlowLayout

-(void)prepareLayout
{
    self.scrollDirection = UICollectionViewScrollDirectionHorizontal;
    self.itemSize = CGSizeMake(100, 50);
    self.minimumInteritemSpacing = CGFLOAT_MAX;
}

@end

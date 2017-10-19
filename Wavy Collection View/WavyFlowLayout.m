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
    self.itemSize = CGSizeMake(100, 1);
    self.minimumInteritemSpacing = CGFLOAT_MAX;
}

-(NSArray<UICollectionViewLayoutAttributes *> *)layoutAttributesForElementsInRect:(CGRect)rect
{
    NSArray<UICollectionViewLayoutAttributes *> *superAttrs = [super layoutAttributesForElementsInRect:rect];
    
    // Need to copy attrs from super to avoid cached frame mismatch
    NSMutableArray<UICollectionViewLayoutAttributes *> *newAttrs = [[NSMutableArray alloc] init];
    
    for (UICollectionViewLayoutAttributes *currentCellAtributes in superAttrs){
        UICollectionViewLayoutAttributes *copyOfcurrentCellAtributes = [currentCellAtributes copy];
        
        
        CGFloat randomY = (arc4random_uniform(self.collectionView.frame.size.height) + 1);
        
        CGAffineTransform randomScale = CGAffineTransformMakeScale(1, randomY);
        
        
//        copyOfcurrentCellAtributes.transform = CGAffineTransformTranslate(randomScale, 0, -10);
//        copyOfcurrentCellAtributes.transform = CGAffineTransformMakeTranslation(0, -100);
        copyOfcurrentCellAtributes.transform = randomScale;
        
        //copyOfcurrentCellAtributes.frame = CGRectMake(copyOfcurrentCellAtributes.frame.origin.x, copyOfcurrentCellAtributes.frame.origin.y + arc4random_uniform(600), copyOfcurrentCellAtributes.size.width, copyOfcurrentCellAtributes.size.height);
        
        
        [newAttrs addObject:copyOfcurrentCellAtributes];
    }
    
    
    
    
    
    return newAttrs;
}


//@property (nonatomic) CGRect frame;
//@property (nonatomic) CGPoint center;
//@property (nonatomic) CGSize size;
//@property (nonatomic) CATransform3D transform3D;
//@property (nonatomic) CGRect bounds NS_AVAILABLE_IOS(7_0);
//@property (nonatomic) CGAffineTransform transform NS_AVAILABLE_IOS(7_0);
//@property (nonatomic) CGFloat alpha;
//@property (nonatomic) NSInteger zIndex; // default is 0
//@property (nonatomic, getter=isHidden) BOOL hidden; // As an optimization, UICollectionView might not create a view for items whose hidden attribute is YES

@end

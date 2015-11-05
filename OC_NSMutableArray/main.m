//
//  main.m
//  OC_NSMutableArray
//
//  Created by 茆明辉 on 15/11/5.
//  Copyright © 2015年 com.nyist. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *str = @"This is My obj";
        NSArray *arr3 = [str componentsSeparatedByString:@""];
        NSMutableArray *arr4 = [[NSMutableArray alloc]init];
        NSEnumerator *enmerator  = [arr3 reverseObjectEnumerator];
        id obj = nil;
        while (obj = [enmerator nextObject]) {
            [arr4 addObject:obj];
        }
        NSLog(@"%@",arr4);
        
        
        NSMutableArray *arr5 = [[NSMutableArray alloc]init];
        [arr5 addObject:@"me"];
        [arr5 addObject:@"you"];
        [arr5 exchangeObjectAtIndex:0 withObjectAtIndex:1];
        NSLog(@"%@",arr5);
        
        
        NSDictionary *dic = [[NSDictionary alloc]initWithObjectsAndKeys:@"you",@"1",@"me",@"2", nil];
        NSLog(@"%@",dic);
        
        NSEnumerator *en = [dic keyEnumerator];
        NSMutableString *temStr = [[NSMutableString alloc]init];
        id obj1 = nil;
        while (obj1 = [en nextObject]) {
            [temStr appendFormat:obj1];
        }
        NSLog(@"%@",temStr);
        
    }
    return 0;
}

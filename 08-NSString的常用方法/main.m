//
//  main.m
//  08-NSString的常用方法
//
//  Created by Mac on 14-8-29.
//  Copyright (c) 2014年 MN&WC. All rights reserved.
//

#import <Foundation/Foundation.h>

#pragma mark 字符串的大小写处理
void caseTest(){

    NSString *str = @"zUNYI";
    
    NSString *str1 = [str uppercaseString];
    
    NSString *str2 = [str lowercaseString];
    
    NSString *str3 = [str  capitalizedString];
    
    NSLog(@"%@",str1);
    
    NSLog(@"%@",str2);
    
    NSLog(@"%@",str3);


}

#pragma mark 字符串的比较

void compare(){
    NSString *str4 = @"zunyi";
    NSString *str5 = @"ZUNYI";
    
    BOOL bl = [str4 isEqualToString:str5 ]; //yes 是1 ，no是0；
   
    NSComparisonResult result = [str4 compare:str5];
    
    NSComparisonResult result1 = [str4 caseInsensitiveCompare:str5];
    
    NSLog(@"%i",bl);
    
    if(result==NSOrderedAscending){
        NSLog(@"right is larger than left!");
     
    }else if(result ==NSOrderedDescending){
        NSLog(@"right is less than left!");
    
    
    }else if(result ==NSOrderedSame){
        NSLog(@"right is same as left!");}

}

#pragma mark 字符串的搜索

void search(){
  
//hasPrefix:@""  获得前面的字符
//hasSuffix:@""   获得后面的字符
//rangeOfString:@"" options:(NSStringCompareOptions)  选择方向搜索
//rangeOfString:@"" options:(NSStringCompareOptions)    range：(NSRange) searchRange 指定范围进行搜索

}

#pragma mark 字符串的截取

void subString(){
     NSString *str =@"23223";
     NSRange range=NSMakeRange(1,2);
     NSString *str3 = [str substringFromIndex:2];        //从2开始截取到尾部
     NSString *str4 = [str substringToIndex:3];          //从开始截取到3
     NSString *str5 = [str substringWithRange:range];    //从指定范围开始截取
       NSLog(@"%@",str3);
       NSLog(@"%@",str4);
       NSLog(@"%@",str5);
    
    
    
    NSString *str2 = @"1-2-3-4-5-6-7-8";
    NSArray  *array = [str2 componentsSeparatedByString:@"-"];
    NSLog(@"%@",array);
    
    
    NSString *str6 =[array objectAtIndex:3];
  
    NSLog(@"%@",str6);
}

#pragma mark 字符串与路径


// 将数组中的字符拼接成一个路径  pathWithComponents

// 将路径分解成字符存入数组这中里面  [path pathComponents]

// 判断是是否为绝对路径   [path isAbsolutePath]

// 获得最后一个目录 [path lastPathComponent]

// 删除走后一个目录     -(NSString *) stringByDeletingLastPathComponent

// 在字符串的后面拼接一个目录    -(NSString *) stringByAppendingPathComponent:(NSString *)str

#pragma mark 字符串与拓展名

//   -(NSString *)pathExtension                   获得拓展名

//   -(NSString *)stringByDeletingPathExtension   删除拓展名

//   -(NSString *)stringByAppendingPathExtension  在尾部添加拓展名


#pragma mark 字符串的其他用法

//    返回字符串的长度     -(NSInteger)length

//    返回对应index 位置的字符  -(Unichar) characterAtIedex:(NSUInteger) index;

//    doubleValue

//    UTF8String  转为C语言中的字符串





int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        subString();
    }
    return 0;
}

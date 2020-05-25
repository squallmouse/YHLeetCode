//
//  main.swift
//  7.整数反转
//
//  Created by 袁昊 on 2020/5/17.
//  Copyright © 2020 袁昊. All rights reserved.
//

import Foundation
/*
 给出一个 32 位的有符号整数，你需要将这个整数中每位上的数字进行反转。

 示例 1:

 输入: 123
 输出: 321
  示例 2:

 输入: -123
 输出: -321
 示例 3:

 输入: 120
 输出: 21
 注意:

 假设我们的环境只能存储得下 32 位的有符号整数，则其数值范围为 [−231,  231 − 1]。请根据这个假设，如果反转后整数溢出那么就返回 0。

 来源：力扣（LeetCode）
 链接：https://leetcode-cn.com/problems/reverse-integer
 著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。
 */
class Solution {
    func reverse(_ x: Int) -> Int {
        var num = x
        var res = 0
        while num != 0 {
            res = res * 10 + num % 10
            num = num / 10
            if num/10 != 0 || num%10 != 0 {

                if res > Int32.max/10 || ( res == Int32.max/10 && res%10 > Int32.max%10) {
                    return 0
                }


                if res < Int32.min/10 ||  (res == Int32.min/10 && res%10 < Int32.min%10) {
                    return 0
                }

            }

        }
        return Int(res);
        
        
       

        
    }
}

let s = Solution.init()
print(s.reverse(1534236469))
print(s.reverse(-123))
print(s.reverse(123))

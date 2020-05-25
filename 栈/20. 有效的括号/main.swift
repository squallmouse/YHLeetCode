//
//  main.swift
//  20. 有效的括号
//
//  Created by 袁昊 on 2020/5/20.
//  Copyright © 2020 袁昊. All rights reserved.
//

import Foundation
/**
 给定一个只包括 '('，')'，'{'，'}'，'['，']' 的字符串，判断字符串是否有效。

 有效字符串需满足：

 左括号必须用相同类型的右括号闭合。
 左括号必须以正确的顺序闭合。
 注意空字符串可被认为是有效字符串。

 示例 1:

 输入: "()"
 输出: true
 示例 2:

 输入: "()[]{}"
 输出: true
 示例 3:

 输入: "(]"
 输出: false
 示例 4:

 输入: "([)]"
 输出: false
 示例 5:

 输入: "{[]}"
 输出: true

 来源：力扣（LeetCode）
 链接：https://leetcode-cn.com/problems/valid-parentheses
 著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。
 */

class Solution {
    func isValid(_ s: String) -> Bool {
        var arr:Array<String> = []
        for (_,val) in s.enumerated(){
            let value = String(val)
            
            if value == "(" || value == "{" || value == "[" {
                
                arr.append(value)
            }
            if value == ")" || value == "}" || value == "]" {
                if arr.count == 0 {
                    return false
                }
                let count = arr.count-1
                let popValue = arr[count]
                if value == ")" && popValue == "(" {
                    arr.remove(at: count)
                    
                }
                else if value == "}" && popValue == "{" {
                    arr.remove(at: count)
                    
                }
                else if value == "]" && popValue == "[" {
                    arr.remove(at: count)
                    
                }else{
                    arr.append(value)
                }
            }
        }
        
        return arr.count == 0 ? true : false
    }
}

var str = "123456789"
for s in (0..<str.count).reversed(){
    print(s)
}



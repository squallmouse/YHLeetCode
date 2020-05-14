//
//  main.swift
//  1. 两数之和
//
//  Created by 袁昊 on 2020/5/14.
//  Copyright © 2020 袁昊. All rights reserved.
//

import Foundation
//给定一个整数数组 nums 和一个目标值 target，请你在该数组中找出和为目标值的那 两个 整数，并返回他们的数组下标。
//
//你可以假设每种输入只会对应一个答案。但是，数组中同一个元素不能使用两遍。
//
//
//
//示例:
//
//给定 nums = [2, 7, 11, 15], target = 9
//
//因为 nums[0] + nums[1] = 2 + 7 = 9
//所以返回 [0, 1]
//
//来源：力扣（LeetCode）
//链接：https://leetcode-cn.com/problems/two-sum
//著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。



class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var dic:Dictionary<Int,Int> = Dictionary.init()
        var resArr = [0,0]
        for i in 0..<nums.count {
            let res = target - nums[i]
            if dic.keys.contains(nums[i]) {
                resArr[1] = i
                resArr[0] = dic[nums[i]]!
                return resArr
            }
            dic[res] = i
        }
        return resArr
    }
}

var dic:Dictionary<Int,Int>  = Dictionary.init()
let arr = [2,7,11,15,4,6,3,8]
let s = Solution.init()
print(s.twoSum(arr, 10))


//
//dic[arr[0]] = 10 - arr[0]
//dic[arr[1]] = 10 - arr[1]
//print(dic)
//print( dic.keys.contains(2))
//dic[arr[0]] = 10 - arr[4]
//print(dic)

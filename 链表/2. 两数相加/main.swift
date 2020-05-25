//
//  main.swift
//  2. 两数相加
//
//  Created by 袁昊 on 2020/5/16.
//  Copyright © 2020 袁昊. All rights reserved.
//

import Foundation

//给出两个 非空 的链表用来表示两个非负的整数。其中，它们各自的位数是按照 逆序 的方式存储的，并且它们的每个节点只能存储 一位 数字。
//
//如果，我们将这两个数相加起来，则会返回一个新的链表来表示它们的和。
//
//您可以假设除了数字 0 之外，这两个数都不会以 0 开头。
//
//示例：
//
//输入：(2 -> 4 -> 3) + (5 -> 6 -> 4)
//输出：7 -> 0 -> 8
//原因：342 + 465 = 807
//
//来源：力扣（LeetCode）
//链接：https://leetcode-cn.com/problems/add-two-numbers
//著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}

class Solution {
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        let newHead : ListNode = ListNode.init(0)
        var currNode = newHead
//        var backList : ListNode? = nil
        var l1Node = l1
        var l2Node = l2
        var temp = 0
        while l1Node != nil || l2Node != nil || temp == 1{
            // temp == 1   5 + 5 = 01
            var resVal = 0//存入节点的值
            //取两个链表的值
            let l1Num = l1Node?.val ?? 0
            let l2Num = l2Node?.val ?? 0
            
            //求和出结果
            let sum = l1Num + l2Num + temp
            if sum > 9  {
                temp = 1
                resVal = sum - 10
            }else{
                temp = 0
                resVal = sum
            }
            
           let tempNode = ListNode.init(resVal)
            currNode.next = tempNode
            currNode = tempNode
            //next节点
            l1Node = l1Node?.next
            l2Node = l2Node?.next
        }
        
        return newHead.next
    }
}




let node1 = ListNode.init(2)
let node2 = ListNode.init(4)
let node3 = ListNode.init(5)

let node4 = ListNode.init(5)
let node5 = ListNode.init(6)
let node6 = ListNode.init(4)
//let node7 = ListNode.init(7)

var head = node1
node1.next = node2
node2.next = node3
//node3.next = nil

var head2 = node4
node4.next = node5
node5.next = node6


let s = Solution.init()
let res = s.addTwoNumbers(head,head2)
var tempnode = res
print(res?.val)
while let temp = tempnode?.next {
    print(temp.val)
    tempnode = temp
}

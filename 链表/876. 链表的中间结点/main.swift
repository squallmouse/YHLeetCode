//
//  main.swift
//  876. 链表的中间结点
//
//  Created by 袁昊 on 2020/5/13.
//  Copyright © 2020 袁昊. All rights reserved.
//

import Foundation

//给定一个带有头结点 head 的非空单链表，返回链表的中间结点。
//
//如果有两个中间结点，则返回第二个中间结点。
//
// 
//
//示例 1：
//
//输入：[1,2,3,4,5]
//输出：此列表中的结点 3 (序列化形式：[3,4,5])
//返回的结点值为 3 。 (测评系统对该结点序列化表述是 [3,4,5])。
//注意，我们返回了一个 ListNode 类型的对象 ans，这样：
//ans.val = 3, ans.next.val = 4, ans.next.next.val = 5, 以及 ans.next.next.next = NULL.
//示例 2：
//
//输入：[1,2,3,4,5,6]
//输出：此列表中的结点 4 (序列化形式：[4,5,6])
//由于该列表有两个中间结点，值分别为 3 和 4，我们返回第二个结点。
// 
//
//提示：
//
//给定链表的结点数介于 1 和 100 之间。
//
//来源：力扣（LeetCode）
//链接：https://leetcode-cn.com/problems/middle-of-the-linked-list
////著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。

public class ListNode {
     public var val: Int
     public var next: ListNode?
     public init(_ val: Int) {
         self.val = val
         self.next = nil
     }
 }

class Solution {
    func middleNode(_ head: ListNode?) -> ListNode? {
        var currNode = head
        var count:Int = 0
        while currNode != nil {
            currNode = currNode?.next
            count += 1
        }
        count = count/2
        currNode = head
        for _ in 0..<count {
            currNode = currNode?.next
        }
        return currNode
        
    }
}



let node1 = ListNode.init(1)
let node2 = ListNode.init(2)
let node3 = ListNode.init(3)
let node4 = ListNode.init(4)
let node5 = ListNode.init(5)
let node6 = ListNode.init(6)
let node7 = ListNode.init(7)

var head = node1
node1.next = node2
node2.next = node3
node3.next = node4
node4.next = node5
node5.next = node6
//node6.next = node7


var tempnode = head
print(head.val)
while let temp = tempnode.next {
    print(temp.val)
    tempnode = temp
}
print("++++++++++++++")
let s = Solution.init()
let res = s.middleNode(head)
print(res?.val ?? -1)


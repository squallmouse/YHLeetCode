//
//  main.swift
//  203. 移除链表元素
//
//  Created by 袁昊 on 2020/5/13.
//  Copyright © 2020 袁昊. All rights reserved.
//

import Foundation

//删除链表中等于给定值 val 的所有节点。
//
//示例:
//
//输入: 1->2->6->3->4->5->6, val = 6
//输出: 1->2->3->4->5
//
//https://leetcode-cn.com/problems/remove-linked-list-elements/
//

// 还可以做一个哨兵节点 next指向head
//也能递归
 public class ListNode {
      public var val: Int
      public var next: ListNode?
      public init(_ val: Int) {
          self.val = val
          self.next = nil
      }
  }
class Solution {
    func removeElements(_ head: ListNode?, _ val: Int) -> ListNode? {
        var tempNode = head

        while let tempNext = tempNode?.next {
            if tempNode?.next?.val == val {
                tempNode?.next = tempNext.next
            }else{
                tempNode = tempNext
            }
        }
        tempNode = head
        if head?.val == val{
            tempNode = head?.next
        }
        return tempNode
    }
    
    //递归
    func removeElements2(_ head: ListNode?, _ val: Int) -> ListNode? {
        var currNode = head
        if currNode == nil {
            return currNode
        }
        if currNode?.val == val {
            currNode?.next = removeElements2(currNode?.next, val)
            return currNode?.next
        }else{
            currNode?.next = removeElements2(currNode?.next, val)
            return currNode
        }
        
    }
}

let node1 = ListNode.init(6)
let node2 = ListNode.init(2)
let node3 = ListNode.init(6)
let node4 = ListNode.init(3)
let node5 = ListNode.init(4)
let node6 = ListNode.init(5)
let node7 = ListNode.init(6)

var head = node1
node1.next = node2
node2.next = node3
node3.next = node4
node4.next = node5
node5.next = node6
node6.next = node7


var tempnode = head
print(head.val)
while let temp = tempnode.next {
    print(temp.val)
    tempnode = temp
}
print("++++++++++++++")
let s = Solution.init()
let res = s.removeElements2(head, 6)

var temppp = res
print(temppp?.val ?? "为空链表")
while let temp = temppp?.next {
    print(temp.val)
    temppp = temppp?.next
}

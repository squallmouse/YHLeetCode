//
//  main.swift
//  206. 反转链表
//
//  Created by 袁昊 on 2020/5/13.
//  Copyright © 2020 袁昊. All rights reserved.
//

import Foundation

//反转一个单链表。
//
//示例:
//
//输入: 1->2->3->4->5->NULL
//输出: 5->4->3->2->1->NULL
//进阶:
//你可以迭代或递归地反转链表。你能否用两种方法解决这道题？
//
//来源：力扣（LeetCode）
//链接：https://leetcode-cn.com/problems/reverse-linked-list
//著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。

  public class ListNode {
      public var val: Int
      public var next: ListNode?
      public init(_ val: Int) {
          self.val = val
          self.next = nil
      }
  }
 
/*
 var tempNode = head
 var nextNode = head
 while let temp = tempNode?.next {
     nextNode = tempNode?.next
     nextNode?.next = tempNode
     tempNode = nextNode
 }
 head?.next = nil
 return nextNode
 */

class Solution {
    func reverseList(_ head: ListNode?) -> ListNode? {
        if head == nil || head?.next == nil {
            return head
        }
        let newHead = self.reverseList(head?.next)
        head?.next?.next = head
        head?.next = nil
        return newHead
    }
    
    func reverseList2(_ head: ListNode?) -> ListNode? {
        
        var newHead : ListNode? = nil
        
        var tempNode = head
        
        while tempNode != nil {
            let temp = tempNode?.next
            tempNode?.next = newHead
            newHead = tempNode
            tempNode = temp
        }
        
        return newHead
    }
    
}

let node1 = ListNode.init(1)
let node2 = ListNode.init(2)
let node3 = ListNode.init(3)
let node4 = ListNode.init(4)
let node5 = ListNode.init(5)

var head = node1
node1.next = node2
node2.next = node3
node3.next = node4
node4.next = node5


var tempnode = head
print(head.val)
while let temp = tempnode.next {
    print(temp.val)
    tempnode = temp
}
print("00000")
let s = Solution.init()
let res = s.reverseList2(head)
var temppp = res
print(temppp!.val)
while let temp = temppp!.next {
    print(temp.val)
    temppp = temppp?.next!
}

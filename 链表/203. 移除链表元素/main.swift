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

    }
}

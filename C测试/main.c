//
//  main.c
//  C测试
//
//  Created by 袁昊 on 2020/5/14.
//  Copyright © 2020 袁昊. All rights reserved.
//

#include <stdio.h>

struct ListNode {
     int val;
     struct ListNode *next;
};

struct ListNode* removeElements(struct ListNode* head, int val){
    struct ListNode *sentinel = malloc(sizeof(struct ListNode));
    sentinel->next = head;
    
    struct ListNode *currNode = head , *prev = sentinel;
    
    while (currNode != NULL) {
        if (currNode->val == val) {
            prev->next = currNode->next;
        }else{
            prev = currNode;
        }
        currNode = currNode->next;
    }
    
    return sentinel->next;
}

int main(int argc, const char * argv[]) {
    // insert code here...
    printf("Hello, World!\n");
    
    struct ListNode *node1 = malloc(sizeof(struct ListNode));
    struct ListNode *node2 = malloc(sizeof(struct ListNode));
    struct ListNode *node3 = malloc(sizeof(struct ListNode));
    struct ListNode *node4 = malloc(sizeof(struct ListNode));
    struct ListNode *node5 = malloc(sizeof(struct ListNode));
    struct ListNode *node6 = malloc(sizeof(struct ListNode));
    struct ListNode *node7 = malloc(sizeof(struct ListNode));
    struct ListNode *node8 = malloc(sizeof(struct ListNode));
    node1->val = 6;
    node2->val = 1;
    node3->val = 2;
    node4->val = 6;
    node5->val = 3;
    node6->val = 4;
    node7->val = 5;
    node8->val = 6;
    
    node1->next = node2;
    node2->next = node3;
    node3->next = node4;
    node4->next = node5;
    node5->next = node6;
    node6->next = node7;
    node7->next = node8;
    node8->next = NULL;
    
    struct ListNode * head = node1;
    while (head != NULL) {
        printf("--%d--",head->val);
        head = head->next;
    }
    
     head = removeElements(node1, 6);
    printf("111\n");
    while (head != NULL) {
        printf("--%d--",head->val);
        head = head->next;
    }
    
    
    return 0;
}






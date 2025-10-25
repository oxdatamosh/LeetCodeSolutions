//
//  0002AddTwoNumbers.swift
//  LeetCodeSolutions
//  https://leetcode.com/problems/add-two-numbers/
//
//  Created by David Ossa on 25/10/2025.
//

extension Solution {
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        
        let dummyHead = ListNode(0)
        var tail = dummyHead
        var l1Current = l1
        var l2Current = l2
        var carryOver = 0

        // Iterate while there are digits left in either list, or a remaining carry
        while l1Current != nil || l2Current != nil || carryOver > 0 {
            // Read current digit values; use 0 when a list has ended
            let l1Value = l1Current?.val ?? 0
            let l2Value = l2Current?.val ?? 0

            // Compute digit sum and next carry
            let sum = l1Value + l2Value + carryOver
            carryOver = sum / 10

            // Append the ones place of the sum to the result list
            tail.next = ListNode(sum % 10)
            tail = tail.next!

            // Advance input list pointers when possible
            l1Current = l1Current?.next
            l2Current = l2Current?.next
        }

        return dummyHead.next
    }
}

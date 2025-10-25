//
//  0002AddTwoNumbersTests.swift
//  LeetCodeSolutions
//  https://leetcode.com/problems/add-two-numbers/
//
//  Created by David Ossa on 25/10/2025.
//

import Testing

@testable import LeetCodeSolutions

@Suite("0002 Add Two Numbers")
struct AddTwoNumbers {
    
    @Test func testCase1() async throws {
        let l1 = ListNode(2, ListNode(4, ListNode(3)))
        let l2 = ListNode(5, ListNode(6, ListNode(4)))
        let result = Solution().addTwoNumbers(l1, l2)
        let expected = ListNode(7, ListNode(0, ListNode(8)))
        #expect(result == expected)
    }
    
    @Test func testCase2() async throws {
        let l1 = ListNode(0)
        let l2 = ListNode(0)
        let result = Solution().addTwoNumbers(l1, l2)
        let expected = ListNode(0)
        #expect(result == expected)
    }
    
    @Test func testCase3() async throws {
        let l1 = ListNode(
            9, ListNode(9, ListNode(9, ListNode(9, ListNode(9, ListNode(9, ListNode(9)))))))
        let l2 = ListNode(9, ListNode(9, ListNode(9, ListNode(9))))
        let result = Solution().addTwoNumbers(l1, l2)
        let expected = ListNode(
            8, ListNode(9, ListNode(9, ListNode(9, ListNode(0, ListNode(0, ListNode(0, ListNode(1))))))))
        #expect(result == expected)
    }
}

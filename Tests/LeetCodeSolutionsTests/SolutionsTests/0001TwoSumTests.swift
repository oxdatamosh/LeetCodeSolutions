//
//  0001TwoSumTests.swift
//  LeetCodeSolutions
//  https://leetcode.com/problems/two-sum/
//
//  Created by David Ossa on 24/10/2025.
//

import Testing

@testable import LeetCodeSolutions

@Suite("0001 Two Sum")
struct TwoSumTests {
    
    @Test func testCase1() async throws {
        let nums = [2, 7, 11, 15]
        let target = 9
        let result = Solution().twoSum(nums, target)
        #expect(result == [0, 1])
    }
    
    @Test func testCase2() async throws {
        let nums = [3, 2, 4]
        let target = 6
        let result = Solution().twoSum(nums, target)
        #expect(result == [1, 2])
    }
    
    @Test func testCase3() async throws {
        let nums = [3, 3]
        let target = 6
        let result = Solution().twoSum(nums, target)
        #expect(result == [0, 1])
    }
}

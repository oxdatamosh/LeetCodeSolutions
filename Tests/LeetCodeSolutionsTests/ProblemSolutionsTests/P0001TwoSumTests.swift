//
//  P0001TwoSumTests.swift
//  LeetCodeSolutions
//  https://leetcode.com/problems/two-sum/
//
//  Created by David Ossa on 01/11/2025.
//

import Testing

@testable import LeetCodeSolutions

@Suite("P0001TwoSum")
struct P0001TwoSum {

    let solution = Solution()

    @Test func testCase01() async throws {
        let nums = [2, 7, 11, 15]
        let target = 9
        let expected = [0, 1]
        #expect(solution.twoSum(nums, target) == expected)
    }

    @Test func testCase02() async throws {
        let nums = [3, 2, 4]
        let target = 6
        let expected = [1, 2]
        #expect(solution.twoSum(nums, target) == expected)
    }

    @Test func testCase03() async throws {
        let nums = [3, 3]
        let target = 6
        let expected = [0, 1]
        #expect(solution.twoSum(nums, target) == expected)
    }
}

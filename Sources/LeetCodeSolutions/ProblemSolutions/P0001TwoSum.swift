//
//  P0001TwoSum.swift
//  LeetCodeSolutions
//  https://leetcode.com/problems/two-sum/
//
//  Created by David Ossa on 01/11/2025.
//

extension Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {

        // Dictionary to store the number and its index
        var indexMap = [Int: Int]()

        // Iterate through the array, storing numbers and checking for complements
        for (index, num) in nums.enumerated() {
            let complement = target - num

            // If we've seen the required number before, we found our pair
            if let complementIndex = indexMap[complement] {
                return [complementIndex, index]
            }

            // Store the current number and its index
            indexMap[num] = index
        }

        return []  // No solution found
    }
}

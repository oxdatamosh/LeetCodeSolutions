//
//  0001TwoSum.swift
//  LeetCodeSolutions
//  https://leetcode.com/problems/two-sum/
//
//  Created by David Ossa on 24/10/2025.
//

extension Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        
        // Dictionary to store the number and its index
        var seenNumbers: [Int: Int] = [:]
        
        // Iterate through the array once, storing numbers and checking for complements
        for (currentIndex, currentNumber) in nums.enumerated() {
            let requiredNumber = target - currentNumber
            
            // If we've seen the required number before, we found our pair
            if let complementIndex = seenNumbers[requiredNumber] {
                return [complementIndex, currentIndex]
            }
            
            // Store the current number and its index
            seenNumbers[currentNumber] = currentIndex
        }
        
        // No solution found
        return []
    }
}

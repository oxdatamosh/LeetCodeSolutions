// Base class for LeetCode problem solutions
final public class Solution {}

/**
 * Definition for singly-linked list.
 */
public class ListNode: Equatable {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
    
    // Implement equatable to properly test this linked list
    public static func == (lhs: ListNode, rhs: ListNode) -> Bool {
        var a: ListNode? = lhs
        var b: ListNode? = rhs
        while let an = a, let bn = b {
            if an.val != bn.val { return false }
            a = an.next
            b = bn.next
        }
        return a == nil && b == nil
    }
}

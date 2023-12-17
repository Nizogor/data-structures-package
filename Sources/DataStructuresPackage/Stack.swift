//
//  Stack.swift
//
//
//  Created by Nikita Tepliakov on 17/12/23.
//

import Foundation

struct Stack<Element> {
    private var elements: [Element]

    public init(arrayLiteral elements: Element...) {
        self.elements = elements
    }

    public init(_ elements: [Element] = []) {
        self.elements = elements
    }

    /// Complexity: O(1)
    public var top: Element? {
        elements.last
    }

    /// Complexity: O(1)
    public var count: Int {
        elements.count
    }

    /// Complexity: O(1)
    public var isEmpty: Bool {
        elements.isEmpty
    }

    /// Complexity: O(1) on average, over many calls to append(_:) on the same array.
    public mutating func push(_ newElement: Element) {
        elements.append(newElement)
    }

    /// Complexity: O(1)
    public mutating func pop() -> Element? {
        elements.popLast()
    }

    /// Complexity:  O(k) where k less than stack elements count. O(1) when elements count is equal or less than k.
    public mutating func pop(_ k: Int) {
        guard k < elements.count else {
            elements = []
            return
        }
        elements.removeLast(k)
    }

    /// Complexity: O(1)
    public mutating func popAll() {
        elements = []
    }

    public func printElements() {
        print(
        """
        ----top----
        \(elements.map { "\($0)" }.reversed().joined(separator:"\n"))
        ----bottom----
        """
        )
    }
}

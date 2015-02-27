//
//  ArrayExtensions.swift
//  GuardiansWorldButtonPrototype
//
//  Created by Carl Sharman Work on 27/02/2015.
//  Copyright (c) 2015 United Learning. All rights reserved.
//

import Foundation

extension Array {
    
    // Returns the index in the array of the element matching the specified expresssion.
    // The example below returns 1:
    //      var testArray: [Int] = [1, 2, 3]
    //      testArray.indexOf { $0 == 2 }
    func indexOf(includedElement: T -> Bool) -> Int? {
        for (idx, element) in enumerate(self) {
            if includedElement(element) {
                return idx
            }
        }
        return nil
    }

    // Returns the element in the array matching the specified expression.
    // The example below returns 2:
    //      var testArray: [Int] = [1, 2, 3]
    //      testArray.find { 0$ == 2 }
    func find(includedElement: T -> Bool) -> T? {
        for (idx, element) in enumerate(self) {
            if includedElement(element) {
                return element
            }
        }
        return nil
    }
}
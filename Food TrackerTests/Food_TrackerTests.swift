//
//  Food_TrackerTests.swift
//  Food TrackerTests
//
//  Created by Leonard, Martin on 1/29/16.
//  Copyright © 2016 Lennster. All rights reserved.
//

import UIKit
import XCTest

@testable import Food_Tracker

class Food_TrackerTests: XCTestCase {

    // MARK: FoodTracker Tests
    // Tests to confirm that the Meal initializer returns when no name or a negative rating is provided
    func testMealInitialization() {
        // Success case
        let potentialItem = Meal(name: "Newest Meal", photo: nil, rating: 5)
        XCTAssertNotNil(potentialItem)
        
        //Failure cases
        let noName = Meal(name: "", photo: nil, rating: 0)
        XCTAssertNil(noName)
        
        let badRating = Meal(name: "Really bad rating", photo: nil, rating: -1)
        XCTAssertNil(badRating, "Negative ratings are invalid, be positive")
    }
}

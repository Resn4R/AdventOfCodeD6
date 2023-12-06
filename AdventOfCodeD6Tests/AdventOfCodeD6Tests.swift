//
//  AdventOfCodeD6Tests.swift
//  AdventOfCodeD6Tests
//
//  Created by Vito Borghi on 06/12/2023.
//

import XCTest
@testable import AdventOfCodeD6

final class AdventOfCodeD6Tests: XCTestCase {

    func testGivenButtonPressTimeShouldReturnBoatSpeed() {
        let calc = RaceCalculator()
        let buttonPressTime = 3
        
        let boatSpeed = 3
        
        XCTAssertEqual(calc.pressButton(for: buttonPressTime), boatSpeed)
    }
    
    func testGivenButtonPressTimeShouldReturnTimeLeftToSail() {
        let calc = RaceCalculator()
        let buttonPress = 3
        let raceLenght = 10
        
        let result = 7
        
        XCTAssertEqual(calc.getTimeLeft(ButtonPressedFor: buttonPress, raceDuration: raceLenght), result)
    }
    
    func testGivenButtonPressTimeShouldReturnDistanceCovered() {
        let calc = RaceCalculator()
        let buttonPress = 2
        let raceDistance = 9
        let raceTime = 7
        
        let distanceCovered = 10
        
        XCTAssertEqual(calc.getDistance(buttonPressedFor: buttonPress, raceLength: raceDistance, raceDuration: raceTime), distanceCovered)
    }

}

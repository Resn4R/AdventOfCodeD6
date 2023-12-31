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
    
    func testGivenRaceShouldReturnNumberOfTimesYouCanBeatIt() {
        let calc = RaceCalculator()
        //let buttonPress = 2
        let raceDistance = 9
        let raceTime = 7
        
        let result = 4
        
        XCTAssertEqual(calc.getWaysToWin(race: (raceTime,raceDistance)), result)
    }
    
    func test2GivenRaceShouldReturnNumberOfTimesYouCanBeatIt() {
        let calc = RaceCalculator()
        let raceDistance = 40
        let raceTime = 15
        
        let result = 8
        
        XCTAssertEqual(calc.getWaysToWin(race: (raceTime,raceDistance)), result)
    }
    
    
    func testGivenPuzzleInputShouldReturnPuzzleSolution() {
        let calc = RaceCalculator()
        let races = """
        Time:        45     97     72     95
        Distance:   305   1062   1110   1695
        """
        let result = 2612736
        
        XCTAssertEqual(calc.calculateWaysToWinAllRaces(races), result)
    }
    
    func testGivenPuzzlept2InputShouldReturnPuzzlept2Solution() {
        let calc = RaceCalculator()
        let races = """
        Time:        45977295
        Distance:   305106211101695
        """
        let result = 29891250
        
        XCTAssertEqual(calc.calculateWaysToWinAllRaces(races), result)
    }

}

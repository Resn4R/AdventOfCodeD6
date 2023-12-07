//
//  RaceCalculator.swift
//  AdventOfCodeD6
//
//  Created by Vito Borghi on 06/12/2023.
//

import Foundation

struct RaceCalculator {
    func pressButton(for time: Int) -> Int {
        time
    }
    
    func getTimeLeft(ButtonPressedFor time: Int, raceDuration: Int) -> Int {
        raceDuration - time
    }
    
    func getDistance(buttonPressedFor speed: Int, raceLength: Int, raceDuration: Int) -> Int {
        let timeLeft = raceDuration - speed
        
        return speed * timeLeft
    }
    
    func getWaysToWin(race: (length: Int, distance: Int)) -> Int {
        var sum = 0
        
        for buttonPress in 0...race.length {
            let coverage = getDistance(buttonPressedFor: buttonPress, raceLength: race.distance, raceDuration: race.length)
            
            if coverage >= race.distance { sum += 1 }
        }
        
        return sum
    }
}

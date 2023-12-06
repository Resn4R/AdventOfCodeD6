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
    
    func getTimeLeft(ButtonPressedFor: time: Int, raceDuration: Int) -> Int {
        raceDuration - time
    }
}

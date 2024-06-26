//
//  CycleMood.swift
//  dataTest
//
//  Created by Caio Melloni dos Santos on 28/03/24.
//

// this class makes the relationship between Mood and Cycle

import SwiftData
import SwiftUI

public enum MoodType: Codable, Equatable, Hashable {
    case calm
    case happy
    case energetic
    case sleepy
    case irritated
    case anxious
    case sad
    case lowEnergy
    case apathetic
    case confused
    case verySelfCritical
    case emotional
}

@available(iOS 17, *)
@available(macOS 14, *)
@Model
public class CycleMood {
    public var date: Date
    
    
    public var mood: MoodType
    
    public init(date: Date, mood: MoodType) {
        self.date = date
        self.mood = mood
    }
    
    public var cycle: Cycle?
}

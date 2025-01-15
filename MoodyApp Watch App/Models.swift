//
//  Models.swift
//  MoodyApp
//
//  Created by malva on 15/01/25.
//
import Foundation

enum Mood: String, CaseIterable {
    case stressed = "Stressed"
    case excited = "Excited"
    case neutral = "Neutral"
    case relaxed = "Relaxed"
    
    var emoji: String {
        switch self {
        case .stressed: return "😰"
        case .excited: return "😃"
        case .neutral: return "😊"
        case .relaxed: return "😌"
        }
    }
}

struct MoodEntry: Identifiable {
    let id = UUID()
    let mood: Mood
    let heartRate: Double
    let timestamp: Date
}

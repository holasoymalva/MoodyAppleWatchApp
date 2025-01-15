//
//  MoodManager.swift
//  MoodyApp
//
//  Created by malva on 15/01/25.
//
import Foundation
import HealthKit
import SwiftUI
import Combine

class MoodManager: ObservableObject {
    private let healthStore = HKHealthStore()
    @Published var currentMood: Mood = .neutral
    @Published var heartRate: Double = 0
    @Published var moodHistory: [MoodEntry] = []
    
    init() {
        setupHealthKit()
    }
    
    private func setupHealthKit() {
        let heartRateType = HKQuantityType.quantityType(forIdentifier: .heartRate)!
        
        healthStore.requestAuthorization(toShare: [], read: [heartRateType]) { success, error in
            if success {
                self.startHeartRateQuery()
            }
        }
    }
    
    private func startHeartRateQuery() {
        let heartRateType = HKQuantityType.quantityType(forIdentifier: .heartRate)!
        let query = HKAnchoredObjectQuery(type: heartRateType, predicate: nil, anchor: nil, limit: HKObjectQueryNoLimit) { query, samples, deletedObjects, anchor, error in
            
            guard let samples = samples as? [HKQuantitySample] else { return }
            
            DispatchQueue.main.async {
                if let lastHeartRate = samples.last {
                    self.heartRate = lastHeartRate.quantity.doubleValue(for: HKUnit.count().unitDivided(by: .minute()))
                    self.analyzeMood()
                }
            }
        }
        
        healthStore.execute(query)
    }
    
    private func analyzeMood() {
        // Simple mood analysis based on heart rate variability
        // This is a basic implementation - you might want to use more sophisticated algorithms
        if heartRate > 100 {
            currentMood = .stressed
        } else if heartRate > 80 {
            currentMood = .excited
        } else if heartRate < 60 {
            currentMood = .relaxed
        } else {
            currentMood = .neutral
        }
        
        let entry = MoodEntry(mood: currentMood, heartRate: heartRate, timestamp: Date())
        moodHistory.append(entry)
    }
    
    func getPersonalizedAdvice() -> String {
        switch currentMood {
        case .stressed:
            return "Try taking deep breaths. Consider a short meditation session."
        case .excited:
            return "Channel your energy into something productive. Maybe it's time for a workout?"
        case .relaxed:
            return "Great state for creative work or planning. Make the most of your calm mind."
        case .neutral:
            return "Maintain your balance. Stay hydrated and keep up the good work!"
        }
    }
}

//
//  MoodView.swift
//  MoodyApp
//
//  Created by malva on 15/01/25.
//
import SwiftUI

struct MoodView: View {
    @EnvironmentObject var moodManager: MoodManager
    
    var body: some View {
        VStack {
            Text(moodManager.currentMood.emoji)
                .font(.system(size: 40))
            
            Text(moodManager.currentMood.rawValue)
                .font(.headline)
            
            Text("❤️ \(Int(moodManager.heartRate)) BPM")
                .font(.subheadline)
                .foregroundColor(.red)
        }
    }
}

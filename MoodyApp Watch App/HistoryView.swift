//
//  HistoryView.swift
//  MoodyApp
//
//  Created by malva on 15/01/25.
//
import SwiftUI

struct HistoryView: View {
    @EnvironmentObject var moodManager: MoodManager
    
    var body: some View {
        List(moodManager.moodHistory.prefix(5)) { entry in
            HStack {
                Text(entry.mood.emoji)
                VStack(alignment: .leading) {
                    Text(entry.mood.rawValue)
                        .font(.headline)
                    Text("❤️ \(Int(entry.heartRate)) BPM")
                        .font(.subheadline)
                }
                Spacer()
                Text(entry.timestamp, style: .time)
                    .font(.caption)
            }
        }
    }
}

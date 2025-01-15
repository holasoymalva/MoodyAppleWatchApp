//
//  ContentView.swift
//  MoodyApp Watch App
//
//  Created by malva on 14/01/25.
//

import SwiftUI
import HealthKit

struct ContentView: View {
    @StateObject private var moodManager = MoodManager()
    
    var body: some View {
        TabView {
            MoodView()
                .environmentObject(moodManager)
            AdviceView()
                .environmentObject(moodManager)
            HistoryView()
                .environmentObject(moodManager)
        }
        .tabViewStyle(PageTabViewStyle())
    }
}

#Preview {
    ContentView()
}

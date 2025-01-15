//
//  AdviceView.swift
//  MoodyApp
//
//  Created by malva on 15/01/25.
//

import SwiftUI


struct AdviceView: View {
    @EnvironmentObject var moodManager: MoodManager
    
    var body: some View {
        ScrollView {
            Text("Advice")
                .font(.headline)
            
            Text(moodManager.getPersonalizedAdvice())
                .font(.body)
                .multilineTextAlignment(.center)
                .padding()
        }
    }
}

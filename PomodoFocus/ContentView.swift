//
//  ContentView.swift
//  PomodoFocus
//
//  Created by Nikhil Barik on 14/06/24.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct ContentView: View {
    var body: some View {
            
            TabView{
                PomodoroView()
                    .tabItem {
                        Label ("Pomodoro", systemImage: "timer")
                }
                
                ShortBreakView()
                    .tabItem {
                        Label("Short Break", systemImage: "hourglass")
                }
                
                LongBreakView()
                    .tabItem {
                        Label("Long Break", systemImage:"hourglass.badge.plus")
                }
                
                SoundsView()
                    .tabItem {
                        Label("Sounds", systemImage:"ear")
                }
            }
            
        }
    }

#Preview(windowStyle: .automatic) {
    ContentView()
}

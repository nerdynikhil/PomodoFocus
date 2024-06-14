//
//  PomodoroView.swift
//  PomodoFocus
//
//  Created by Nikhil Barik on 14/06/24.
//

import SwiftUI

struct PomodoroView: View {
    @State private var timer: Timer?
    @State private var timeRemaining: TimeInterval = 25 * 60
    @State private var isRunning = false
    
    var body: some View {
        VStack {
            Text("PomodoFocus")
                .font(.largeTitle)
                .padding(.bottom, 20)
            
            Text(timeString(from: timeRemaining))
                .font(.system(size: 48))
                .padding(.bottom, 40)
            
            HStack(spacing: 20) {
                Button(action: startPauseTimer) {
                    HStack {
                        Image(systemName: isRunning ? "pause.fill" : "play.fill")
                        Text(isRunning ? "Pause" : "Start")
                    }
                    .font(.title)
                    .padding()
                    .background(Color.gray.opacity(0.2))
                    .foregroundColor(.primary)
                    .cornerRadius(10)
                }
                
                Button(action: resetTimer) {
                    HStack {
                        Image(systemName: "arrow.clockwise")
                        Text("Reset")
                    }
                    .font(.title)
                    .padding()
                    .background(Color.gray.opacity(0.2))
                    .foregroundColor(.primary)
                    .cornerRadius(10)
                }
            }
        }
        .padding()
    }
    
    func startPauseTimer() {
        if isRunning {
            pauseTimer()
        } else {
            startTimer()
        }
    }
    
    func startTimer() {
        isRunning = true
        timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { _ in
            if timeRemaining > 0 {
                timeRemaining -= 1
            } else {
                resetTimer()
            }
        }
    }
    
    func pauseTimer() {
        isRunning = false
        timer?.invalidate()
        timer = nil
    }
    
    func resetTimer() {
        isRunning = false
        timer?.invalidate()
        timer = nil
        timeRemaining = 25 * 60
    }
    
    func timeString(from timeInterval: TimeInterval) -> String {
        let minutes = Int(timeInterval) / 60
        let seconds = Int(timeInterval) % 60
        return String(format: "%02d:%02d", minutes, seconds)
    }
}

#Preview {
    PomodoroView()
}

//
//  SoundsView.swift
//  PomodoFocus
//
//  Created by Nikhil Barik on 14/06/24.
//

import SwiftUI

struct SoundsView: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Sounds on PomodoFocus is coming soon.")
                .font(.largeTitle)
                .multilineTextAlignment(.center)
                .padding(.bottom, 40)
            
            Text("In the meantime, you can enjoy music on:")
                .font(.title2)
                .multilineTextAlignment(.center)
                .padding(.bottom, 20)
            
            HStack(spacing: 20) {
                Link(destination: URL(string: "https://www.spotify.com")!) {
                    HStack {
                        Image(systemName: "music.note")
                        Text("Spotify")
                    }
                    .font(.title)
                    .padding()
                    .background(Color.gray.opacity(0.2))
                    .foregroundColor(.primary)
                    .cornerRadius(10)
                }
                
                Link(destination: URL(string: "https://www.apple.com/apple-music/")!) {
                    HStack {
                        Image(systemName: "music.note")
                        Text("Apple Music")
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
}

#Preview {
    SoundsView()
}

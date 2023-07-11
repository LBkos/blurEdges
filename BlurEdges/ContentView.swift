//
//  ContentView.swift
//  BlurEdges
//
//  Created by Константин Лопаткин on 11.07.2023.
//

import SwiftUI

struct ContentView: View {
    var colors: [Color] = [.black.opacity(0), .black, .black.opacity(0)]
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(spacing: 16) {
                Spacer(minLength: UIScreen.main.bounds.height / 3)
                
                ForEach(0...30, id: \.self) { item in
                    Text("item \(item)")
                        .foregroundColor(.black)
                        .frame(maxWidth: .infinity)
                        .font(.title)
                }
                
                Spacer(minLength: UIScreen.main.bounds.height / 3)
            }
        }
        .mask {
            LinearGradient(
                colors: colors,
                startPoint: .top,
                endPoint: .bottom
            )
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

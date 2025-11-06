//
//  ContentView.swift
//  Elvis
//
//  Created by CRUZ, JANAI on 11/4/25.
//

import SwiftUI

struct ContentView: View {
    @State private var message=""
    @State private var ImageName=""
    var body: some View {
        VStack {
            
    Text("What's So Funny 'Bout")
                .font(.largeTitle)
                .fontWeight(.black)
                .foregroundStyle(.purple)
            Spacer()
            
            Image(systemName: ImageName)
                .resizable()
                .scaledToFit()
                .frame(width: 300, height: 300)
            
            Text(message)
                .font(.largeTitle)
                .fontWeight(.black)
                .foregroundStyle(.purple)
            
            Spacer()
            
            HStack{
                Button("Peace") {
                    message="Peace"
                    ImageName="peacesign"
                }
                Button("Love") {
                    message="Love"
                    ImageName="heart"
                }
                Button("Understanding") {
                    message="Understanding"
                    ImageName="lightbulb"
                }
            }
            .tint(.purple)
            .buttonStyle(.borderedProminent)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}

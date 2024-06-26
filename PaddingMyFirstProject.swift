//
//  PaddingMyFirstProject.swift
//  MyFirstProject
//
//  Created by macbook on 26.02.2024.
//

import SwiftUI

struct PaddingMyFirstProject: View {
    var body: some View {
//        Text("Hello, World! This is fun.")
//            .background(Color.yellow)
//            //.padding()
//            .padding(.all, 10)
//            .padding(.leading, 20)
//            .background(Color.blue)
        
        
//        Text("Hello, World!")
//            .font(.largeTitle)
//            .fontWeight(.semibold)
//            .frame(maxWidth: .infinity, alignment: .leading)
//            .padding(.leading, 20)
//            //.background(Color.red)
        
        
        
        VStack(alignment: .leading) {
            Text("Hello, World!")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .padding(.bottom, 20)
            
            Text("This is the description of what we will do on this screen. It is multiple lines and we will align the text to the leading edge.")
                
        }
        .padding()
        .padding(.vertical, 10)
        .background(
            Color.white
                .cornerRadius(10)
                .shadow(
                    color: Color.black.opacity(0.3),
                    radius: 10,
                    x: 0.0, y: 10
                )
        )
        .padding(.horizontal, 10)
                    
                   
    }
}

#Preview {
    PaddingMyFirstProject()
}

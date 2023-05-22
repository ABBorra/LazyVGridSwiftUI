//
//  ContentView.swift
//  LazyGridBootCamp
//
//  Created by AB_Borra on 5/23/23.
//

import SwiftUI

struct ContentView: View {
    let coloum: [GridItem] = [
        GridItem(.flexible(), spacing: 6, alignment: nil),
        
        GridItem(.flexible(), spacing: 6, alignment: nil),
        
        GridItem(.flexible(), spacing: 6, alignment: nil),
    ]
    var body: some View {
        
        ScrollView {
            
            Rectangle()
                .frame(height: 200)
                .foregroundColor(.orange)
            LazyVGrid(
                
                columns: coloum,
                alignment: .center,
                spacing: 6, pinnedViews: [.sectionHeaders], content: {
                    
                    Section(header: Text("Section: 1")
                        .foregroundColor(Color.white)
                            
                        .font(.title)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .background(Color.blue)
                        .cornerRadius(5)
                        .padding(2)
                    )  {
                        
                        ForEach(0..<20) { index in
                            Rectangle()
                                .frame(height: 150)
                                .foregroundColor(.red)
                            
                        }
                    }
                    
                    Section(header: Text("Section: 2")
                        .foregroundColor(Color.white)
                            
                        .font(.title)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .background(Color.yellow)
                        .cornerRadius(5)
                        .padding(2)
                            
                    )  {
                        
                        ForEach(0..<45) { index in
                            Rectangle()
                                .frame(height: 150)
                                .foregroundColor(.green)
                            
                            
                        }
                    }
                    
                }).padding()
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

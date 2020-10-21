//
//  ContentView.swift
//  ColorPicker-SwiftUI-
//
//  Created by ddyack on 19.10.2020.
//

import SwiftUI

struct ContentView: View {
    @State var redSliderValue = Double.random(in: 0...255)
    @State var greenSliderValue = Double.random(in: 0...255)
    @State var blueSliderValue = Double.random(in: 0...255)
    
    var body: some View {
        ZStack {
            Color(.systemIndigo).edgesIgnoringSafeArea(.all)
            
            VStack {
                ColorView(red: redSliderValue, green: greenSliderValue, blue: blueSliderValue)
                
                ColorSlider(value: $redSliderValue, color: .red)
                ColorSlider(value: $greenSliderValue, color: .green)
                ColorSlider(value: $blueSliderValue, color: .blue)
                
                Spacer()
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



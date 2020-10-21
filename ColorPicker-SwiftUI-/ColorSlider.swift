//
//  ColorSlider.swift
//  ColorPicker-SwiftUI-
//
//  Created by ddyack on 19.10.2020.
//

import SwiftUI

struct ColorSlider: View {
    @Binding var value: Double
    @State var showAlert = false
    var color: Color
    
    var body: some View {
        HStack() {
            Text("\(lround(value))")
                .foregroundColor(.white)
        
            Slider(value: $value, in: 0...255)
                .accentColor(color)
            
            sliderField(sliderValue: $value, showAlert: $showAlert)
        }
    }
}

struct ColorSlider_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color(.red)
            ColorSlider(value: .constant(100), color: .blue)
        }
    }
}

struct sliderField: View {
    @Binding var sliderValue: Double
    @Binding var showAlert: Bool
    var body: some View {
        TextField("", value: $sliderValue, formatter: NumberFormatter(), onCommit: checker)
            .cornerRadius(15)
            .background(Color.white)
            .cornerRadius(5)
            .frame(maxWidth: 35)
            .alert(isPresented: $showAlert, content: {
                Alert(title: Text("Wrong number"), message: Text("Please enter a valid number"))
            })
    }
}

extension sliderField {
    func checker() {
        if sliderValue > 255 || sliderValue < 0 {
            showAlert = true
            sliderValue = 0
        }
    }
}

//
//  ColorView.swift
//  ColorPicker-SwiftUI-
//
//  Created by ddyack on 20.10.2020.
//

import SwiftUI

struct ColorView: View {
    let red: Double
    let green: Double
    let blue: Double
      
    var body: some View {
        Color(red: red / 255, green: green / 255, blue: blue / 255)
            .frame(height: 120)
            .clipShape(RoundedRectangle(cornerRadius: 25.0))
            .overlay(RoundedRectangle(cornerRadius: 25.0).stroke(Color.white, lineWidth: 5))
            .padding(.bottom, 50)
    }
}

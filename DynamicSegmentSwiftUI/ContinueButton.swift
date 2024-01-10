//
//  ContinueButton.swift
//  DynamicSegmentSwiftUI
//
//  Created by jay sabeen on 10/01/24.
//

import SwiftUI

struct ContinueButton: View {
    var title: String
    var textColour: Color
    var backgroundClr: Color
    
    var body: some View {
        Text(title)
            .frame(width: 280, height: 50)
            .background(backgroundClr.gradient)
            .foregroundColor(textColour)
            .font(.system(size: 20, weight: .bold, design: .default))
            .cornerRadius(10)
    }
}

#Preview {
    ContinueButton(title: "Continue", textColour: .white, backgroundClr: .blue)
}

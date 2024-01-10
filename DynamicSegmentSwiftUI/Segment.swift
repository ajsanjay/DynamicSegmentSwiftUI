//
//  Segment.swift
//  DynamicSegmentSwiftUI
//
//  Created by jay sabeen on 10/01/24.
//

import SwiftUI

struct Segment: View {
    
    var title: String
    var isSelected: Bool
    
    var body: some View {
        ZStack {
            VStack {
                Text(title)
                    .foregroundStyle(isSelected == true ? .white : .black)
            }
            .frame(width: 90, height: 90)
            .background(isSelected == true ? Color(.gray.withAlphaComponent(0.3)) : Color(.white))
        }
    }
}

#Preview {
    Segment(title: "Index 0", isSelected: true)
}

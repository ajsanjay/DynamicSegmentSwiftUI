//
//  SegmentsView.swift
//  DynamicSegmentSwiftUI
//
//  Created by jay sabeen on 10/01/24.
//

import SwiftUI

struct SegmentsView: View {
    
    @Binding var isShowingDetail: Bool
    @State var noOfCells: Int
    
    var body: some View {
        ZStack {
            VStack {
                HStack {
                    Spacer()
                    Button {
                        isShowingDetail = false
                    } label: {
                        Image(systemName: "xmark")
                    }
                    .padding()
                }
                HStack {
                    let data = (0...noOfCells-1).map { "Item \($0)" }
                    ScrollView {
                        LazyHGrid(rows: [GridItem(.flexible())], content: {
                            ForEach(data, id: \.self) { item in
                                Segment(title: item, isSelected: true)
                            }
                        })
                    }
                }
                Spacer()
            }
        }
    }
}

#Preview {
    SegmentsView(isShowingDetail: .constant(true), noOfCells: 2)
}

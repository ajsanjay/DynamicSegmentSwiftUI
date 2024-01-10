//
//  SegmentInfo.swift
//  DynamicSegmentSwiftUI
//
//  Created by jay sabeen on 10/01/24.
//

import SwiftUI

struct SegmentInfo: View {
    
    @State var noOfInput = ""
    @State var isShowingDetail: Bool = false
    @State private var noOfcells: Int = Int()
    
    var body: some View {
        NavigationView {
            VStack {
                TextField("Input No of Segments", text: $noOfInput)
                    .padding()
                    .font(.system(size: 20, weight: .semibold))
                    .background(Color.gray.opacity(0.3).cornerRadius(5))
                    .padding(.bottom)
                Button {
                    let noOfSegment = Int(noOfInput)
                    if noOfSegment != nil {   
                        noOfcells = noOfSegment ?? 0
                        isShowingDetail = true
                    } else {
                        isShowingDetail = false
                    }
                } label: {
                    ContinueButton(title: "Continue", textColour: .white, backgroundClr: .blue)
                }
            }
            .padding()
        }
        .fullScreenCover(isPresented: $isShowingDetail, content: {
            SegmentsView(isShowingDetail: $isShowingDetail, noOfCells: noOfcells)
        })
    }
}

#Preview {
    SegmentInfo()
}

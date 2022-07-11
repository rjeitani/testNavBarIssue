//
//  SwiftUIView.swift
//  testNavBarIssue
//
//  Created by Rachid Jeitani on 7/10/22.
//

import SwiftUI
import Charts

struct SwiftUIView: View {
    var body: some View {
        testView()
    }
}


struct testView: View {
    
    @State private var pickerState: Bool = false
    
    var body: some View {
        VStack (alignment: .leading) {
            Text("Test").padding()
            Chart {
                BarMark(x: .value("Month", 1), y: .value("Count", 3))
                BarMark(x: .value("Month", 2), y: .value("Count", 7))
                BarMark(x: .value("Month", 3), y: .value("Count", 2))
                BarMark(x: .value("Month", 4), y: .value("Count", 1))
            }
        } .navigationTitle("")
            .navigationBarTitleDisplayMode(.inline)
    }
    
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}

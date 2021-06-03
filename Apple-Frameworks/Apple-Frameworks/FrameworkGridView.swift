//
//  FrameworkGridView.swift
//  Apple-Frameworks
//
//  Created by Sagar Dagdu on 03/06/21.
//

import SwiftUI

struct FrameworkGridView: View {
    let columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible()),
    ]
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns, content: {
                    ForEach(MockData.frameworks) { framework in
                        FrameworkView(framework: framework)
                    }
                })
            }.navigationTitle("🍎 Frameworks")
        }
    }
}

struct FrameworkGridView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkGridView()
            .preferredColorScheme(.dark)
    }
}

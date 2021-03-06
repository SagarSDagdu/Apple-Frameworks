//
//  FrameworkGridViewModel.swift
//  Apple-Frameworks
//
//  Created by Sagar Dagdu on 03/06/21.
//

import Foundation
import SwiftUI

final class FrameworkGridViewModel: ObservableObject {
    
    /// Columns that need to be shown in the grid
    let columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible()),
    ]

    /// Whenever a published var is changed, any view which has @Binding to it is redrawn
    @Published var isShowingDetailView = false
    
    
    /// We changed the published var when the selected framework is set. This will be set when the user taps any framework on the GridView.
    var selectedFramework: Framework? {
        didSet {
            isShowingDetailView = true
        }
    }
    
    /// This list should ideally be fetched from network / database and needs to be a published var
    let frameworkList = MockData.frameworks
    
}

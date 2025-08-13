//
//  FrameworkGridViewModel.swift
//  Apple_Frameworks
//
//  Created by H4MM3R-9 on 11/08/2025.
//

import SwiftUI

final class FrameworkGridViewModel: ObservableObject {
    
    var selectedFramework: Framework? {
        didSet {
            isTapped = true
        }
    }
    
    @Published var isTapped = false
}

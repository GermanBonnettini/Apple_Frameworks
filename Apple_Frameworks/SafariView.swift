//
//  SafariView.swift
//  Apple_Frameworks
//
//  Created by H4MM3R-9 on 12/08/2025.
//

import SwiftUI
import SafariServices

struct SafariView: UIViewControllerRepresentable {
    
    let url: URL
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<SafariView>) -> some SFSafariViewController {
            SFSafariViewController(url: url)
    }
    
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: UIViewControllerRepresentableContext<SafariView>) {
        
    }
}

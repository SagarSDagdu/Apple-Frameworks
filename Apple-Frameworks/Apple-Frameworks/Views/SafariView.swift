//
//  SafariView.swift
//  Apple-Frameworks
//
//  Created by Sagar Dagdu on 04/06/21.
//

import SwiftUI
import SafariServices

struct SafariView: UIViewControllerRepresentable {
    
    let link: String
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<SafariView>) -> SFSafariViewController {
        let safariController = SFSafariViewController(url: URL(string: link)!)
        return safariController
    }
    
    func updateUIViewController(_ uiViewController: SFSafariViewController, context: UIViewControllerRepresentableContext<SafariView>) {
        
    }
    
}

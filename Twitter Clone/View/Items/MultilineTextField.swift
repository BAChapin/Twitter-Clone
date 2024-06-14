//
//  MultilineTextField.swift
//  Twitter Clone
//
//  Created by Brett Chapin on 6/13/24.
//

import SwiftUI

struct MultilineTextField: UIViewRepresentable {
    
    @Binding var text: String
    
    func makeUIView(context: Context) -> some UIView {
        let text = UITextView()
        text.allowsEditingTextAttributes = true
        text.isEditable = true
        text.text = "Type Something"
        text.isUserInteractionEnabled = true
        text.textColor = .gray
        text.font = .systemFont(ofSize: 20)
        text.delegate = context.coordinator
        return text
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        print("Text")
    }
    
    func makeCoordinator() -> Coordinator {
        .init(parent: self)
    }
}

extension MultilineTextField {
    class Coordinator: NSObject, UITextViewDelegate {
        var parent: MultilineTextField
        
        init(parent: MultilineTextField) {
            self.parent = parent
        }
        
        func textViewDidBeginEditing(_ textView: UITextView) {
            textView.text = ""
            textView.textColor = .black
        }
        
        func textViewDidChange(_ textView: UITextView) {
            self.parent.text = textView.text
        }
    }
}

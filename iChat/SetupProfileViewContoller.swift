//
//  SetupProfileViewContoller.swift
//  iChat
//
//  Created by admin on 18.01.2022.
//

import UIKit

class SetupProfileViewContoller: UIViewController {
    
    let fillImageView = AddPhotoView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        setupConstraints()
    }
    
}

// MARK: - Setup Constraints
extension SetupProfileViewContoller {
    
    private func setupConstraints() {
        
        fillImageView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(fillImageView)
        
        NSLayoutConstraint.activate([
            fillImageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 160),
            fillImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }
}

// MARK: - SwiftUI
import SwiftUI

struct SetupProfileProvider: PreviewProvider {
    static var previews: some View {
        ContainerView().edgesIgnoringSafeArea(.all)
    }
    
    struct ContainerView: UIViewControllerRepresentable {
        
        let setupProfileVC = SetupProfileViewContoller()
        
        func makeUIViewController(context: UIViewControllerRepresentableContext<SetupProfileProvider.ContainerView>) -> SetupProfileViewContoller {
            return setupProfileVC
        }
        
        func updateUIViewController(_ uiViewController: SetupProfileProvider.ContainerView.UIViewControllerType, context: UIViewControllerRepresentableContext<SetupProfileProvider.ContainerView>) {
            
        }
        
    }
}

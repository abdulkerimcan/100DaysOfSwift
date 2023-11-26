//
//  DetailViewController.swift
//  Project1
//
//  Created by Abdulkerim Can on 26.11.2023.
//

import UIKit

final class DetailViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    var imagePath: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = imagePath
        navigationItem.largeTitleDisplayMode = .never
        uploadImage()
    }
    
    private func uploadImage() {
        if let imagePath = imagePath {
            imageView.image = UIImage(named: imagePath)
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.hidesBarsOnTap = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.hidesBarsOnTap = false
    }
}

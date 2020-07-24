//
//  ViewController.swift
//  TestMvpMe
//
//  Created by Belal medhat on 2/3/20.
//  Copyright © 2020 Belal medhat. All rights reserved.
//

import UIKit
import SDWebImage
class ViewController: UIViewController,DogViewProtocols {
    var presenter: DogPresenterProtocols?
    
 
//    var presenter = ViewProtocols(view: self)
    override func viewDidLoad() {
        super.viewDidLoad()
        self.presenter = DogPresenter(view: self)
        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var DogImage: UIImageView!
    
    @IBAction func PressButt(_ sender: UIButton) {
          self.presenter?.callApi()
    }
    func ShowDogImage(UrlString:String) {
        DogImage.sd_setImage(with: URL(string: UrlString), completed: nil)
     }
}


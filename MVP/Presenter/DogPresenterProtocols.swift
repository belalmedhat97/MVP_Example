//
//  PresenterProtocols.swift
//  MVP
//
//  Created by Belal medhat on 7/24/20.
//  Copyright © 2020 Belal medhat. All rights reserved.
//

import Foundation
protocol DogPresenterProtocols {
    var view:DogViewProtocols? {get set}
    func callApi()
}
protocol DogViewProtocols {
    var presenter:DogPresenterProtocols? {get set}
    func ShowDogImage(UrlString:String)
}

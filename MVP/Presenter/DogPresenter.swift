//
//  Presenter.swift
//  TestMvpMe
//
//  Created by Belal medhat on 2/3/20.
//  Copyright © 2020 Belal medhat. All rights reserved.
//

import Foundation
import Alamofire
class DogPresenter:DogPresenterProtocols{
    var view: DogViewProtocols?
    init(view:DogViewProtocols){
        self.view = view
    }
    func callApi() {
         let GetImageUrl = "https://dog.ceo/api/breeds/image/random"
            Alamofire.request(GetImageUrl, method: .get, parameters: nil).responseJSON {
                response in
                    do {
                        if response.response?.statusCode == 200 {
                            let pars = try JSONDecoder().decode(DogData.self, from: response.data!)
                            print(pars.message!)
                            self.view?.ShowDogImage(UrlString: pars.message ?? "")
                        }
                    }catch{
                        print(error)
                    }
                }
            }

    }

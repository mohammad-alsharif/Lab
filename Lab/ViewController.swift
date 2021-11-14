//
//  ViewController.swift
//  Lab
//
//  Created by mohammad.alsharif on 09/04/1443 AH.
//

import UIKit

struct Cat {
    var id: Int
    var url: String
    var webpurl: String
    var x: Double
    var y: Double
}

class ViewController: UIViewController {
    
    func catAPI() {
    
    var catURL = URLComponents()

    catURL.scheme = "https"
    catURL.host = "github.com"
    catURL.path = "/public-apis/public-apis"
        
        let catRequestURL = catURL.url!
        let catRequest = URLRequest(url: catRequestURL)
        
        let Session = URLSession.shared
        Session.configuration.httpShouldSetCookies = false
        
        let fetchDataTask = Session.dataTask(with: catRequest) {
        (data: Data?, response: URLResponse?, err: Error?) in
            print(String(data: data!, encoding: .utf8))
        }
        
        fetchDataTask.resume()
    }


    override func viewDidLoad() {
        super.viewDidLoad()
        catAPI()
    }


}


//
//  ResidentApi.swift
//  StarTrivia
//
//  Created by Nicholas Coggin on 4/1/19.
//  Copyright © 2019 Nicholas Coggin. All rights reserved.
//

import Foundation
import Alamofire

class ResidentApi {
    
    func getResident(url: String, completion: @escaping ResidentResponseCompletion) {
        
        guard let url = URL(string: url) else { return }
        AF.request(url).responseJSON { (response) in
            if let error = response.result.error {
                debugPrint(error.localizedDescription)
                completion(nil)
                return
            }
            
            guard let data = response.data else { return completion(nil) }
            let jsonDecoder = JSONDecoder()
            do {
                let resident = try jsonDecoder.decode(Resident.self, from: data)
                completion(resident)
            } catch {
                debugPrint(error.localizedDescription)
                completion(nil)
            }
        }
    }
}

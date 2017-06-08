//
//  String.swift
//  Sabbath School
//
//  Created by Vitaliy Lim on 2017-06-01.
//  Copyright © 2017 Adventech. All rights reserved.
//

import Foundation

extension String {
    
    
    /**
     Base 64 decode.
     
     - returns: A decoded String.
     */
    func base64Decode() -> String? {
        guard let decodedData = Data(base64Encoded: self, options: Data.Base64DecodingOptions.init(rawValue: 0)) else {
            return nil
        }
        
        guard let decodedString = String(data: decodedData, encoding: String.Encoding.utf8) else {
            return nil
        }
        
        return decodedString
    }
}
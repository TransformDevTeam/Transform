//
//  Extensions.swift
//  Transform
//
//  Created by user181880 on 11/10/20.
//  Copyright © 2020 Ilan Harari. All rights reserved.
//

import Foundation

extension Date
{
    func toString( dateFormat format  : String ) -> String
    {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = format
        return dateFormatter.string(from: self)
    }

}

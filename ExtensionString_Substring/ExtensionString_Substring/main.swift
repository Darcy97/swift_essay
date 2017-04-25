//
//  main.swift
//  ExtensionString_Substring
//
//  Created by 张皓 on 2017/4/25.
//  Copyright © 2017年 Darcy. All rights reserved.
//

import Foundation

extension String {
    func subString(with:(start: Int,end: Int)) -> String {
        let str = self
        
        let startIndex = str.index(str.startIndex, offsetBy: with.start)
        let endIndex = str.index(str.startIndex, offsetBy: with.end)
        
        
        
        return str.substring(with:
            Range.init(uncheckedBounds:
                (lower: startIndex,
                 upper: endIndex)))
    }
}

let str = "Hello, World!"

print(str)

print(str.subString(with: (7, 13)))

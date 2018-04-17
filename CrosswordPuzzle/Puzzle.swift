//
//  Puzzle.swift
//  CrosswordPuzzle
//
//  Created by Devontae Reid on 4/17/18.
//  Copyright © 2018 Devontae Reid. All rights reserved.
//

import UIKit

class Puzzle: NSObject, NSCoding {
    var allWords = [Word]()
    var lines = [String]()
    
    
    func encode(with aCoder: NSCoder) {
        aCoder.encode(allWords, forKey: "words")
        aCoder.encode(lines, forKey: "lines")
    }
    
    required init?(coder aDecoder: NSCoder) {
        self.allWords = aDecoder.decodeObject(forKey: "words") as! [Word]
        self.lines = aDecoder.decodeObject(forKey: "lines") as! [String]
    }
}

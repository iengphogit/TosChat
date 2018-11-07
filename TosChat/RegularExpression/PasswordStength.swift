//
//  PasswordStength.swift
//  TosChat
//
//  Created by Iengpho on 11/6/18.
//  Copyright © 2018 Iengpho. All rights reserved.
//

import UIKit

enum PasswordStength: Int {
    
    case None
    case Weak
    case Moderate
    case Strong
    
    
    
    static func checkStrength(password: String) -> PasswordStength {
        let len: Int = password.count
        var strength: Int = 0
        
        switch len {
        case 0:
            return .None
        case 1...3:
            strength += 1
        case 4...6:
            strength += 2
        default:
            strength += 3
        }
        
        //Upper case, Lower case, Number & Symbols
        var patterns: [String]  {
            return ["^(?=.*[A-Z]).*$", "^(?=.*[a-z]).*$", "^(?=.*[0-9]).*$", "^(?=.*[!@#%&-_=:;\"'<>,`~\\*\\?\\+\\[\\]\\(\\)\\{\\}\\^\\$\\|\\\\\\.\\/]).*$"]
        }
         
        
        switch strength {
            
        case 0: return .None
        case 2: return .Weak
        case 3: return .Moderate
        default:
            return .Strong
            
        }
        
    }
    
    
}

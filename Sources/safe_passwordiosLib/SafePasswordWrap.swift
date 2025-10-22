//
//  SafePasswordWrap.swift
//  safe_passwordiosLib
//
//  Created by Maria Castillo on 22/10/25.
//

import Foundation

@objc
public enum PasswordStrengthW:Int {
    
    case weak = 0
    case moderate = 1
    case strong = 2



}


@objcMembers
@objc(SafePasswordWrap)
public class SafePasswordWrap: NSObject {
    @objc
    public func generatePasswordW(
        length:Int,
        uppercase:Bool,
        numbers:Bool,
        symbols:Bool
    )->String {
        return generatePassword(length: UInt64(length), uppercase: uppercase, numbers: numbers, symbols: symbols)
    }
    
    @objc
    public func checkStrengthW(password:String)->PasswordStrengthW {
        let strength = checkStrength(password: password)
        if strength == .weak {
            return .weak
        }else if strength == .moderate {
            return .moderate
        }else {
            return .strong
        }
    }
}

//
//  SafePasswordWrap.swift
//  safe_passwordiosLib
//
//  Created by Maria Castillo on 22/10/25.
//

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
    public func checkStrengthW(password:String)->Bool {
        return checkStrength(password: password)
    }
}

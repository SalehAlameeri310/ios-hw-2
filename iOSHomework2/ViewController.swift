//
//  ViewController.swift
//  iOSHomework2
//
//  Created by Bodour Alrashidi on 6/7/20.
//  Copyright © 2020 Bodour Alrashidi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var membersNamesArray  : [String] = [""]
    
    var convertToLetter = true
    @IBOutlet weak var secretsocietynamelabel: UILabel!
       @IBOutlet weak var nametextfield: UITextField!
       @IBAction func Addmember(_ sender: Any) {
        
        let member = nametextfield.text!
        
        // MARK: -   1️⃣ تحت الخط membersNamesArray إلي المصفوفه memberقم بإضافة المتغير
        membersNamesArray.append(member)
        
        // MARK: -   النهاية
        
        nametextfield.text = ""
    }
    
    
    
    
    @IBAction func letterButton(_ sender: Any) {
        
        // MARK: -  4️⃣ functionCall داخل المتغير  secretNameLetter قم باستدعاء الدالة
        
        let functionCall = secretNameLetter(membernamearray: membersNamesArray)
        
        
        // MARK: -   النهاية
        
        
        secretsocietynamelabel.text =  functionCall
    }
    
    
    
    
    @IBAction func emojiButton(_ sender: Any) {
        
        
        
        // MARK: -  5️⃣ functionCall داخل المتغير  secretNameEmoji قم باستدعاء الدالة
        
        let functionCall = secretNametoEmoji(membernamearray: membersNamesArray)
        
        // MARK: -   النهاية
        
        secretsocietynamelabel.text =  functionCall
        
        
    }
    
    
    
    
    // MARK: - 2️⃣ تحت هذا الخط secretNameLetter قم بكتابة الداله
    var name = ""
    
    func secretNameLetter (membernamearray:[String])-> String
    {
            for i in 0..<membersNamesArray.count {
                name += String(membersNamesArray[i].prefix(1).uppercased())
            }
            return name
        
        }
    

    // MARK: -   النهاية
    
    
    
    
    
    // MARK: - 3️⃣ تحت هذا الخط secretNameEmoji قم بكتابة الداله
   
    var emojisWithLetter = ["A":"🐜","B":"🐻","C":"🐱","D":"🐶","E":"🐘","F":"🐠","G":"🦎","H":"🐎","I":"📞","J":"🍑","K":"🏛","L":"🚩","M": "🕓","N":"🎊","O":"💩","P":"🖼","Q":"🛍","R":"💝","S":"☯️","T":"🟣","U":"😁","V":"🌅","W":"🦷","X":"🧩","Y":"🎹","Z":"🖥"]
    var finalstring = ""
    var firstchar = ""
    func secretNametoEmoji (membernamearray:[String])-> String {
   for i in membersNamesArray {
        
    firstchar =  (String(i.prefix(1).uppercased()))
    for (letter, emoji) in emojisWithLetter {
        if letter == firstchar {
            finalstring.append(emoji)
        }
        
        
        
    }
   

    
    /*  if  membersNamesArray[i].prefix(1) == letters[i] {
                //print(",ICH",membersNamesArray[i].prefix(1))
                //print(letters[i])
                finalstring += emojis[i]
            }*/
     
        }
            return finalstring
    }
    
    
    // MARK: -   النهاية
    
    
    


}

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
<<<<<<< HEAD
    
    var convertToLetter = true
    @IBOutlet weak var secretsocietynamelabel: UILabel!
       @IBOutlet weak var nametextfield: UITextField!
       @IBAction func Addmember(_ sender: Any) {
=======
    
    var convertToLetter = true
    @IBOutlet weak var secretSocietyNameLabel: UILabel!
    @IBOutlet weak var nameTextField: UITextField!
    @IBAction func addMember(_ sender: Any) {
        
        let member = nameTextField.text!
        
        // MARK: -   1️⃣ تحت الخط membersNamesArray إلي المصفوفه memberقم بإضافة المتغير
        membersNamesArray.append(member)
        
        // MARK: -   النهاية
        
        nameTextField.text = ""
    }
    
    
    
    
    @IBAction func letterButton(_ sender: Any) {
        
        // MARK: -  4️⃣ functionCall داخل المتغير  secretNameLetter قم باستدعاء الدالة
        
        var functionCall = secretNameLetter(membernamearray: membersNamesArray)
        
>>>>>>> 59ced895188e3d887c7415b38c352baa2f71e4ec
        
        // MARK: -   النهاية
        
<<<<<<< HEAD
        // MARK: -   1️⃣ تحت الخط membersNamesArray إلي المصفوفه memberقم بإضافة المتغير
        membersNamesArray.append(member)
        
        // MARK: -   النهاية
=======
>>>>>>> 59ced895188e3d887c7415b38c352baa2f71e4ec
        
        secretSocietyNameLabel.text =  functionCall
    }
    
    
    
    
<<<<<<< HEAD
    @IBAction func letterButton(_ sender: Any) {
        
        // MARK: -  4️⃣ functionCall داخل المتغير  secretNameLetter قم باستدعاء الدالة
        
        let functionCall = secretNameLetter(membernamearray: membersNamesArray)
=======
    @IBAction func emojiButton(_ sender: Any) {
>>>>>>> 59ced895188e3d887c7415b38c352baa2f71e4ec
        
        
        // MARK: -   النهاية
        
<<<<<<< HEAD
        
        secretsocietynamelabel.text =  functionCall
    }
    
    
    
    
    @IBAction func emojiButton(_ sender: Any) {
        
        
        
        // MARK: -  5️⃣ functionCall داخل المتغير  secretNameEmoji قم باستدعاء الدالة
        
        let functionCall = secretNametoEmoji(membernamearray: membersNamesArray)
        
        // MARK: -   النهاية
        
        secretsocietynamelabel.text =  functionCall
=======
        // MARK: -  5️⃣ functionCall داخل المتغير  secretNameEmoji قم باستدعاء الدالة
        
        var functionCall = secretNametoEmoji(membernamearray: membersNamesArray)
        
        // MARK: -   النهاية
        
        secretSocietyNameLabel.text =  functionCall
>>>>>>> 59ced895188e3d887c7415b38c352baa2f71e4ec
        
        
    }
    
    
    
    
    // MARK: - 2️⃣ تحت هذا الخط secretNameLetter قم بكتابة الداله
    var name = ""
    
    func secretNameLetter (membernamearray:[String])-> String
    {
            for i in 0..<membersNamesArray.count {
<<<<<<< HEAD
                name += String(membersNamesArray[i].prefix(1).uppercased())
=======
                name += String(membersNamesArray[i].prefix(1))
>>>>>>> 59ced895188e3d887c7415b38c352baa2f71e4ec
            }
            return name
        
        }
<<<<<<< HEAD
    

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
    
    
    
=======
    

    // MARK: -   النهاية
    
    
    
    
    
    // MARK: - 3️⃣ تحت هذا الخط secretNameEmoji قم بكتابة الداله
   
    var emojisWithLetter = ["A":"💜","B":"💧","C":"☔️","D":"🌈","E":"🏄‍♂️","F":"🪁","G":"⛸","H":"🥌","I":"🎣","J":"💽","K":"🏛","L":"🚩","M": "🕓","N":"🎊","O":"🧸","P":"🖼","Q":"🛍","R":"💝","S":"☯️","T":"🟣","U":"♥️","V":"🌅","W":"🟦","X":"🧩","Y":"😍","Z":"🖥"]
    var finalstring = ""
    var firstchar = ""
    func secretNametoEmoji (membernamearray:[String])-> String {
       for i in membersNamesArray {

        firstchar =  (String(i.prefix(1)).uppercased())
        for (letter, emoji) in emojisWithLetter {
            if letter == firstchar {
                finalstring.append(emoji)}
        }
        }
        return finalstring
        
    }

 
    // MARK: -   النهاية
    
    // bonus

        func encryptWith(emoji : Bool, array : [ String]) -> String {
            if emoji{
                return secretNametoEmoji(membernamearray: membersNamesArray)}
                else{
                return secretNameLetter(membernamearray: membersNamesArray)}
}







}
>>>>>>> 59ced895188e3d887c7415b38c352baa2f71e4ec


}

//
//  Character.swift
//  ObjectOrientedAction
//
//  Created by Lane Terry on 10/12/16.
//  Copyright © 2016 Lane Terry. All rights reserved.
//

import Foundation

class Character {
    var name: String
    var health = 100
    var mana = 100
    
    var inventory: [Item] = [Item(name: "Wand of Healing", goldValue: 500), Item(name: "Axe of Murder", goldValue: 1000)]
    
    
    //var bookInventory: [Books] = [Books(bookName: "The Death of a Coder", checkedOut true),Books(bookName: "The Code you didn't Know", checkedOut true)]
    

    
    init(name: String) {
        self.name = name
    }
    
    func addItem(_name: String, _value: Int) {
        let newItem = Item(name: _name, goldValue: _value)
        inventory.append(newItem)
    }
    
  //  func addbook(_bookName: String, _value: Int) {
    //    let newbook = Books(bookName: _bookName, BookNumber: _value)
      //  bookInventory.append(newbook)
   // }

    
   // func attack() {
       // print("\(name) attacks")
    //}
}

class Mage: Character {
    enum Spell: Int {
        case Fireball = 100
        case IceBlast = 80
        case LightningBolt = 50
    }
    
    override init(name: String) {
        super.init(name: name)
        health = 50
        mana = 200
    }
    
    func attack(spell: Spell) {
        print("\(name) casts \(spell). It deals \(spell.rawValue) damage.")
    }
}


class Warrior: Character {
    enum Weapon: Int {
        case Axe = 100
        case Bow = 80
        case Sword = 50
    }
    
    override init(name: String) {
        super.init(name: name)
        health = 200
        mana = 50
    }
    
    func attack(weapon: Weapon) {
        if weapon == .Bow {
            print("\(name) shoots an arrow from his \(weapon) dealing \(weapon.rawValue) damage.")
        } else {
            print("\(name) attacks with his \(weapon) dealing \(weapon.rawValue) damage.")
        }
    }
}

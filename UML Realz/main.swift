//
//  main.swift
//  UML Realz
//
//  Created by elev on 17/05/2018.
//  Copyright © 2018 elev. All rights reserved.
//

import Foundation


//Starter med at lave alle classes, så de bare kan kaldes senere i koden
class PCShop {
    var gamer : Bool;
    var brandID : Int;
    var laptop : Bool;
    var name : String;
    
    init(gamer : Bool, brandID : Int, laptop : Bool, name : String) {
        self.gamer = gamer;
        self.brandID = brandID;
        self.laptop = laptop;
        self.name = name;
    }
}


class Payment: PCShop {
    var price : Double;
    var paymentMethod : String;
    var paymentSuccess : Bool;
    var coupon = false;
    
    init(price : Double, paymentMethod : String, paymentSuccess : Bool, gamer : Bool, brandID : Int, laptop : Bool, name : String) {
        self.price = price;
        self.paymentMethod = paymentMethod;
        self.paymentSuccess = paymentSuccess;
        super.init(gamer: gamer, brandID: brandID, laptop: laptop, name: name);
    }
}

class PC {
    let name : String;
    let brand : String;
    let id : Int;
    var price : Double;
    let graphicsCard : String;
    let processor : String;
    let RAM : String;
    let screen : String;
    
    init(name : String, brand : String, id : Int, price : Double, graphicsCard : String, processor : String, RAM : String, screen : String) {
        
        self.name = name;
        self.brand = brand;
        self.id = id;
        self.price = price;
        self.graphicsCard = graphicsCard;
        self.processor = processor;
        self.RAM = RAM;
        self.screen = screen;
        
        var description : String {
            return "\(name), \(brand)"
        }
    }
}


    var chosenPC: PC
    chosenPC = PC.init(name: "", brand: "", id: 0, price: 0.0, graphicsCard: "", processor: "", RAM: "", screen: "")



let MSI1 = PC.init(name: "QE40", brand: "MSI", id: 1, price: 199.95, graphicsCard: "GTX 1060", processor: "8700HQ", RAM: "DDR4 16GB", screen: "1920x1080")



func buyCommands() {
    let buyAction = readLine()
    switch buyAction {
    case "buy PC1"?:
        chosenPC = MSI1
    default:
        break
    }
}
//TODO: Fix chosen PC Description
print(chosenPC)



class User {
    var id : Int;
    var name : String;
    var password : String;
    var info : String;
    
    init(id:Int, name:String, password:String, info:String) {
        self.id = id;
        self.name = name;
        self.password = password;
        self.info = info;
    }
}

let newUser = User.init(id: 1, name: "Nilas", password: "123", info: "Im alive!")





print("Hello User! Please log in.")
print("Whats your username?")
if readLine() == newUser.name {
    print("Password:")
    if readLine() == newUser.password{
        print("You have sucessfully logged in. What do you want to do?")
    }
}


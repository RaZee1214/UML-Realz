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
    let RAM : [String : Int];
    let screen : [String : Int];
    
    init(name : String, brand : String, id : Int, price : Double, graphicsCard : String, processor : String, RAM : [String : Int], screen : [String : Int]) {
        
        self.name = name;
        self.brand = brand;
        self.id = id;
        self.price = price;
        self.graphicsCard = graphicsCard;
        self.processor = processor;
        self.RAM = RAM;
        self.screen = screen;
    }
}
//fsdfsdfsd


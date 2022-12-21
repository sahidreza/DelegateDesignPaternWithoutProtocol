//
//  main.swift
//  Delegate Design Patern
//
//  Created by Sahid Reza on 21/12/22.
//


class Developer
{
     var managerReference: Manager?

    func developerWillAddTwoNumber(a: Int, b: Int)
    {
        let result = a + b
        managerReference?.didFinishAddingTwoNumbers(result: result)
    }
    
    
}

class Manager {
    var developer: Developer?

    init(developer: Developer) {
        self.developer = developer
        developer.managerReference = self
        
        
    }
    
    func addTwoNumber(x: Int, y: Int)
    {
        developer?.developerWillAddTwoNumber(a: x, b: y)
    }

    func didFinishAddingTwoNumbers(result: Int)
    {
        print("result of addition = \(result)")
    }

   
}

let objManager = Manager(developer: Developer())
objManager.addTwoNumber(x: 10, y: 10)


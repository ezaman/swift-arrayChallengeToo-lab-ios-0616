//
//  ViewController.swift
//  ArrayChallengeDeuce2
//
//  Created by James Campagno on 7/7/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // This represents our deliLine.
    var deliLine: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    //This function adds names of customers to the line. If Billy or Meg are on the line, they automatically get preference and placed at 0, first one line
    
    func addNameToDeliLine (name: String)-> String {
        var line: String = ""
        if name == "Billy Crystal" || name == "Meg Ryan" {
            deliLine.insert(name, atIndex: 0)
        }else{
            deliLine.append(name)
        }
        
    //This if statement has every other scenario of whether or not someone is Billy or Meg as well as if another name is first on the line
        
        if (deliLine.indexOf(name)==0) {
            
            if (name == "Billy Crystal") {
                line = "Welcome Billy! You can sit wherever you like."
            }else if (name == "Meg Ryan") {
                line = "Welcome Meg! You can sit wherever you like."
            }else {
                line = "Welcome \(name), you're first in line!"
            }
        }
        else {
            let index = deliLine.indexOf(name)
            line = "Welcome \(name), you're number \(index! + 1) in line."
        }
        return line
    }
    
    // If nobody is on line, then the first guest gets served right away
    
    func nowServing ()-> String {
        if deliLine.isEmpty {
            return "There is no-one to be served"
        }else{
            let newGuest = deliLine.removeAtIndex(0)
            return "Now serving \(newGuest)"
        }
        
    }
    
    //returns a string list of people on line if it isnt empty by using enumeration
    
    func deliLineDescription() -> String {
        var currentLine = ""
        if deliLine.isEmpty {
            currentLine = "The line is currently empty"
        }else{
            for (index, person) in deliLine.enumerate() {
                currentLine = "The line is: \n\(index + 1). \(person)"
            }
            
        }
        return currentLine
    }
}


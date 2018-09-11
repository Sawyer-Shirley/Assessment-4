//
//  main.swift
//  Assessment4
//
//  Created by Ryan Brashear on 9/10/18.
//  Copyright © 2018 Ryan Brashear. All rights reserved.
//

import Foundation

//1. Create a class called School. Give it properties to model:
// -the name of the school
// -the number of students that attend
// -if it is a public or private school
// -the year it was built
//
// Add a function called schoolDescription to the School class that will print out "\(name of school) was founded in \(the year it was built) and has \(number of students) currently in attendance"

// Create an instance of school and then call it's schoolDescription function

class School {
    let name: String
    var numberOfStudents: Int
    var publicSchool: Bool = true
    let yearBuilt: Int
    
    init(name: String, numberOfStudents: Int, yearBuilt: Int) {
        self.name = name
        self.numberOfStudents = numberOfStudents
        self.yearBuilt = yearBuilt
    }
    func schoolDescription() {
        print("\(name) was founded in \(yearBuilt) and has \(numberOfStudents) students currently in attendance.")
    }
}

let school1 = School(name: "McNugget Elementary", numberOfStudents: 102, yearBuilt: 1945)

school1.schoolDescription()

//2. Create a HighSchool class that inherits from our base school class. Add a property that will represent a rival highschool. Additionally, add a property that will represent the school mascot.
//
// Add a function called pepRally that will print "\(school name) is the best! \(rival school name) is awful!"
//
// Override the schoolDescription function to make it print "\(school name) is the best in the state since \(the year it was built)! Go \(school mascot)'s!!!"
//
// Create an instance of a highschool and call both the schoolDescription and the pepRally functions.

class HighSchool: School {
    var rival: String
    var mascot: String
    
    init(name: String, numberOfStudents: Int, yearBuilt: Int, rival: String, mascot: String) {
        self.rival = rival
        self.mascot = mascot
        super.init(name: name, numberOfStudents: numberOfStudents, yearBuilt: yearBuilt)
    }
    func pepRally() {
        print("\(name) is the best! \(rival) is awful!")
    }
    override func schoolDescription() {
        print("\(name) has been the best in the state since \(yearBuilt)! Go \(mascot)!")
    }
}

let highSchool = HighSchool(name: "McRib High", numberOfStudents: 234, yearBuilt: 1947, rival: "Whopper Ville High", mascot: "Freakishly Giant McRib Sandwich")

highSchool.pepRally()

highSchool.schoolDescription()

//3.Create a new class called MagicalHighSchool (think Hogwarts from Harry Potter) that inherits from our HighSchool class. Add new properties for the size of the castle in square feet and the number of secret passages it contains.
//
// Override the pepRally function to make it print "\(school name) is the most magical school on earth! It's castle is (\castle size) square feet, and it has \(number of secret passages) secret passageways! Hurray!"
//
// Create a new function called quidditchMatch that will print "Time for the big quidditch game!"
//
// Create an instance of a magical highschool. Then call all 3 of the functions that it contains/inherits.

class MagicalHighschool: HighSchool {
    var sizeOfCastle: Int
    var numberOfSecretPassages: Int
    
    init(name: String, numberOfStudents: Int, yearBuilt: Int, rival: String, mascot: String, sizeOfCastle: Int, numberOfSecretPassages: Int) {
        self.numberOfSecretPassages = numberOfSecretPassages
        self.sizeOfCastle = sizeOfCastle
        super.init(name: name, numberOfStudents: numberOfStudents, yearBuilt: yearBuilt, rival: rival, mascot: mascot)
    }
    override func pepRally() {
        print("\(name) is the most MAGICAL school on earth! It's castle is \(sizeOfCastle) square feet, and it has \(numberOfSecretPassages) secret passageways! Hurray!")
    }
    func quidditchMatch() {
        print("Time for the big quidditch game!")
    }
}

let magicHigh = MagicalHighschool(name: "BigMac's School of Magic and Flavor", numberOfStudents: 1843, yearBuilt: 1569, rival: "Wendy's School For Squared Students", mascot: "Spatula", sizeOfCastle: 17384, numberOfSecretPassages: 235)

magicHigh.pepRally()

magicHigh.quidditchMatch()

magicHigh.schoolDescription()

//BONUS: Create a new Date() object that represents the current date. Create a date formatter and set the custom date format for it. Use the date formatter to create a formatted String from the date object, and print the formatted String.

let currentDate = Date()

let dateFormatter = DateFormatter()
dateFormatter.dateFormat = "MM/dd/yyyy"
print("Current Date: \(dateFormatter.string(from: currentDate))")


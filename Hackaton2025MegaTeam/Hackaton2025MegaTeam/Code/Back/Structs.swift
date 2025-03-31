//
//  Structs.swift
//  Hackaton2025MegaTeam
//
//  Created by CEDAM24 on 31/03/25.
//

class Person {
    init(firstName: String, lastName1: String, lastName2: String, password: String, email: String, phoneNumber: String) {
        self.firstName = firstName
        self.lastName1 = lastName1
        self.lastName2 = lastName2
        self.password = password
        self.email = email
        self.phoneNumber = phoneNumber
    }
    
    var firstName: String = ""
    var firstNameGS: String {
        set { firstName = newValue }
        get { return firstName }
    }
    var lastName1: String = ""
    var lastName1GS: String {
        set { lastName1 = newValue }
        get { return lastName1 }
    }
    var lastName2: String = ""
    var lastName2GS: String {
        set { lastName2 = newValue }
        get { return lastName2 }
    }
    var password: String = ""
    var passwordGS: String {
        set { password = newValue }
        get { return password }
    }
    var email: String = ""
    var emailGS: String {
        set { email = newValue }
        get { return email }
    }
    var phoneNumber: String = ""
    var phoneNumberGS: String {
        set { phoneNumber = newValue }
        get { return phoneNumber }
    }
}

class Client: Person {
    var userName: String = ""
    var userNameGS: String {
        set { userName = newValue }
        get { return userName }
    }
    init(firstName: String, lastName1: String, lastName2: String, password: String, email: String, phoneNumber: String, userName: String) {
        self.userName = userName
        super.init(firstName: firstName, lastName1: lastName1, lastName2: lastName2, password: password, email: email, phoneNumber: phoneNumber)
    }
}

class Seller: Person {
    var cathegory: String = ""
    var cathegoryGS: String {
        set { cathegory = newValue }
        get { return cathegory }
    }
    var ubication: String = ""
    var ubicationGS: String {
        set { ubication = newValue }
        get { return ubication }
    }
    init(firstName: String, lastName1: String, lastName2: String, password: String, email: String, phoneNumber: String, cathegory: String, ubication: String) {
        self.cathegory = cathegory
        self.ubication = ubication
        super.init(firstName: firstName, lastName1: lastName1, lastName2: lastName2, password: password, email: email, phoneNumber: phoneNumber)
    }
}

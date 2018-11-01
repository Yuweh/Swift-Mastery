//: Playground - noun: a place where people can play

import UIKit

//CodeCamp 2018: OOP Exercises

//MARK: MUSIC Class = Music class that encapsulates an array of notes and allows you to flatten it into a string with the prepared() method.
class Music {
    let notes: [String]
    
    init(notes: [String]) {
        self.notes = notes
    }
    
    func prepared() -> String {
        return notes.joined(separator: " ")
    }
}

/* MARK: BASE CLASS - This is the root class of the instruments hierarchy.
 It defines a blueprint which forms the basis of any kind of instrument. */
class Instrument {
    //PROPERTIES
    // 2 Instrument’s stored properties (data) that all instruments have. In this case, it’s just the brand, which you represent as a String.
    let brand: String
    // 3 Its purpose is to construct new instruments by initializing all stored properties.
    init(brand: String) {
        //4 instrument’s brand stored property to what was passed in as a parameter.
        self.brand = brand
    }
    
    //MARK: METHOD - Functions defined inside a class are called methods because they have access to properties, such as brand in the case of Instrument.
    
    /*The tune() method is a placeholder function that crashes at runtime if you call it. Classes with methods like this are said to be abstract because they are not intended for direct use. Instead, you must define a subclass that overrides the method to do something sensible instead of only calling fatalError(). */
    
    func tune() -> String {
        fatalError("Implement this method for \(brand)")
    }
    
    func play(_ music: Music) -> String {
        return music.prepared()
    }
    
    func perform(_ music: Music) {
        print(tune())
        print(play(music))
    }
    
}

//MARK: INHERITANCE

/* 1 Piano class as a subclass of the Instrument parent class.
All the stored properties and methods are automatically inherited by the Piano child class and available for use. */

class Piano: Instrument {
    let hasPedals: Bool
    
    /* 2 All pianos have exactly the same number of white and black keys regardless of their brand.
     The associated values of their corresponding properties don’t change dynamically,
     so you mark the properties as static in order to reflect this.
     */
    static let whiteKeys = 52
    static let blackKeys = 36
    
    /*  3 The initializer provides a default value for its hasPedals parameter which allows you to leave it off if you want. */
    init(brand: String, hasPedals: Bool = false) {
        self.hasPedals = hasPedals
        /* 4 use the super keyword to call the parent class initializer
          The super class initializer takes care of initializing inherited properties — in this case, brand. */
        super.init(brand: brand)
    }
    
    /* 5 override the inherited tune() method’s implementation with the override keyword.
     This provides an implementation of tune() that doesn’t call fatalError(), but rather does something specific to Piano.*/
    override func tune() -> String {
        return "Piano standard tuning for \(brand)."
    }
    
    //*REPLACED by an overloaded method below:
//    override func play(_ music: Music) -> String {
//        /* 6 override the inherited play(_:) method. And inside this method,
//         you use the super keyword this time to call the Instrument parent method
//         in order to get the music’s prepared notes and then play on the piano. */
//        let preparedNotes = super.play(music)
//        return "Piano playing \(preparedNotes)"
//    }
    
    override func play(_ music: Music) -> String {
        return play(music, usingPedals: hasPedals)
    }
    
    func play(_ music: Music, usingPedals: Bool) -> String {
        let preparedNotes = super.play(music)
        if hasPedals && usingPedals {
            return "Play piano notes \(preparedNotes) with pedals."
        }
        else {
            return "Play piano notes \(preparedNotes) without pedals."
        }
    }
}

//MARK: Instances

// 1
let piano = Piano(brand: "Yamaha", hasPedals: true)
piano.tune()
// 2
let music = Music(notes: ["C", "G", "F"])
piano.play(music, usingPedals: false)
// 3
piano.play(music)
// 4
Piano.whiteKeys
Piano.blackKeys


// - - - - - - - - START THE LESSON 2 HERE  - - - - - -  -

//MARK: Intermediate Abstract Base Classes
class Guitar: Instrument {
    let stringGauge: String
    
    init(brand: String, stringGauge: String = "medium") {
        self.stringGauge = stringGauge
        super.init(brand: brand)
    }
}

//MARL: CONCRETE CLASS ->
class AcousticGuitar: Guitar {
    static let numberOfStrings = 6
    static let fretCount = 20
    
    override func tune() -> String {
        return "Tune \(brand) acoustic with E A D G B E"
    }
    
    override func play(_ music: Music) -> String {
        let preparedNotes = super.play(music)
        return "Play folk tune on frets \(preparedNotes)."
    }
}

// Test:

let acousticGuitar = AcousticGuitar(brand: "Roland", stringGauge: "light")
acousticGuitar.tune()
acousticGuitar.play(music)


// PRIVATE METHODS and PROPS

// 1
class Amplifier {
    /* 2 is marked private so that it can only be accessed inside of the Amplifier class
     and is hidden away from outside users. */
    private var _volume: Int
    
    /* 3 The stored property isOn can be read by outside users but not written to.
    This is done with private(set). */
    private(set) var isOn: Bool
    
    init() {
        isOn = false
        _volume = 0
    }
    
    // 4 plugIn() and unplug() affect the state of isOn.
    func plugIn() {
        isOn = true
    }
    
    func unplug() {
        isOn = false
    }
    
    // 5 The computed property named volume wraps the private stored property _volume.
    var volume: Int {
        // 6  getter drops the volume to 0 if it’s not plugged in.
        get {
            return isOn ? _volume : 0
        }
        // 7 volume will always be clamped to a certain value between 0 and 10 inside the setter. No setting the amp to 11.
        set {
            _volume = min(max(newValue, 0), 10)
        }
    }
}


//MARK: COMPOSITION
// 1  this is a concrete type that derives from the abstract, intermediate base class Guitar.
class ElectricGuitar: Guitar {
    // 2 An electric guitar contains an amplifier. This is a has-a relationship and not an is-a relationship as with inheritance.
    let amplifier: Amplifier
    
    // 3 A custom initializer that initializes all of the stored properties and then calls the super class.
    init(brand: String, stringGauge: String = "light", amplifier: Amplifier) {
        self.amplifier = amplifier
        super.init(brand: brand, stringGauge: stringGauge)
    }
    
    // 4
    override func tune() -> String {
        amplifier.plugIn()
        amplifier.volume = 5
        return "Tune \(brand) electric with E A D G B E"
    }
    
    // 5
    override func play(_ music: Music) -> String {
        let preparedNotes = super.play(music)
        return "Play solo \(preparedNotes) at volume \(amplifier.volume)."
    }
}

// This creates a bass guitar which also utilizes a (has-a) amplifier. Class containment in action.
class BassGuitar: Guitar {
    let amplifier: Amplifier
    
    init(brand: String, stringGauge: String = "heavy", amplifier: Amplifier) {
        self.amplifier = amplifier
        super.init(brand: brand, stringGauge: stringGauge)
    }
    
    override func tune() -> String {
        amplifier.plugIn()
        return "Tune \(brand) bass with E A D G"
    }
    
    override func play(_ music: Music) -> String {
        let preparedNotes = super.play(music)
        return "Play bass line \(preparedNotes) at volume \(amplifier.volume)."
    }
}

//MARK: Reference Semantics.
/* This means that variables holding a class instance actually hold a reference to that instance.
 If you have two variables with the same reference,
 changing data in one will change data in the other, and it’s actually the same thing */

let amplifier = Amplifier()
let electricGuitar = ElectricGuitar(brand: "Gibson", stringGauge: "medium", amplifier: amplifier)
electricGuitar.tune()

let bassGuitar = BassGuitar(brand: "Fender", stringGauge: "heavy", amplifier: amplifier)
bassGuitar.tune()

// Notice that because of class reference semantics, the amplifier is a shared
// resource between these two guitars.

bassGuitar.amplifier.volume
electricGuitar.amplifier.volume

bassGuitar.amplifier.unplug()
bassGuitar.amplifier.volume
electricGuitar.amplifier.volume

bassGuitar.amplifier.plugIn()
bassGuitar.amplifier.volume
electricGuitar.amplifier.volume


// - - - - - - - - START THE LESSON 3 HERE  - - - - - -  -

//POLYMORPHISM

class Band {
    let instruments: [Instrument]
    
    init(instruments: [Instrument]) {
        self.instruments = instruments
    }
    
    func perform(_ music: Music) {
        for instrument in instruments {
            instrument.perform(music)
        }
    }
}

let instruments = [piano, acousticGuitar, electricGuitar, bassGuitar]
let band = Band(instruments: instruments)
band.perform(music)

/* You first define an instruments array from the Instrument class instances you’ve previously created.
 Then you declare the band object and configure its instruments property with the Band initializer.
 Finally you use the band instance’s perform(_:) method
 to make the band perform live music (print results of tuning and playing).*/





// Playground - noun: a place where people can play

import UIKit


/*:

# Übung 2
## a.

Gegeben sei das Protokoll `Person`. Implementiere 2 Klassen `ComputerScientist` und `Banker`, die die folgenden Kriterien erfüllen:

- Sie muessen das Protokoll Person implementieren (d.h. auch die Properties und Methoden, die in Person deklariert sind).
- Sie muessen das Protokoll CustomStringConvertible implementieren

Anschliessend folgendes noch machen:
- Erzeuge ein Array von Personen (mit je 2 Informatiker und 2 Banker).
- Generiere ein Array, mit den 4 Zeichenketten, die von den 4 Personen gesagt werden
- Generiere ein Array, mit den 4 Zeichenketten, welche bezeichnen, was die 4 Personen essen
*/

// TODO: Klassen ComputerScientist und Banker implementieren

protocol Person {
    var name: String { get }
    func say() -> String
    func eat() -> String
}

class ComputerScientist: Person {
    var name: String
    
    init(name:String) {
        self.name = name
    }
    
    func say() -> String {
        return "I like code!"
    }
    
    func eat() -> String {
        return "I want 🍕!"
    }
}

class Banker: Person {
    var name: String
    
    init(name:String) {
        self.name = name
    }
    
    func say() -> String {
        return "I need 💰!"
    }
    
    func eat() -> String {
        return "I eat 💵"
    }
}

var persons: [Person] = []
persons.append(Banker(name: "brady"))
persons.append(Banker(name: "tidjane"))
persons.append(ComputerScientist(name: "steve"))
persons.append(ComputerScientist(name: "niklaus"))

let names = persons.map{ p in p.name }
let sayings = persons.map{ p in p.say() }
let eatings = persons.map{ p in p.eat() }

persons
names
sayings
eatings


/*:
## b.

Erweitere Array und schreibe eine Methode `sum`, die die Summe aller Elemente im Array zurückgibt.

*/

extension Array where Element: IntegerType {
    func sum () -> Int {
        var sum = 0
        for n in self {
            sum += n as! Int
        }
        return sum
    }
}

let array = [1,2,3,4]
array.sum()


// Playground - noun: a place where people can play

import UIKit

/*:

# Übung 1
## a. Der Trinkgeld-Rechner

Funktion `tipComputer` vervollstaendigen, damit sie fuer einen gegebenen Betrag `amount` und eine bestimmte Zufriedenheit `satisfaction` den passenden Trinkgeld-Betrag (siehe enum SatisfactionLevel) zurueckgibt.

*/

enum SatisfactionLevel {
    case ServiceWasRude    // 10% tip
    case EverythingWasFine // 18% tip
    case SuperHappy        // 20% tip
}

func tipComputer(amount: Double, satisfaction: SatisfactionLevel) -> Double {
    func getTip(satisfaction: SatisfactionLevel) -> Double {
        switch (satisfaction) {
        case SatisfactionLevel.ServiceWasRude:
            return 0.1
        case SatisfactionLevel.SuperHappy:
            return 0.20
        default:
            return 0.18
        }
    }

    return round(1000*(amount * getTip(satisfaction)))/1000
}

tipComputer(65.50, satisfaction: SatisfactionLevel.ServiceWasRude)
tipComputer(77.20, satisfaction: SatisfactionLevel.SuperHappy)


/*:

## b. Summe der Primzahlen zw. 1 und 100

Gegeben ist die folgende Funktion `isPrime`

*/

func isPrime(number: Int) -> Bool {
    if number == 1 {
        return false
    }
    else if number == 2 || number == 3 {
        return true
    }
    else {
        let upper: Int = Int(floor(sqrt(Double(number))))
        let range: Range<Int> = 2...upper
        let divisors = range.filter{n in number % n == 0}
        return divisors.count == 0
    }
}

isPrime(11)
isPrime(100)
isPrime(101)

func getPrimeSum(n: Int) -> Int {
    var result = 0
    for i in 1..<n+1 {
        if (isPrime(i)) {
            result += i
        }
    }
    return result
}

let result = getPrimeSum(100)
result


//: (Optional)
//: ## c. Finde die 101. Primzahl. Dabei die vorgegebene Funktion `isPrime` verwenden.

func findPrime(prime: Int) -> Int {
    var counter = 0
    var currentPrime = 1
    while (counter < prime) {
        if (isPrime(currentPrime)) {
            counter++
        }
        currentPrime++
    }
    return currentPrime - 1
}

var prime101 = findPrime(101)
prime101

/*:

(Optional)
## d. Berechne die Reihe der ersten 20 Fibonacci-Zahlen.

Fibonacci-Zahlen sind folgendermassen definiert:
- 1 und 2 sind die zwei ersten Fibonacci-Zahlen
- Die n-te Fibonacci-Zahl wird als Summe beider vorherigen (n-1)-ten und (n-2)-ten Fibonacci-Zahlen berechnet:

F_n = F_n-1 + F_n-2

Es ergibt die folgende Reihe: 1, 2, 3, 5, 8, 13, 21, 34, ...

*/

func fibonnaciSeries(n: Int) -> [Int] {
    if (n == 1) {
        return [0, 1]
    }
    else {
        var s = fibonnaciSeries(n - 1)
        s.append(s[s.count - 1] + s[s.count - 2])
        return s
    }
}

func fibonnaciFirst20() -> [Int] {
    return fibonnaciSeries(20)
}

fibonnaciFirst20()

/**
  Sunum linki 7 gün geçerlidir.
  https://we.tl/t-WHlBnl10lm
*/

import UIKit

/**

	Fonksiyonlar / Functions

*/

func printMyName() {
	print("My name is Murat Adıgüzel")
}

printMyName()


func printMultipleOfFive(value: Int) {
	print("\(value) * 5 = \(value * 5)")
}

printMultipleOfFive(value: 10)


func printMultipleOf(multiplier: Int, andValue: Int) {
	print("\(multiplier) * \(andValue) = \(multiplier * andValue)")
}

printMultipleOf(multiplier: 4, andValue: 2)


func printMultipleOf(multiplier: Int, and value: Int) {
	print("\(multiplier) * \(value) = \(multiplier * value)")
}

printMultipleOf(multiplier: 4, and: 2)

// func printMultipleOf(multiplier: Int, and: Int) {
// 	print("\(multiplier) * \(and) = \(multiplier * and)")
// }

func printMultipleOf(_ multiplier: Int, and value: Int) {
	print("\(multiplier) * \(value) = \(multiplier * value)")
}

printMultipleOf(4, and: 2)


// func printMultipleOf(_ multiplier: Int, _ value: Int) {
// 	print("\(multiplier) * \(value) = \(multiplier * value)")
// }

printMultipleOf(4, 2)

func printMultipleOf(_ multiplier: Int, _ value: Int = 1) {
	print("\(multiplier) * \(value) = \(multiplier * value)")
}

printMultipleOf(4)


// func multiply(_ number: Int, by multiplier: Int) -> Int {
// 		return number * multiplier
// }

let result = multiply(4, by: 2)
result

// func multiplyAndDivide(_ number: Int, by factor: Int) -> (product: Int, quotient: Int) {
// 		return (number * factor, number / factor)
// }

let result1 = multiplyAndDivide(4, by: 2)
let product = result1.product
let quotient = result1.quotient


func multiply(_ number: Int, by multiplier: Int) -> Int {
	number * multiplier
}

func multiplyAndDivide(_ number: Int, by factor: Int) -> (product: Int, quotient: Int) {
	(number * factor, number / factor)
}


// Pass-by-value

//func incrementAndPrint(_ value: Int) {
//	value += 1
//	print(value)
//}


// copy-in copy-out

func incrementAndPrint(_ value: inout Int) {
	value += 1
	print(value)
}

var value = 5
incrementAndPrint(&value)
value


// Aşırı yükleme için gereklilikler

// 1. Farklı parametre sayıları
// 2. Farklı parametre türleri
// 3. Farklı harici parametre adları


func getValue() -> Int {
	30
}

func getValue() -> String {
	"Murat Adıgüzel"
}

// let value = getValue()

let valueInt: Int = getValue()

let valueString: String = getValue()


// Egzersizler

// 1.

func printFullName(firstName: String, lastName: String) {
	print(firstName + " " + lastName)
}

printFullName(firstName: "Murat", lastName: "Adıgüzel")

// 2.

func printFullName(_ firstName: String, _ lastName: String) {
	print(firstName + " " + lastName)
}

printFullName("Murat", "Adıgüzel")

// 3.

func calculateFullName(_ firstName: String, _ lastName: String) -> String {
	firstName + " " + lastName
}

let fullName = calculateFullName("Murat", "Adıgüzel")
fullName

// 4.

func calculateFullNameWithLength(_ firstName: String, _ lastName: String) -> (name: String, length: Int) {
	let fullName = firstName + " " + lastName
	return (fullName, fullName.count)
}

let fullNameLength = calculateFullNameWithLength("Murat", "Adıgüzel").length
fullNameLength


func add(_ a: Int, _ b: Int) -> Int {
	a + b
}

/**

	Sabit veya değişken olarak fonksiyonlar

*/

var function = add

function(4, 2)

func subtract(_ a: Int, _ b: Int) -> Int {
	a - b
}

function = subtract

function(4, 2)


func printResult(_ function: (Int, Int) -> Int, _ a: Int, _ b: Int) {
	let result = function(a, b)
	print(result)
}

printResult(add, 4, 2)
printResult(subtract, 4, 2)


/**

	No return type -> Never

*/

// fatalError("reason to terminate")

//func noReturn() -> Never {
//
//}

func infiniteLoop() -> Never {
	while true {

	}
}

print("Murat Adıgüzel")


/**

	Fonksiyon belgeleme
	Kısayol Option + Cmd + /

*/

/// Calculates the average of three values
/// - Parameters:
///   - a: The first value.
///   - b: The second value.
///   - c: The third value.
/// - Returns: The average of the three values.
func calculateAverage(of a: Double, and b: Double, and c: Double) -> Double {
	let total = a + b + c
	let average = total / 3
	return average
}

calculateAverage(of: 1, and: 3, and: 5)


// Egzersizler

// 1.

for index in stride(from: 10, to: 22, by: 4) {
	print(index)
}

for index in stride(from: 10, through: 22, by: 4) {
	print(index)
}


for index in stride(from: 10.0, through: 9.0, by: -0.1) {
	print(index)
}


// 2.

func isNumberDivisible(_ number: Int, by divisor: Int) -> Bool {
	number % divisor == 0
}

func isPrime(_ number: Int) -> Bool {
	if number < 0 {
		return false
	}

	if number <= 3 {
		return true
	}

	let doubleNumber = Double(number)
	let root = Int(doubleNumber.squareRoot())

	for divisor in 2...root {
		if isNumberDivisible(number, by: divisor) {
			return false
		}
	}
	return true
}

isPrime(6)
isPrime(13)
isPrime(8893)

// 3.

func fibonacci(_ number: Int) -> Int {
	if number <= 0 {
		return 0
	}

	if number <= 2 {
		return 1
	}

	return fibonacci(number - 1) + fibonacci(number - 2)
}

fibonacci(1)
fibonacci(2)
fibonacci(3)
fibonacci(4)
fibonacci(5)
fibonacci(10)

/**

	Optional Türler

*/

var name = "Murat Adıgüzel"
var age = 33
var occupation = "Software Developer"


// Sentinel değer / Özel değer


// var errorCode = 0

// nil


var errorCode: Int?

errorCode = 100

errorCode = nil


// Egzersizler

// 1.

 let myFavouriteSong: String? = "The Final Countdown"
//let myFavouriteSong: String? = nil

// 2.

let parsedInt = Int("10")

// 3.

let anotherParsedInt = Int("Dog")



var result2: Int? = 30
print(result2 as Any)

// print(result2 + 1)


var educatorName: String? = "Murat Adıgüzel"
var educatorAge: Int? = 33

/**

	Zorla çözme / Force unwrapping

*/

var unwrappedEducatorName = educatorName!
print("Educator is \(unwrappedEducatorName)")


// educatorName = nil
// print("Educator is \(educatorName!)")

if educatorName != nil {
	print("Educator is \(educatorName!)")
} else {
	print("No educator.")
}

/**

	Optional binding

*/

if let unwrappedEducatorName = educatorName {
	print("Educator is \(unwrappedEducatorName)")
} else {
	print("No educator.")
}


if let educatorName = educatorName {
	print("Educator is \(educatorName)")
} else {
	print("No educator.")
}

if let educatorName = educatorName, let educatorAge = educatorAge {
	print("The educator is \(educatorName) who is \(educatorAge) years old.")
} else {
	print("No educator or no age.")
}


if let educatorName = educatorName, let educatorAge = educatorAge, educatorAge >= 40 {
	print("The educator is \(educatorName) who is \(educatorAge) years old.")
} else {
	print("No educator or no age or age less than 40.")
}

// Egzersizler

// 1. - 2.

if let song = myFavouriteSong {
	print(song)
} else {
	print("I don't have a favourite song.")
}


/**

	guard ifadesi

*/

func guardMyCastle(name: String?) {
	guard let castleName = name else {
		print("No castle!")
		return
	}
	print("Your castle called \(castleName) was guarded!")
}

guardMyCastle(name: "My castle")


func calculateNumberOfSides(shape: String) -> Int? {
	switch shape {
	case "Triangle":
		return 3
	case "Square":
		return 4
	case "Rectangle":
		return 4
	case "Pentagon":
		return 5
	case "Hexagon":
		return 6
	default:
		return nil
	}
}

//func maybePrintSides(shape: String) {
//	let sides = calculateNumberOfSides(shape: shape)
//
//	if let sides = sides {
//		print("A \(shape) has \(sides) sides.")
//	} else {
//		print("I don't know the number of sides for \(shape).")
//	}
//}

maybePrintSides(shape: "Square")
maybePrintSides(shape: "Circle")


func maybePrintSides(shape: String) {
	guard let sides = calculateNumberOfSides(shape: shape) else {
		print("I don't know the number of sides for \(shape).")
		return
	}
	print("A \(shape) has \(sides) sides.")
}

/**

	Nil-coalescing

*/

var optionalInt: Int? = 10
var mustHaveResult = optionalInt ?? 0

print(mustHaveResult)

var mustHaveResult2: Int
if let unwrapped = optionalInt {
	mustHaveResult2 = unwrapped
} else {
	mustHaveResult2 = 0
}


// Egzersizler

// 1.

var name5: String? = "Murat"
// var age: Int = nil			// Hata
let distance: Float = 26.7
var middleName: String? = nil

// 2.

func divideIfWhole(_ value: Int, by divisor: Int) -> Int? {
	if value % divisor == 0 {
		return value / divisor
	} else {
		return nil
	}
}

if let answer = divideIfWhole(10, by: 2) {
	print("Yep, it divides \(answer) times.")
} else {
	print("Not divisible :[.")
}

if let answer = divideIfWhole(10, by: 3) {
	print("Yep, it divides \(answer) times.")
} else {
	print("Not divisible :[.")
}


// 3.

let answer1 = divideIfWhole(10, by: 2) ?? 0
print("It divides \(answer1) times.")

let answer2 = divideIfWhole(10, by: 3) ?? 0
print("It divides \(answer2) times.")

// 4.

let number: Int??? = 10

print(number as Any)
print(number! as Any)

print(number!!!)

if let number = number {
	if let number = number {
		if let number = number {
			print(number)
		}
	}
}

if let n1 = number, let n2 = n1, let n3 = n2 {
	print(n3)
}

func printNumber(_ number: Int???) {
	guard let n1 = number, let n2 = n1, let n3 = n2 else {
		return
	}
	print(n3)
}

printNumber(number)

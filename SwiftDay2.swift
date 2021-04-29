/**
  Sunum linki 7 gün geçerlidir.
  https://we.tl/t-8rFM9YrLSR
*/

import Foundation

/**
	Daha fazla sayı türü
*/

Int8.min
Int8.max

UInt8.min
UInt8.max

Int64.min
Int64.max

UInt64.min
UInt64.max

Double.leastNormalMagnitude
Double.greatestFiniteMagnitude

Float.leastNormalMagnitude
Float.greatestFiniteMagnitude


let a: Int16 = 12
let b: UInt8 = 255
let c: Int32 = -100000

let answer = Int(a) + Int(b) + Int(c)


/**

	Takma ad / Type aliases
*/

typealias Animal = String


let myPet: Animal = "Dog"

typealias Coordinates = (Int, Int)

let xy: Coordinates = (2, 4)


// Egzersizler

// 1.

let coordinates = (3, 5)

// 2.

let namedCoordinate = (row: 2, column: 3)
namedCoordinate.row
namedCoordinate.column

// 3.

// let character: Character = "Dog"
let character: Character = "🐶"
let string: String = "Dog"
let string1: String = "🐶"


// 4.

let tuple = (day: 15, month: 8, year: 2021)
// let day = tuple.Day
let day = tuple.day

// 5.

// let name = "Murat"
var name = "Murat"
name += " Adıgüzel"

// 6.

let tuple2 = (100, 1.5, 10)
let value = tuple2.1

// 7.

let tuple3 = (day: 15, month: 8, year: 2021)
let month = tuple3.month

// 8.

let number = 10
let multiplier = 5
let summary = "\(number) multiplied by \(multiplier) equals \(number * multiplier)"

// 9.

let a1 = 4
let b1: Int32 = 100
let c1: UInt8 = 12

let d1 = a1 + Int(b1) + Int(c1)

// 10.

let difference = Double.pi - Double(Float.pi)

/**

	Basit Kontrol Akışı / Basic Control Flow
	Bool türü / Bool type
*/


let yes: Bool = true
let no: Bool = false


let yes1 = true
let no1 = false


// ==

let doesOneEqualTwo = (1 == 2)

// !=

let doesOneNotEqualTwo = (1 != 2)

// !

let alsoTrue = !(1 == 2)

// >
// <

let isOneGreaterThanTwo = (1 > 2)
let isOneLessThanTwo = (1 < 2)

// <=   ->   < ve ==
// >=   ->   > ve ==

let isOneLessThanOrEqualToTwo = (1 <= 2)
let isOneGreaterThanOrEqualToTwo = (1 >= 2)

/**

	Boolean mantığı / Boolean logic

*/


// && - And - Ve

let and1 = true && true
let and2 = true && false
let and3 = false && true
let and4 = false && false

// || - Or - Veya

let or1 = true || true
let or2 = true || false
let or3 = false || true
let or4 = false || false


let andTrue = 1 < 2 && 4 > 3
let andFalse = 1 < 2 && 3 > 4

let orTrue = 1 < 2 || 3 > 4
let orFalse = 1 == 2 || 3 == 4

let andOr = (1 < 2 && 3 > 4) || 1 < 4

/**

	String karşılaştırma / String comparison

*/

let guess = "dog"
let dogEqualsCat = guess == "cat"

let order = "cat" < "dog"

var switchState = true
switchState.toggle()
switchState.toggle()

switchState = !switchState


// Egzersizler

// 1.

let myAge = 33
let isTeenager = myAge >= 13 && myAge <= 19

// 2.

let theirAge = 33
let bothTeenagers = theirAge >= 13 && theirAge <= 19 && isTeenager

// 3.

let trainee = "Murat"
let educator = "Murat"
let traineeIsEducator = trainee == educator

// 4.

let traineeBeforeEducator = trainee < educator

/**

	If ifadeleri / If clauses

*/

if 2 > 1 {
	print("Yes, 2 is greater than 1.")
}

let animal = "Fox"

if animal == "Cat" || animal == "Dog" {
	print("Animal is a house pet.")
} else {
	print("Animal is not a house pet.")
}

let hourOfDay = 16
var timeOfDay = ""

if hourOfDay < 6 {
	timeOfDay = "Early morning"
} else if hourOfDay < 12 {
	timeOfDay = "Morning"
} else if hourOfDay < 17 {
	timeOfDay = "Afternoon"
} else if hourOfDay < 20 {
	timeOfDay = "Evening"
} else if hourOfDay < 24 {
	timeOfDay = "Late evening"
} else {
	timeOfDay = "INVALID HOUR!"
}

print(timeOfDay)

/**

	Kısa devre / Short circuit

*/

if 1 > 2 && name == "Murat" {

}

if 1 < 2 || name == "Murat" {

}

// 40 saate kadar her saat için 25 dolar ve bundan sonraki her saat için 50 dolar

var hoursWorked = 45
var price = 0

if hoursWorked > 40 {
	let hoursOver40 = hoursWorked - 40
	price += hoursOver40 * 50
	hoursWorked -= hoursOver40
}
price += hoursWorked * 25

print(price)
// print(hoursOver40)

/**

	Ternary operator / Üçlü koşul operatörü

*/


// koşul ? değer1 : değer2

let a3 = 5
let b3 = 10

let min: Int
if a3 < b3 {
	min = a3
} else {
	min = b3
}

let max: Int
if a3 > b3 {
	max = a3
} else {
	max = b3
}

min
max

let min2 = a3 < b3 ? a3 : b3
let max2 = a3 > b3 ? a3 : b3

// Egzersizler

// 1.

let myAge1 = 33

if myAge1 >= 13 && myAge1 <= 19 {
	print("Teenager")
} else {
	print("Not a teenager")
}

// 2.

let answer1 = myAge1 >= 13 && myAge1 <= 19 ? "Teenager" : "Not a teenager"


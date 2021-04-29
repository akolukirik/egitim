/**
  Sunum linki 7 gün geçerlidir.
  https://we.tl/t-t86GQPhu3o
*/

import Foundation

/**

while <CONDITION> {
	<LOOP CODE>
}

*/

//   Sonsuz döngü
//
//   while true {
//
//   }

var sum = 1

while sum < 1000 {
	sum = sum + (sum + 1)
}

sum

/**

repeat {
	<LOOP CODE>
} while <CONDITION>

*/

sum = 1

repeat {
	sum = sum + (sum + 1)
} while sum < 1000

sum


sum = 1

while sum < 1 {
	sum = sum + (sum + 1)
}

sum

sum = 1

repeat {
	sum = sum + (sum + 1)
} while sum < 1

sum



sum = 1

while true {
	sum = sum + (sum + 1)
	if sum >= 1000 {
		break
	}
}

sum


// Egzersizler

// 1.

var counter = 0

while counter < 10 {
	print("Counter is \(counter)")
	counter += 1
}

// 2.

counter = 0

var roll = 0

repeat {
	roll = Int.random(in: 0...5)
	counter += 1
	print("After \(counter) roll(s), roll is \(roll)")
} while roll != 0



// Egzersizler (Temel Kontrol Akışı)

// 1.

// let firstName = "Murat"
// if firstName == "Murat" {
//   let lastName = "Adıgüzel"
// } else if firstName == "Deniz" {
//   let lastName = "Yıldız"
// }

// let fullName = firstName + " " + lastName

let firstName = "Yavuz"

let lastName: String
if firstName == "Murat" {
  lastName = "Adıgüzel"
} else if firstName == "Deniz" {
  lastName = "Yıldız"
} else {
  lastName = "Güneş"
}

let fullName = firstName + " " + lastName


// 2.

let answer1 = true && true
let answer2 = false || false
let answer3 = (true && 1 != 2) || (4 > 3 && 100 < 1)
let answer4 = ((10 / 2) > 3) && ((10 % 2) == 0)

// 3.

let currentPosition = 9
let diceRoll = 2

var nextPosition = currentPosition + diceRoll

if nextPosition == 3 {
	nextPosition = 15
} else if nextPosition == 7 {
	nextPosition = 12
} else if nextPosition == 11 {
	nextPosition = 2
} else if nextPosition == 17 {
	nextPosition = 9
}

print("Board position after \(currentPosition) is \(nextPosition)")

// 4.

let month = "feb"
let year = 2400

var days = 0
if month == "jan" || month == "mar" || month == "may" || month == "jul" || month == "aug" || month == "oct" || month == "dec" {
	days = 31
} else if month == "apr" || month == "jun" || month == "sep" || month == "nov" {
	days = 30
} else if month == "feb" {
	if year % 4 == 0 && year % 100 != 0 || year % 400 == 0 {
		days = 29
	} else {
		days = 28
	}
}

if days > 0 {
	print("\(month) has \(days) days.")
} else {
	print("Invalid month!")
}


// 5.

let number = 32
var trial = 1
var times = 0

while trial < number {
	trial *= 2
	times += 1
}
print("Next power of 2 >= \(number) is \(trial) which is 2 to the power of \(times).")

// 6.

let depth = 5
var count = 1
var triangularNumber = 0

while count <= depth {
	triangularNumber += count
	count += 1
}

print("Triangular number with depth \(depth) is \(triangularNumber).")

// 7.

let n = 10
var current = 1
var previous = 1
var done = 2

while done < n {
	let next = current + previous
	previous = current
	current = next
	done += 1
}
print("Fibonacci number \(n) is \(current).")

// 8.

let factor = 5

var i = 0

while i <= 12 {
	print("\(factor) x \(i) = \(factor * i)")
	i += 1
}


/**
	Gelişmiş Kontrol Akışı
*/

/**
	Countable Ranges / Sayılabilir Aralık
*/


let closedRange = 0...5		// 0, 1, 2, 3, 4, 5

let halfOpenRange = 0..<5	// 0, 1, 2, 3, 4


while Int.random(in: 1...6) != 6 {
	print("Not a six.")
}


/**

	for <CONSTANT> in <COUNTABLE RANGE> {
		<LOOP CODE>
	}

*/

count = 10
sum = 0

for j in 1...count {
	sum += j
}
// j
sum


sum = 1
var lastSum = 0

for _ in 0..<count {
	let temp = sum
	sum = sum + lastSum
	lastSum = temp
}
lastSum


sum = 0
count = 10

for i in 1...count {
	if i % 2 == 1 {
		sum += i
	}
}
sum

sum = 0
count = 10

for i in 1...count where i % 2 == 1 {
	sum += i
}
sum

sum = 0
for row in 0..<8 {
	for column in 0..<8 {
		sum += row * column
	}
}
sum


sum = 0
for row in 0..<8 {
	if row % 2 == 0 {
		continue
	}
	for column in 0..<8 {
		sum += row * column
	}
}
sum

sum = 0

rowLoop: for row in 0..<8 {
	columnLoop: for column in 0..<8 {
		if row == column {
			continue rowLoop
		}
		sum += row * column
	}
}
sum


// Egzersizler

// 1.

let range = 1...10

for i in range {
	let square = i * i
	print("\(square)")
}

// 2.

for i in range {
	let squareRoot = sqrt(Double(i))
	print("\(squareRoot)")
}

// 3.

sum = 0
for row in 0..<8 where row % 2 == 1 {
	for column in 0..<8 {
		sum += row * column
	}
}
sum

/**
	Switch - case ifadeleri
*/

let number1 = 10

switch number1 {
case 0:
	print("Zero")
default:
	print("Non-zero")
}


switch number1 {
case 10:
	print("It's ten!")
default:
	break
}


let string = "Dog"

switch string {
case "Cat", "Dog":
	print("Animal is a house pet.")
default:
	print("Animal is not a house pet.")
}


let hourOfDay = 16
var timeOfDay = ""

switch hourOfDay {
case 0, 1, 2, 3, 4, 5:
	timeOfDay = "Early morning"
case 6, 7, 8, 9, 10, 11:
	timeOfDay = "Morning"
case 12, 13, 14, 15, 16:
	timeOfDay = "Afternoon"
case 17, 18, 19:
	timeOfDay = "Evening"
case 20 ,21, 22, 23:
	timeOfDay = "Late evening"
default:
	timeOfDay = "INVALID HOUR!"
}
print(timeOfDay)

/**
	Switch ifadeleri ile sayılabilir aralıkları kullanmak
*/

switch hourOfDay {
case 0...5:
	timeOfDay = "Early morning"
case 6...11:
	timeOfDay = "Morning"
case 12...16:
	timeOfDay = "Afternoon"
case 17...19:
	timeOfDay = "Evening"
case 20...23:
	timeOfDay = "Late evening"
default:
	timeOfDay = "INVALID HOUR!"
}
print(timeOfDay)

/**
	Model eşleştirme / Pattern matching
*/

switch number1 {
case let x where x % 2 == 0:
	print("Even")
default:
	print("Odd")
}


var coordinates = (x: 3, y: 2, z: 5)

switch coordinates {
case (0, 0, 0):
	print("Origin.")
case (_, 0, 0):
	print("On the x-axis.")
case (0, _, 0):
	print("On the y-axis.")
case (0, 0, _):
	print("On the z-axis.")
default:
	print("Somewhere in space.")
}


switch coordinates {
case (0, 0, 0):
	print("Origin.")
case (let x, 0, 0):
	print("On the x-axis at x = \(x).")
case (0, let y, 0):
	print("On the y-axis at y = \(y).")
case (0, 0, let z):
	print("On the z-axis at z = \(z).")
case let (x, y, z):
	print("Somewhere in space at x = \(x), y = \(y), z = \(z).")
}

switch coordinates {
case let (x, y, _) where y == x:
	print("Along the y = x line.")
case let (x, y, _) where y == x * x:
	print("Along the y = x^2 curve.")
default:
	break
}

// Egzersizler

// 1.

let myAge = 33

switch myAge {
case 0...2:
	print("Bebek")
case 3...12:
	print("Çocuk")
case 13...19:
	print("Genç")
case 20...39:
	print("Yetişkin")
case 40...60:
	print("Orta yaşlı")
case let age where age >= 61:
	print("Yaşlı")
default:
	print("Geçersiz yaş")
}

// 2.

let tuple = ("Murat", 33)

switch tuple {
case (let name, 0...2):
	print("\(name) bir bebektir.")
case (let name, 3...12):
	print("\(name) bir çocuktur.")
case (let name, 13...19):
	print("\(name) bir gençtir.")
case (let name, 20...39):
	print("\(name) bir yetişkindir.")
case (let name, 40...60):
	print("\(name) bir orta yaşlıdır.")
case let (name, age) where age >= 61:
	print("\(name) bir yaşlıdır.")
default:
	print("Geçersiz yaş")
}


// Egzersizler - Gelişmiş Kontrol Akışı

// 1.

sum = 0
for i in 0...5 {
  sum += i
}
sum

// 2.

var aLotOfAs = ""
while aLotOfAs.count < 10 {
  aLotOfAs += "a"
}
aLotOfAs

// 3.

//coordinates = (1, 5, 0)
//coordinates = (2, 2, 2)
//coordinates = (3, 0, 1)
//coordinates = (3, 2, 5)
coordinates = (0, 2, 4)

switch coordinates {
case let (x, y, z) where x == y && y == z:
  print("x = y = z")
case (_, _, 0):
  print("On the x/y plane")
case (_, 0, _):
  print("On the x/z plane")
case (0, _, _):
  print("On the y/z plane")
default:
  print("Nothing special")
}

// 4.

let halfOpenRange1 = 100..<100
let closedRange1 = 100...100

halfOpenRange1.isEmpty
closedRange1.isEmpty

// 5.

for i in 0...10 {
	print(10 - i)
}

// 6.

var value = 0.0

for _ in 0...10 {
	print(value)
	value += 0.1
}

// Veya

for i in 0...10 {
	print(Double(i) * 0.1)
}

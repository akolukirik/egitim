/**
  Sunum linki 7 gün geçerlidir.
  https://we.tl/t-DwsCRtBFKc
*/

import Foundation

/**
	Closure
*/

var multiplyClosure = { (a: Int, b: Int) -> Int in
	return a * b
}

let result = multiplyClosure(4, 2)

multiplyClosure = { (a: Int, b: Int) -> Int in
	a * b
}

multiplyClosure = { (a, b) in
	a * b
}

multiplyClosure = { a, b in
	a * b
}

multiplyClosure = {
	$0 * $1
}

func operateOnNumbers(_ a: Int, _ b: Int, operation: (Int, Int) -> Int) -> Int {
	let result = operation(a, b)
	print(result)
	return result
}

let addClosure = { (a: Int, b: Int) in
	a + b
}

/**
	Closure'ların fonksiyonlara parametre olarak geçilmesi
*/

operateOnNumbers(4, 2, operation: addClosure)


operateOnNumbers(4, 2, operation: { (a: Int, b: Int) -> Int in
	return a + b
})

let result2 = operateOnNumbers(4, 2, operation: { $0 + $1 })
result2

operateOnNumbers(4, 2, operation: +)


/**
	Fonksiyonlarda closure'ların son parametre olarak kullanımı
	Trailing closure syntax
*/

operateOnNumbers(4, 2) { $0 + $1 }

/**
	Birden fazla closure parametresi alan fonksiyon kullanımı
*/

func sequenced(first: () -> Void, second: () -> Void) {
	first()
	second()
}

sequenced {
	print("Hello, ", terminator: "")
} second: {
	print("world.")
}

/**
	Parametre listesi olmayan ve bir şey dönmeyen closure
*/

let voidClosure: () -> Void = {
	print("Swift lesson is awesome!")
}

voidClosure()

/**
	Closure'ların dış kapsamdaki değerleri yakalaması
*/

var counter = 0
let incrementCounter = {
	counter += 1
}

incrementCounter()
incrementCounter()
incrementCounter()
incrementCounter()
incrementCounter()

counter

func countingClosure() -> () -> Int {
	var counter = 0
	let incrementCounter: () -> Int = {
		counter += 1
		return counter
	}
	return incrementCounter
}

let counter1 = countingClosure()
let counter2 = countingClosure()

counter1()
counter2()
counter1()
counter1()
counter2()


let names = ["ZZZZZZ", "BB", "A", "CCCC", "EEEEE"]
names.sorted()

/**
	Closure ile sıralanmış koleksiyon elde etme
*/

names.sorted {
	$0.count > $1.count
}

let values = [1, 2, 3, 4, 5, 6]

/**
	Closure ile yineleme yapma
*/

values.forEach {
	print("\($0): \($0 * $0)")
}

/**
	Closure ile filtrelemiş bir koleksiyon elde etme
*/

var prices = [1.5, 10, 4.99, 2.30, 8.19]

let largePrices = prices.filter {
	$0 > 5
}


let firstLargePrice = prices.first {
	$0 > 5
}

let noFirstLargePrice = prices.first {
	$0 > 20
}

/**
	Closure ile dönüştürülmüş bir koleksiyon elde etme
*/

let salePrices = prices.map {
	$0 * 0.9
}


let userInput = ["0", "11", "haha", "42"]

let numbers1 = userInput.map {
	Int($0)
}


let numbers2 = userInput.compactMap {
	Int($0)
}

let userInputNested = [["0", "1"], ["a", "b", "c"], ["🦮"]]
let allUserInputs = userInputNested.flatMap {
	$0
}

/**
	Closure ile koleksiyondan değer elde etme
*/

let sum = prices.reduce(0) {
	$0 + $1
}

let stock = [1.5: 5, 10: 2, 4.99: 20, 2.30: 5, 8.19: 30]
let stockSum = stock.reduce(0) {
	$0 + $1.key * Double($1.value)
}

let farmAnimals = ["🐎": 5, "🦮": 1, "🐏": 50, "🐄": 10]
let allAnimals = farmAnimals.reduce(into: []) {
	(result, this: (key: String, value: Int)) in

	for _ in 0..<this.value {
		result.append(this.key)
	}
}

print(allAnimals)


/**
	Koleksiyonları baştan / sondan kesen fonksiyonlar
*/

let removeFirst = prices.dropFirst()
let removeFirstTwo = prices.dropFirst(2)

let removeLast = prices.dropLast()
let removeLastTwo = prices.dropLast(2)

/**
	Koleksiyonların başında / sonundan yeni bir koleksiyon oluşturan fonksiyonlar
*/

let firstTwo = prices.prefix(2)
let lastTwo = prices.suffix(2)


/**
	Koleksiyon içindeki değerleri closure ile belirli bir koşula göre çıkarma
	veya tamamını çıkarma
*/

prices.removeAll() { $0 > 2 }
prices

prices.removeAll()


func isPrime(_ number: Int) -> Bool {
	if number == 1 { return false }
	if number == 2 || number == 3 { return true }

	for i in 2...Int(Double(number).squareRoot()) {
		if number % i == 0 { return false }
	}
	return true
}

var primes: [Int] = []

var i = 1

while primes.count < 10 {
	if isPrime(i) {
		primes.append(i)
	}
	i += 1
}
primes.forEach {
	print($0)
}

/**
	Tembel / lazy koleksiyonlar
*/

let primes1 = (1...).lazy
	.filter { isPrime($0) }
	.prefix(10)

primes1.forEach { print($0) }


// Egzersizler

// 1.

let names1 = ["Matt", "Ray", "Vicki", "Alice", "Barnaby"]

let allNames = names1.reduce("") {
	$0 + $1
}

allNames

// 2.

let filteredNames = names1.filter {
	$0.count > 4
}.reduce("") {
	$0 + $1
}

filteredNames

// 3.

let namesAndAges = ["Matt": 30, "Alice": 25, "Barnaby": 12, "Ingrid": 41]

let children = namesAndAges.filter {
	$0.value < 18
}

// 4.

let adults = namesAndAges.filter {
	$0.value >= 18
}.map {
	$0.key
}

// 5.

func repeatTask(times: Int, task: () -> Void) {
	for _ in 0..<times {
		task()
	}
}

repeatTask(times: 10) {
	print("Swift lesson is awesome!")
}

// 6.

func mathSum(length: Int, series: (Int) -> Int) -> Int {
	var result = 0
	for i in 1...length {
		result += series(i)
	}
	return result
}

//mathSum(length: 10) { number in
//	number * number
//}

let result1 = mathSum(length: 10) { $0 * $0 }
result1

func fibonacci(_ number: Int) -> Int {
	if number <= 0 {
		return 0
	}

	if number == 1 || number == 2 {
		return 1
	}

	return fibonacci(number - 1) + fibonacci(number - 2)
}

let result3 = mathSum(length: 10, series: fibonacci)
result3


// 7.

let appRatings = [
  "Calendar Pro": [1, 5, 5, 4, 2, 1, 5, 4],
  "The Messenger": [5, 4, 2, 5, 4, 1, 1, 2],
  "Socialise": [2, 1, 2, 2, 1, 2, 4, 2]
]

var averageRatings: [String: Double] = [:]
appRatings.forEach {
	let total = $0.value.reduce(0, +)
	averageRatings[$0.key] = Double(total) / Double($0.value.count)
}

averageRatings

let goodApps = averageRatings.filter {
	$0.value > 3
}.map {
	$0.key
}

goodApps

/**

	Koleksiyon olarak String türü

*/

let string = "Murat"

for char in string {
	print(char)
}

let stringLength = string.count

// let fourthChar = string[3]

let cafeNormal = "café"
let cafeCombining = "cafe\u{0301}"

cafeNormal.count
cafeCombining.count

cafeNormal.unicodeScalars.count
cafeCombining.unicodeScalars.count

for codePoint in cafeCombining.unicodeScalars {
	print(codePoint.value)
}

/**
	String.Index ve subscript kullanarak String içindeki karakterlere erişme
*/

let firstIndex = cafeCombining.startIndex
let firstChar = cafeCombining[firstIndex]

//let lastIndex = cafeCombining.endIndex
//let lastChar = cafeCombining[lastIndex]

let lastIndex = cafeCombining.index(before: cafeCombining.endIndex)
let lastChar = cafeCombining[lastIndex]

let fourthIndex = cafeCombining.index(cafeCombining.startIndex, offsetBy: 3)
let fourthChar = cafeCombining[fourthIndex]

fourthChar.unicodeScalars.count
fourthChar.unicodeScalars.forEach { codePoint in
	print(codePoint.value)
}

let equal = cafeNormal == cafeCombining


let name = "Murat"
let backwardsName = name.reversed()

let secondCharIndex = backwardsName.index(backwardsName.startIndex, offsetBy: 1)
let secondChar = backwardsName[secondCharIndex]

let backwardsNameString = String(backwardsName)

/**
	Ham (raw) string
*/

let raw1 = #"Raw "No Escaping" \(no interpolation!). Use all the \ you want!"#
print(raw1)

let raw2 = ##"Aren't we "# clever"##
print(raw2)

let can = "can do that too"
let raw3 = #"Yes we \#(can)!"#
print(raw3)

/**

	Substring / String.SubSequence - Alt string oluşturma

*/

let fullName = "Murat Adıgüzel"
let spaceIndex = fullName.firstIndex(of: " ")!
let firstName = fullName[fullName.startIndex..<spaceIndex]

/**
	Açık uçlu aralıklar ile alt string elde etme
*/

let firstName1 = fullName[..<spaceIndex]

let lastName = fullName[fullName.index(after: spaceIndex)...]

/**

	Character türü özellikleri

*/

let singleCharacter: Character = "x"
singleCharacter.isASCII

let singleCharacter1: Character = "Ş"
singleCharacter1.isASCII

let space: Character = " "
space.isWhitespace

let space1: Character = "x"
space1.isWhitespace

let hexDigit: Character = "D"
hexDigit.isHexDigit

let hexDigit1: Character = "S"
hexDigit1.isHexDigit

let fiveChar: Character = "5"
fiveChar.wholeNumberValue

let romanNine: Character = "Ⅸ"
romanNine.wholeNumberValue


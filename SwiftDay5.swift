/**
  Sunum linki 7 gün geçerlidir.
  https://we.tl/t-sRQH4ogM3k
*/

import UIKit

/**

	Diziler - Arrays

*/

// Sabit - Değişken dizi tanımlama

let evenNumbers = [2, 4, 6, 8]

var subscribers: [String] = []

var subscribers2 = [String]()

let allZeros = Array(repeating: 0, count: 5)

let vowels = ["A", "E", "I", "O", "U"]


var players = ["Alice", "Bob", "Cindy", "Dan"]

// Dizilerin bazı özellikleri (isEmpty, count, first, last)

print(players.isEmpty)

if players.count < 2 {
	print("We need at least two players!")
} else {
	print("Let's start!")
}

var currentPlayer = players.first

print(currentPlayer as Any)

print(players.last as Any)


// Dizilerin bazı yöntemleri (min, max)

currentPlayer = players.min()
print(currentPlayer as Any)


print([2, 3, 1].first as Any)
print([2, 3, 1].min() as Any)

print(players.max() as Any)


if let currentPlayer = currentPlayer {
	print("\(currentPlayer) will start")
}


// Dizilerdeki değerlere erişme - Subscripting

var firstPlayer = players[0]

// var player = players[4]



// ArraySlice - Diziler ile aynı bellek ksımını kullanır, indeksler değişmez

let upcomingPlayersSlice = players[1...2]
print(upcomingPlayersSlice[1], upcomingPlayersSlice[2])

// ArraySlice ise yeni dizi oluşturma, yeni dizi olduğu için indeksler 0'dan başlar

let upcomingPlayersArray = Array(players[1...2])
print(upcomingPlayersArray[0], upcomingPlayersArray[1])


// Dizilerin bazı yöntemleri (contains)

func isEliminated(player: String) -> Bool {
	!players.contains(player)
}

print(isEliminated(player: "Bob"))


// ArraySlice ile contains kullanımı

players[1...3].contains("Bob")

players[1...3].contains("Alice")


// Diziye öğe ekleme

players.append("Eli")

// players.append(1)  // Hata - Eklenecek değer dizinin tutabileceği tür ile aynı olmalı


// += operatörü ile diziye yeni değerler ekleme

players += ["Gina"]


// Dizide bir konuma indeks ile değer ekleme

players.insert("Frank", at: 5)


// Diziden son öğeyi çıkarma

var removedPlayer = players.removeLast()
print("\(removedPlayer) was removed.")
players


// Diziden belirli bir indeksteki öğeyi çıkarma

removedPlayer = players.remove(at: 2)
print("\(removedPlayer) was removed.")
players

// Dizide bir değerin indeks değerini bulma

print(players.firstIndex(of: "Dan")!)

print(players)


// Subscript ile dizideki bir değeri güncelleme

players[4] = "Franklin"
print(players)

// Subscript + sayılabilir aralıklar ile dizinin bir kısmını güncelleme

players[0...1] = ["Donna", "Craig", "Brian", "Anna"]
print(players)


let playerAnna = players.remove(at: 3)
players.insert(playerAnna, at: 0)


// Dizideki iki değerin yerini birbiri ile değiştirme

players.swapAt(1, 3)


// Diziyi sıralama

players.sort()


// Orijinal diziyi bozmadan sıralı yeni dizi oluşturma

let newPlayersList = players.sorted()
newPlayersList

let scores = [2, 2, 8, 6, 1, 2, 1]


// Dizilerde for-in ile döngü

// 0 ... players.count - 1
for player in players {
	print(player)
}

// Dizilerde for-in ile indeks ile beraber değer döngüsü

for (index, player) in players.enumerated() {
	print("\(index + 1). \(player)")
}

func sumOfElements(in array: [Int]) -> Int {
	var sum = 0
	for number in array {
		sum += number
	}
	return sum
}

print(sumOfElements(in: scores))

for (index, player) in players.enumerated() {
	print("\(index + 1). \(player) - \(scores[index])")
}

// Egzersizler

// 1.

let array1 = [Int]()
// let array2 = []
let array3: [String] = []

// 2.

let array4 = [1, 2, 3]

print(array4[0])
// print(array4[5])
array4[1...2]
// array4[0] = 4
// array4.append(4)

// 3.

func removingOnce(_ item: Int, from array: [Int]) -> [Int] {
	var result = array
	if let index = array.firstIndex(of: item) {
		result.remove(at: index)
	}
	return result
}

let arrayNumbers = [1, 3, 3, 4, 2, 3, 2]
removingOnce(3, from: arrayNumbers)


// 4.

func removing(_ item: Int, from array: [Int]) -> [Int] {
	var newArray: [Int] = []
	for candidateItem in array {
		if candidateItem != item {
			newArray.append(candidateItem)
		}
	}
	return newArray
}

removing(3, from: arrayNumbers)

// 5.

func reversed(_ array: [Int]) -> [Int] {
	var newArray: [Int] = []
	for item in array {
		newArray.insert(item, at: 0)
	}
	return newArray
}

reversed(arrayNumbers)

Array(arrayNumbers.reversed())


/**

	Sözlükler - Dictionaries

*/


// Sabit - Değişken sözlük oluşturma

var namesAndScores = ["Anna": 2, "Brian": 2, "Craig": 8, "Donna": 6]

print(namesAndScores)

// Sözlüğü boşaltma ve boş sözlük oluşturma

namesAndScores = [:]

namesAndScores.isEmpty

var pairs: [String: Int] = [:]

// Sözlük kapasitesi verme

pairs.reserveCapacity(20)


namesAndScores = ["Anna": 2, "Brian": 2, "Craig": 8, "Donna": 6]

// Sözlükten anahtar ile bir değere erişme

print(namesAndScores["Anna"]!)

namesAndScores["Greg"]


// Sözlüğün bazı özellikleri (isEmpty, count)

namesAndScores.isEmpty

namesAndScores.count


var bobData = [
	"name": "Bob",
	"profession": "Card Player",
	"country": "USA"
]

// Sözlüğe anahtar - değer çifti ekleme

bobData.updateValue("CA", forKey: "state")

bobData

// Subscript yöntemiyle sözlüğe anahtar - değer çifti ekleme

bobData["city"] = "San Francisco"

bobData

// Egzersiz

func printLocation(ofPlayer player: [String: String]) {
	if let state = player["state"], let city = player["city"] {
		print("Player lives in \(city), \(state)")
	}
}

printLocation(ofPlayer: bobData)

// Sözlükteki bir değeri güncelleme

bobData.updateValue("Bobby", forKey: "name")

bobData

// Subscript yöntemi ile sözlükteki bir değeri güncelleme

bobData["profession"] = "Mailman"

bobData

// Sözlükten anahtar - değer çifti çıkarma

bobData.removeValue(forKey: "state")

bobData

// Subscript yöntemi ile sözlükten anahtar - değer çifti çıkarma

bobData["city"] = nil

bobData


// Sözlükte anahtar değer çifti (tuple) ile for-in döngüsü

for (player, score) in namesAndScores {
	print("\(player) - \(score)")
}

// Sözlükte sadece anahtarlar ile for-in döngüsü

for player in namesAndScores.keys {
	print("\(player), ", terminator: "")
}
print("")

// Sözlükte sadece değerler ile for-in döngüsü

for score in namesAndScores.values {
	print("\(score), ", terminator: "")
}
print("")


// Egzersizler

// 1.

// let dict1: [Int, Int] = [:]
// let dict2 = [:]
let dict3: [Int: Int] = [:]


// 2.

let dict4 = ["One": 1, "Two": 2, "Three": 3]

// dict4[1]
dict4["One"]
// dict4["Zero"] = 0
// dict4[0] = "Zero"

// 3.

let stateNames = ["NY": "New York", "CA": "California"]

//func printLongStateNames(in dictionary: [String: String]) {
//	for (_, value) in dictionary {
//		if value.count > 8 {
//			print(value)
//		}
//	}
//}

func printLongStateNames(in dictionary: [String: String]) {
	for value in dictionary.values {
		if value.count > 8 {
			print(value)
		}
	}
}

printLongStateNames(in: stateNames)

// 4.

func merging(_ dict1: [String: String], with dict2: [String: String]) -> [String: String] {
	var newDictionary = dict1

	for (key, value) in dict2 {
		newDictionary[key] = value
	}
	return newDictionary
}

let dict1 = ["A": "1", "B": "5", "C": "8"]
let dict2 = ["E": "6", "C": "12", "D": "1", "F": "9"]

merging(dict1, with: dict2)


/**

	Kümeler - Sets

*/

// Küme oluşturma

let setOne: Set<Int> = [1]

let someArray = [1, 2, 3, 1]

let explicitSet: Set<Int> = [1, 2, 3, 1]

var someSet = Set([1, 2, 3, 1])

print(someSet)

// Kümelerin bazı özellikleri (first)

someSet.first

// Kümelerin bazı yöntemleri (contains, insert, remove)

print(someSet.contains(1))

print(someSet.contains(4))

someSet.insert(5)

someSet

someSet.insert(2)

someSet

let removedElement = someSet.remove(1)

someSet.remove(6)


// Egzersizler

// 1.

var array5 = [1, 2, 3]


array5[0] = array5[1]
array5[0...1] = [4, 5]
// array5[0] = "Six"
// array5 += 6
for item in array5 { print(item) }

// 2.

func middle(_ array: [Int]) -> Int? {
	guard !array.isEmpty else {
		return nil
	}
	return array[array.count / 2]
}

let array6 = [2, 1, 5, 8, 10]
let array7 = [2, 4, 1, 5, 8, 10]

middle(array6)
middle(array7)

// 3.

func minMax(of numbers: [Int]) -> (min: Int, max: Int)? {
	if numbers.isEmpty {
		return nil
	}

	var min = numbers[0]
	var max = numbers[0]

	for number in numbers {
		if number < min {
			min = number
		}
		if number > max {
			max = number
		}
	}
	return (min, max)
}

minMax(of: array6)

// 4.

var dict5 = ["NY": "New York", "CA": "California"]

dict5["NY"]
dict5["WA"] = "Washington"
dict5["CA"] = nil

dict5

// 5.

//func occurrencesOfCharacters(in text: String) -> [Character: Int] {
//	var occurrences: [Character: Int] = [:]
//
//	for character in text {
//		if let count = occurrences[character] {
//			occurrences[character] = count + 1
//		} else {
//			occurrences[character] = 1
//		}
//	}
//	return occurrences
//}

func occurrencesOfCharacters(in text: String) -> [Character: Int] {
	var occurrences: [Character: Int] = [:]
	for character in text {
		occurrences[character, default: 0] += 1
	}
	return occurrences
}

let text = "murat adıgüzel"
occurrencesOfCharacters(in: text)


// 6.

//func isInvertible(_ dictionary: [String: Int]) -> Bool {
//	var seenValues: Set<Int> = []
//	for value in dictionary.values {
//		if seenValues.contains(value) {
//			return false
//		}
//		seenValues.insert(value)
//	}
//	return true
//}

func isInvertible(_ dictionary: [String: Int]) -> Bool {
	Set(dictionary.values).count == dictionary.values.count
}

isInvertible(["A": 1, "C": 5, "D": 3, "E": 6])

isInvertible(["A": 1, "C": 5, "D": 5, "E": 6])

// 7.

var nameTitleLookup: [String: String?] = ["Mary": "Engineer", "Patrick": "Intern", "Ray": "Hacker"]

nameTitleLookup.updateValue(nil, forKey: "Patrick")

nameTitleLookup

// nameTitleLookup["Ray"] = nil
nameTitleLookup.removeValue(forKey: "Ray")

nameTitleLookup

/**
  Sunum linki 7 gün geçerlidir.
  https://we.tl/t-r0NZY7863W
*/


import Foundation

/**
	Kod yorumları / Code comments
*/


// Bu bir kod yorumudur. Derleyici tarafından çalıştırılmaz.

// Bu da bir yorumdur.
// Birden fazla satıra bölünmüştür.

/* Bu dabir yorumdur
Çok
Fazla
Satıdan
Oluşur
*/

/* Bu bir yorumdur.

/* Ve içinde farklı bir
yorum vardır
*/

Bu da ilk yorumun devamıdır.

*/

/**
	print işlevi
*/

print("Hello, Swift trainee.")


/**
	Aritmetik işlemler / Arithmetic operations
*/

/*

Toplama - Add +
Çıkarma - Subtract -
Çarpma - Multiply *
Bölme - Divide /

*/

2+6
10-2
2 * 4
24 / 3

// 2 +6
// 10- 2

22 / 7

22.0 / 7.0

// Modulo - %

10 % 3

28 % 10

(28.0).truncatingRemainder(dividingBy: 10.0)

//  Shifting operators - Kaydırma operatörleri
//  <<  >>

// 14 - 0000 1110
// 56 - 0011 1000

// 0000 0001 ->  0000 1000

1 << 3
32 >> 2


((8000 / (5 * 10)) - 32) >> (29 % 5)

350 / 5 + 2

350 / (5 + 2)

/**
	Hazır matematiksel işlevler / Math functions
*/

sin(45 * Double.pi / 180)
cos(45 * Double.pi / 180)

(2.0).squareRoot()

max(5, 10)
min(5, 10)

max((2.0).squareRoot(), Double.pi / 2)


/**
	Swift türleri ile sabit ve değişken tanımlama /
	Constant and variable declarations with Swift Types
*/

let number: Int = 10

let pi: Double = 3.14159

// Float


var variableNumber: Int = 42

variableNumber = 0
variableNumber = 1_000_000


/*

personAge
numberOfPeople
gradePointAverage

a
temp
average

Camel case -> gradePointAverage
Snake case -> grade_point_average
Pascal case -> GradePointAverage
Flat case -> gradepointaverage

*/

var 😀: Int = 5

/**
	Artırma ve eksiltme / Increment and decrement
*/

var counter: Int = 0

counter += 1

counter -= 1

counter = counter + 1
counter = counter - 1

// *= /=


// Exercises

// 1.

let myAge: Int = 33

// 2.

var averageAge: Double = 22
averageAge = (averageAge + 33) / 2

// 3.

let testNumber: Int = 40
let evenOdd = testNumber % 2

// 4.

var answer: Int = 32
answer += 1
answer += 10
answer *= 10
answer >>= 3

// 5.

var dogs: Int = 0
dogs += 1

// 6.

var age: Int = 16
print(age)

age = 30
print(age)

// 7.

let x: Int = 46
let y: Int = 10

let answer1: Int = (x * 100) + y
let answer2: Int = (x * 100) + (y * 100)
let answer3: Int = (x * 100) + (y / 10)

// 8.

8 - 4 * 2 + 6 / 3 * 4

8 - (4 * 2) + ((6 / 3) * 4)

// 9.

let rating1: Double = 4
let rating2: Double = 2
let rating3: Double = 5
let averageRating: Double = (rating1 + rating2 + rating3) / 3

// 10.

let voltage: Double = 240.0
let current: Double = 7.5
let power: Double = voltage * current

// 11.

let resistance: Double = power / (current * current)

// 12.

let randomNumber: UInt32 = arc4random()
let diceRoll: UInt32 = 1 + randomNumber % 6

// 13.

let a: Double = 2.0
let b: Double = 3.0
let c: Double = 1.0

// 2x^2 + 3x + 1 = 0

let root1: Double = (-b + (b * b - 4 * a * c).squareRoot()) / (2 * a)
let root2: Double = (-b - (b * b - 4 * a * c).squareRoot()) / (2 * a)

/**
	Tür dönüşümü / Type conversion
*/

var integer: Int = 100
var decimal: Double = 12.5

integer = Int(decimal)


let hourlyRate: Double = 19.5
let hoursWorked: Int = 10
let totalCost: Double = hourlyRate * Double(hoursWorked)

/**
	Tür çıkarımı / Type inference
*/

let typeInferredInt = 42
let typeInferredDouble = 3.14159

let wantADouble = 3

let actuallyADouble = Double(3)
let actuallyADouble2: Double = 3
let actuallyADouble3 = 3 as Double
let wantADouble2 = 3.0

// 1.
let age1 = 42
let age2 = 21

// 2.
let avg1 = (age1 + age2) / 2

// 3.

let avg2 = (Double(age1 + age2)) / 2

/**
	Karakterler ve String'ler / Characters and Strings
*/


let characterA: Character = "a"
let characterDog: Character = "🐶"

// let stringDog: String = "Dog"
let stringDog = "Dog"

let characterB: Character = "b"

/**
	String birleştirme / String concatination
*/

var message = "Hello" + " my name is "
let name = "Murat"
message += name

let exclamationMark: Character = "!"
message += String(exclamationMark)

/**
	String ekleme / String interpolation
*/

message = "Hello my name is \(name)!"

let oneThird = 1.0 / 3.0
let oneThirdLongString = "One third is \(oneThird) as a decimal."

/**
	Çok satırlı String tanımama / Multiline String declaration
*/

let bigString = """
  You can have a string
  that contains mutiple
  lines
  by
  doing this.
  """

print(bigString)

// 1.

let firstName = "Murat"
let lastName = "Adıgüzel"

// 2.

let fullName = firstName + " " + lastName

// 3.

let myDetails = "Merhaba, benim adım \(fullName)."


/**
	Tuple
*/


let coordinates: (Int, Int) = (2, 3)

let coordinates2 = (2, 3)

let coordinatesDoubles = (2.1, 3.5)

let coordinatesMixed = (2.1, 3)

/**
	Tuple değerlerine indeks ile erişim / Accessing tuple values by indices
*/

let x1 = coordinates.0
let y1 = coordinates.1

let x2 = coordinatesMixed.0
let y2 = coordinatesMixed.1

/**
	Tuple değerlerini isimlendirme / Naming tuple values
*/

let coordinatesNamed = (x: 2, y: 3)

/**
	İsim ile tuple değerlerine erişim / Accessing tuple values by names
*/

let x3 = coordinatesNamed.x
let y3 = coordinatesNamed.y

/**
	Tuple değerleri ile sabit tanımlama / Declaring constants with tuple values
*/

let coordinates3D = (x: 2, y: 3, z: 1)
let (x4, y4, z4) = coordinates3D
x4
y4
z4

let x5 = coordinates3D.x
let y5 = coordinates3D.y
let z5 = coordinates3D.z

/**
	Tanım sırasında bir tuple değerini yok sayma / Ingoring a tuple value while declaring constants.
*/

let (x6, y6, _) = coordinates3D
x6
y6

// 1.
let temperature = (5, 4, 2021, 18.7)

// 2.
let temperature2 = (day: 5, month: 4, year: 2021, averageTemperature: 18.7)

// 3.

let (day, _, _, averageTemperature) = temperature2
day
averageTemperature

// 4.
var temperature3 = (day: 5, month: 4, year: 2021, averageTemperature: 18.7)
temperature3.averageTemperature = 12.2

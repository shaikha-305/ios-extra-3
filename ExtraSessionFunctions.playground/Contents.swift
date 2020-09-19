import UIKit

/*: 1. Create a a function that greets the person by saying Hello to their name.
 ```
 sayHello(name: "Omar") // Output:  Hello Omar
 ```
 */
func sayHello(name: String) -> String{
    return "Hello \(name)"
}

sayHello(name: "Omar")


/*: 2. Create a a function that greets the person by saying (Hello) to their names, or "Hello"'s equivalent translation in other languages. Choose at least 3 languages.
 
 > ***(Bonus!)**: If the language is not provided, english is the default value.
```
 sayHello(name: "Omar", language: "English") // Output:  Hello Omar
 sayHello(name: "Omar", language: "French") // Output:  Bonjour Omar
 sayHello(name: "Omar", language: "Turkish") // Output:  Merhaba Omar

```
*/
func sayHello2(name: String, language: String = "English") -> String{
    if language == "English"{
        return "Hello \(name)"
    }else if language == "French"{
        return "Bonjour \(name)"
    }else if language == "Turkish"{
        return "Merhaba \(name)"
    }else if language == "Spanish"{
        return "Hola \(name)"
    }else{
        return "Umbayzzzz"
    }
}
sayHello2(name: "Omar", language: "French")
sayHello2(name: "Omar")






/*:
3. Create a function that will take your birth year, and calculates your age
 > ***Bonus!**: Insert months and days.
```
 calculateAge(birthYear: 1996) // Output: 24
```
*/
func calculateAge(birthYear: Int) -> String{
    var months = (2020 - birthYear) * 12
    var age = 2020 - birthYear
    return "you're \(age) years old, \(months) months old"
}

calculateAge(birthYear: 2003)
func calculateAge2(birthYear: Int, birthMonth: Int, birthDay: Int) -> String{
    var months = 9 - birthMonth
    var year = 2020 - birthYear
    var day = 19 - birthDay
    if year < 0 {
        return "you're not born yet😝"
    }else if months < 0 && day > 0{
        year -= 1
        months += 12
        return "\(year) years old and \(months) months old and \(day) days old"
    }else if day < 0 && months >= 0{
        day = birthDay - 19
        return "\(year) years old and \(months) months old and \(day) days old"
    }else if months < 0 && day < 0{
        year -= 1
        months += 12
        day = birthDay - 19
        return "\(year) years old and \(months) months old and \(day) days old"
    }else if day == 0{
        year -= 1
        months += 12
        months += 1
        return "\(year) years old and \(months) months old and \(day) days old"
    }else{
        return ""
    }
}
calculateAge2(birthYear: 1996, birthMonth: 11, birthDay: 19)
/*: 4. Create a a function that takes a parameter of a person's name, and it **returns** the meaning of the name. (do at least 3 names)
```
 print(meaning(name: "رتاج")) // Output:  الباب العظيم
 print(meaning(name: "حيدر")) // Output:  الأسد الجميل
 print(meaning(name: "غدير")) // Output:  المطر

```
*/
func meaning(name: String) -> String{
    if name == "رتاج"{
        return "الباب العظيم"
    }else if name == "حيدر"{
        return "الاسد الجميل"
    }else if name == "غدير"{
        return "المطر"
    }else{
        return ""
    }
}

print(meaning(name: "غدير"))
print(meaning(name: "رتاج"))
print(meaning(name: "حيدر"))






/*: 5. Create a a function that takes a parameter of a person's name, and it **returns** the meaning of the name. (do at least 3 names)
 ***((BONUS))**: Create it using dictionaries
```
 print(meaning(name: "رتاج")) // Output:  الباب العظيم
 print(meaning(name: "حيدر")) // Output:  الأسد الجميل
 print(meaning(name: "غدير")) // Output:  المطر

```
*/
var nameAndMeaning: [String:String] = ["حيدر":"الاسد الجميل",
                                        "رتاج":"الباب العظيم",
                                       "غدير":"المطر"]

func meaning2(name: String) -> String{
    if name == "رتاج"{
        return nameAndMeaning["رتاج"]!
    }else if name == "حيدر"{
        return nameAndMeaning["حيدر"]!
    }else if name == "غدير"{
        return nameAndMeaning["غدير"]!
    }else{
        return ""
    }
}

print(meaning2(name: "غدير"))
print(meaning2(name: "رتاج"))
print(meaning2(name: "حيدر"))





/*:
 6. Create a random joke function that returns a random joke from an array stored inside the function
 ```
 print(randomJoke()) // Output: مرة واحد راح للبقالة قالوه عندك جبنة بيضة قالو لا وهو عنده قوه
 ```
 */
func randomJoke() -> String{
    var jokes = ["مرة واحد راح للبقالة قالوه عندك جبنة بيضة قالو لا وهو عنده قوه", "في مزارع ساجنينه ليش؟ مسوي مشاتل", "في نودلز تهاوشت مع زوجها جان تقوله بروح اندومي"]
    return jokes.randomElement()!
}
randomJoke()



/*:
7. Create a function that converts KGs to pounds. And a function that converts pounds to KGs
 > 1 KG = 0.453592
```
 print(poundToKilo(4)) // Output: 1.814368
 print(KiloToPound(4)) // Output: 8.81849

```
*/
// multiply the number of kilograms by 2.2046 to get the number of pounds
func kiloToPound(kilo: Double) -> Double{
    return kilo * 2.2046
}
print(kiloToPound(kilo: 4))

// Divide the number of pounds by 2.2046 to get the number of kg
func poundToKilo(pound: Double) -> Double{
     return pound / 2.2046
}
print(poundToKilo(pound: 4))





/*:
8. Create a function that takes an array of integer, and it returns an array with grades that are only higher then 90!
 > ***SUPER DUPER** Use `filter` method!
```
 print(above90([60, 70, 80, 90, 92, 91])) // Output: [90, 92, 91]

```
*/
func above90(grades: [Int]) -> [Int]{
    var gradesHigherThan90: [Int] = []
    for grade in grades{
        if grade >= 90{
            gradesHigherThan90.append(grade)
        }
    }
    return gradesHigherThan90
}
print(above90(grades: [60, 70, 80, 90, 92, 91]))

func above90WithFilterMethod(grades: [Int]) -> [Int]{
    return grades.filter{$0>=90}
}
print(above90WithFilterMethod(grades: [60, 80, 90, 99, 94,20]))


/*:
 
9. Create a function that converts multiple KGs to pounds. It takes array of Kilos, and returns array of pounds
 
> 1 KG = 0.453592
 
 > ***SUPER DUPER** Use `map` method!
```
 print(poundsToKilos([4,5,6,7])) // Output: [1.81437, 2.26796, 2.72155, 3.17515]

```
*/
func kilosToPounds(kilos: [Double]) -> [Double]{
    var inPounds: [Double] = []
    for kilo in kilos{
        var inPound = kilo * 2.2046
        inPounds.append(inPound)
    }
    return inPounds
}
print(kilosToPounds(kilos: [4,5,6,7]))

func kilosToPoundsWithMapMethod(kilos: [Double]) -> [Double]{
    return kilos.map{kiloToPound(kilo: $0)}
}
print(kilosToPoundsWithMapMethod(kilos: [4,5,6,7]))


// reduce method
var numbers = [10,20,40,20,10]
func sum(numbers: [Int]) -> Int{
    return numbers.reduce(0, +)
}
print(sum(numbers: numbers))

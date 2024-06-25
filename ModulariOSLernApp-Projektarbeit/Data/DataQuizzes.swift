//
//  TestQuizzes.swift
//  ModulariOSLernApp-Projektarbeit
//
//  Created by Leon Chamoun on 22.05.24.
//

import Foundation

let module1Quiz1 = CodeExercise(id: 1,
                                title: "Create a constant",
                                description: "Create a constant named `pi` and set it to the value 3.14159. Print the variable.",
                                startingCode: "...",
                                solutionCode: ["""
                                let pi = 3.14159
                                print(pi)
                                """])

let module1Quiz2 = CodeExercise(id: 2,
                                title: "Learn comments",
                                description: "Comment out the following line in Swift: `var x = 10`.",
                                startingCode: "var x = 10",
                                solutionCode: ["// var x = 10"])

let module2Quiz1 = CodeExercise(id: 3,
                                title: "Declare a variable",
                                description: """
1) Declare a variable `name` of type `String` and assign it the value "John"
2) Create a constant `age` of `Int` and set it to 18.
3) Use String Interpolation to print the following text:
"Hello, my name is John and I am 18 years old"
""",
                                startingCode: "...",
                                solutionCode: ["""
var name: String = "John"
let age: Int = 18
print("Hello, my name is \\(name) and I am \\(age) years old")
"""])

let module2Quiz2 = CodeExercise(id: 4,
                                title: "Learn Operators",
                                description: """
1) Create two constants `a` and `b` of type `Int` with the values 10 and 18.
2) Add these two variables and store the result in a new constant `sum` of type `Int`.
3) Then create a new constant of type `Int` with the name `moduleOperation` and perform *sum module 10*. Print the result.
""",
                                startingCode: "...",
                                solutionCode: ["""
let a: Int = 10
let b: Int = 18
let sum: Int = a + b
let moduleOperation: Int = sum % 10
print(moduleOperation)
"""])

let module3Quiz1 = CodeExercise(id: 5,
                                title: "Learn if-else",
                                description: """
Write an if-else condition that checks if a number `number` is greater than 10 and prints "Greater than 10" or "Less than or equal to 10" accordingly.
""",
                                startingCode: "let number = 12",
                                solutionCode: ["""
let number = 12
if number > 10 {
    print("Greater than 10")
} else {
    print("Less than or equal to 10")
}
"""])

let module3Quiz2 = CodeExercise(id: 6,
                                title: "Learn switch",
                                description: """
Write a switch statement that checks the value of a variable `grade` and prints "Excellent" for A, "Good" for B, "Fair" for C, "Poor" for D, "Fail" for F and for default "Invalid grade".
""",
                                startingCode: """
                                let grade = "B"
                                """,
                                solutionCode: ["""
let grade = "B"
switch grade {
case "A":
    print("Excellent")
case "B":
    print("Good")
case "C":
    print("Fair")
case "D":
    print("Poor")
case "F":
    print("Fail")
default:
    print("Invalid grade")
}
"""])

let module3Quiz3 = CodeExercise(id: 7,
                                title: "Learn for-loops",
                                description: """
Write a for-in loop that iterates over an array of `numbers` and prints each number.
""",
                                startingCode: """
                                let numbers = [1, 2, 3, 4, 5]
                                """,
                                solutionCode: ["""
let numbers = [1, 2, 3, 4, 5]
for number in numbers {
    print(number)
}
"""])

let module3Quiz4 = CodeExercise(id: 8,
                                title: "Learn while-loops",
                                description: """
Write a while loop that counts down from 5 to 1 and prints each number (use the `-=` operator)
""",
                                startingCode: """
                                var counter = 5
                                """,
                                solutionCode: ["""
var counter = 5
while counter > 0 {
    print(counter)
    counter -= 1
}
"""])

let module3Quiz5 = CodeExercise(id: 9,
                                title: "Learn repeat-while-loops",
                                description: """
Write a `repeat-while` loop that counts up from 1 to 5 and prints each number (use the `+=` operator)
""",
                                startingCode: """
                                var count = 1
                                """,
                                solutionCode: ["""
var count = 1
repeat {
    print(count)
    count += 1
} while count <= 5
"""])

let module3Quiz6 = CodeExercise(id: 10,
                                title: "Learn continue",
                                description: """
Write a for-in loop that iterates over the numbers from 1 to 10 and only prints the even numbers.
""",
                                startingCode: """
                                for number in 1...10 {
                                    ...
                                }
                                """,
                                solutionCode: ["""
for number in 1...10 {
    if number % 2 == 0 {
        print(number)
    }
    continue
}
"""])

let module3Quiz7 = CodeExercise(id: 11,
                                title: "Learn break",
                                description: """
Write a for-in loop that iterates over the numbers from 1 to 10 and breaks the loop when it reaches a even number.
""",
                                startingCode: """
                                for i in 1...10 {
                                    ...
                                }
                                """,
                                solutionCode: ["""
for i in 1...10 {
    if i % 2 == 0 {
        break
    }
    print(i)
}
"""])

let module3Quiz8 = CodeExercise(id: 12,
                                title: "Learn fallthrough",
                                description: """
Write a switch statement with a case `1` that falls through to the code in case `2`.
""",
                                startingCode: """
                                let value = 1
                                """,
                                solutionCode: ["""
let value = 1
switch value {
case 1:
    print("Case 1")
    fallthrough
case 2:
    print("Case 2")
default:
    print("Other case")
}
"""])

let module4Quiz1 = CodeExercise(id: 13,
                                title: "Learn functions",
                                description: """
Write a function `square` that takes a Int parameter `number` and prints the result.
""",
                                startingCode: "square(number: 10)",
                                solutionCode: ["""
func square(number: Int) {
    print(number * number)
}
square(number: 10)
"""])

let module4Quiz2 = CodeExercise(id: 14,
                                title: "Learn Argument Labels I",
                                description: """
Write a function `multiply` that takes two parameters `a` and `b` and returns their product. Use argument labels `number1` and `number2`.
""",
                                startingCode: """
                                let result = multiply(number1: 5, number2: 5)
                                print(result)
                                """,
                                solutionCode: ["""
func multiply(number1 a: Int, number2 b: Int) -> Int {
    return a * b
}
let result = multiply(number1: 5, number2: 5)
print(result)
"""])

let module4Quiz3 = CodeExercise(id: 15,
                                title: "Learn Argument Labels II",
                                description: """
Write a function `subtract` that takes two parameters (`a` and `b`) without argument labels and returns the difference.
""",
                                startingCode: """
                                let result = subtract(20, 5)
                                print(result)
                                """,
                                solutionCode: ["""
func subtract(_ a: Int, _ b: Int) -> Int {
    return a - b
}
let result = subtract(20, 5)
print(result)
"""])

let module4Quiz4 = CodeExercise(id: 16,
                                title: "Learn default Parameter Values",
                                description: """
Write a function `increment` that has a parameter `number` and an optional parameter `by` (use argument label `incrementValue`), which defaults to 1. The function should increment `number` by the value of `by` and return the result.
""",
                                startingCode: """
                                let result = increment(5)
                                print(result)
                                """,
                                solutionCode: ["""
func increment(_ number: Int, incrementValue: Int = 1) -> Int {
    return number + incrementValue
}
let result = increment(5)
print(result)
"""])

let module4Quiz5 = CodeExercise(id: 17,
                                title: "Learn variadic Parameters",
                                description: """
Write a function `sum` that accepts a variable `number` of `Int` values and returns their `sum`.
""",
                                startingCode: """
                                let result = sum(1, 2, 3, 4, 5)
                                print(result)
                                """,
                                solutionCode: ["""
func sum(_ numbers: Int...) -> Int {
    return numbers.reduce(0, +)
}

let result = sum(1, 2, 3, 4, 5)
print(result)
"""])


let module4Quiz6 = CodeExercise(id: 17,
                                title: "Learn In-Out Parameters",
                                description: """
Rewrite the function `increment` to accept a new parameter `result`, which saves the result in this variable (`result` should be the last parameter). The function should return nothing.
""",
                                startingCode: """
                                func increment(_ number: Int, by incrementValue: Int = 1) -> Int {
                                    return number + incrementValue
                                }
                                
                                var result = 0
                                increment(5, &result)
                                print(result)
                                """,
                                solutionCode: ["""
func increment(_ number: Int, incrementValue: Int = 1, result: inout Int) {
    result = number + incrementValue
}

var result = 0
increment(5, result: &result)
print(result)
"""])

let module5Quiz1 = CodeExercise(id: 18,
                                title: "Learn Bindings",
                                description: """
1) Write a function `printName` that accepts an optional string `name`.
2) Use `if let` to bind the unwrapped `name` in a variable called `unwrappedName`.
3) Print the `unwrappedName`.
4) Otherwise print "Name is nil".
""",
                                startingCode: """
                                printName("Alice")
                                printName(nil)
                                """,
                                solutionCode: ["""
func printName(_ name: String?) {
    if let unwrappedName = name {
        print(unwrappedName)
    } else {
        print("Name is nil")
    }
}
printName("Alice")
printName(nil)
"""])

let module5Quiz2 = CodeExercise(id: 19,
                                title: "Learn Chaining",
                                description: """
1) Write a function `getUppercaseName` that accepts an optional string `name` and returns the uppercase version of the name.
2) Use optional chaining to access the String function `uppercased()`.
""",
                                startingCode: """
                                ...
                                
                                let uppercasedName = getUppercaseName("Bob")
                                if let unwrappedUppercasedName = uppercasedName {
                                    print(unwrappedUppercasedName)
                                }
                                """,
                                solutionCode: ["""
func getUppercaseName(_ name: String?) -> String? {
    return name?.uppercased()
}

let uppercasedName = getUppercaseName("Bob")
if let unwrappedUppercasedName = uppercasedName {
    print(unwrappedUppercasedName)
}
"""])

let module5Quiz3 = CodeExercise(id: 20,
                                title: "Learn Nil-Coalescing",
                                description: """
Write a function `getNameOrDefault` that accepts an optional string `name` and returns the name if it has a value or "Unknown" if it is nil.
""",
                                startingCode: """
                                ...
                                
                                let name = getNameOrDefault(nil)
                                print(name)
                                """,
                                solutionCode: ["""
func getNameOrDefault(_ name: String?) -> String {
    return name ?? "Unknown"
}

let name = getNameOrDefault(nil)
print(name)
"""])

let module5Quiz4 = CodeExercise(id: 21,
                                title: "Learn Unconditional Unwrapping",
                                description: """
Write a function `forceUnwrapName` that accepts an optional string `name` and forcefully unwraps and returns the name.
""",
                                startingCode: """
                                ...
                                
                                let name = forceUnwrapName("Charlie")
                                print(name)
                                """,
                                solutionCode: ["""
func forceUnwrapName(_ name: String?) -> String {
    return name!
}

let name = forceUnwrapName("Charlie")
print(name)
"""])


let module6Quiz1 = CodeExercise(id: 22,
                                title: "Learn Arrays",
                                description: """
1) Create an array `fruits` with the values "Apple", "Banana", and "Cherry".
2) Add "Orange" to the `fruits` array.
3) Remove "Cherry" from the `fruits` array.
4) Change "Apple" to "Mango".
5) Iterate over the `fruits` array and print each element.
""",
                                startingCode: "...",
                                solutionCode: ["""
var fruits = ["Apple", "Banana", "Cherry"]
fruits.append("Orange")
fruits.remove(at: 2)
fruits[0] = "Mango"
for fruit in fruits {
    print(fruit)
}
"""])

let module6Quiz2 = CodeExercise(id: 23,
                                title: "Learn Sets",
                                description: """
1) Create a set `colors` with the values "Red", "Green", and "Blue".
2) Add "Yellow" to the `colors` set.
3) Remove "Red" from the `colors` set.
4) Iterate over the `colors` set and print each element.
5) Create a new set `colors2` with the values "Yellow", "Black", and "Magenta" and combine it with `colors` to a new set `combinedColors`.
6) Iterate over the `combinedColors` set and print each element.
""",
                                startingCode: "...",
                                solutionCode: ["""
var colors: Set = ["Red", "Green", "Blue"]
colors.insert("Yellow")
colors.remove("Red")
for color in colors {
    print(color)
}
var colors2: Set = ["Yellow", "Black", "Magenta"]
var combinedColors = colors.union(colors2)
for color in combinedColors {
    print(color)
}
"""])

let module6Quiz3 = CodeExercise(id: 24,
                                title: "Learn Dictionaries",
                                description: """
1) Create a dictionary `person` with the keys "name", "age", and "city" and the corresponding values "Alice", 30, and "New York".
2) Change the value of the key "city" in the `person` dictionary to "Los Angeles".
3) Remove the value of the key "name" in the `person` dictionary.
4) Iterate over the `person` dictionary and print each key and value.
""",
                                startingCode: "...",
                                solutionCode: ["""
var person: [String: Any] = ["name": "Alice", "age": 30, "city": "New York"]
person["city"] = "Los Angeles"
person["name"] = nil
for (key, value) in person {
    print("\\(key): \\(value)")
}
"""])


let module7Quiz1 = CodeExercise(id: 25,
                                title: "Learn Classes",
                                description: """
1) Define a class `Person` with the properties `name` and `age`.
4) Define a function `printInformations()`, that prints the following text:
"Hello, my name is `name` and I am `age`
3) Create an instance of the `Person` class with the name "John" and age 18 and call the function `printInformations()`.
""",
                                startingCode: "...",
                                solutionCode: ["""
class Person {
    var name: String
    var age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }

    func printInformations() {
        print("Hello, my name is \\(name) and I am \\(age)")
    }
}

let person = Person(name: "John", age: 18)
person.printInformations()
"""])

let module7Quiz2 = CodeExercise(id: 26,
                                title: "Learn Inheritance",
                                description: """
1) Create a subclass `Student` that inherits from the `Person` class and has an additional property `grade`.
2) Create an instance of the `Student` class with the name "John", age 18 and grade "A"

Tip: You need to call the function `super.init(name:, age:)` in the initializer to call the superclass.
""",
                                startingCode: """
                                class Person {
                                    var name: String
                                    var age: Int
                                    
                                    init(name: String, age: Int) {
                                        self.name = name
                                        self.age = age
                                    }

                                    func printInformations() {
                                        print("Hello, my name is \\(name) and I am \\(age)")
                                    }
                                }
                                
                                ...
                                
                                let student = Student(name: "John", age: 18, grade: "A")
                                student.printInformations()
                                """,
                                solutionCode: ["""
class Person {
    var name: String
    var age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }

    func printInformations() {
        print("Hello, my name is \\(name) and I am \\(age)")
    }
}

class Student: Person {
    var grade: String
    
    init(name: String, age: Int, grade: String) {
        self.grade = grade
        super.init(name: name, age: age)
    }
}

let student = Student(name: "John", age: 18, grade: "A")
student.printInformations()
"""])

let module7Quiz3 = CodeExercise(id: 27,
                                title: "Learn Protocols",
                                description: """
1) Define a protocol `Vehicle` with a method `drive`.
2) Create a class `Car` that adopts the `Vehicle` protocol and implements the `drive` method.
3) The method `drive` should print "Driving a car".
4) Create an instance of the `Car` class call the function `drive()`.
""",
                                startingCode: "",
                                solutionCode: ["""
protocol Vehicle {
    func drive()
}

class Car: Vehicle {
    func drive() {
        print("Driving a car")
    }
}

let car = Car()
car.drive()
"""])

let module7Quiz4 = CodeExercise(id: 28,
                                title: "Learn Extensions",
                                description: """
1) Create an extension for the `String` class that adds a method `reversedString` which returns the reversed string.
2) Call the method `reversedString` with the String "hello" and print the result.

Tip: Use the String method `reversed()`.
""",
                                startingCode: "...",
                                solutionCode: ["""
extension String {
    func reversedString() -> String {
        return String(self.reversed())
    }
}

print("hello".reversedString())
"""])

let module8Quiz1 = CodeExercise(id: 29,
                                title: "Learn Errors",
                                description: """
1) Define a `LoginError` enumeration that adopts the `Error` protocol and has the cases `invalidUsername` and `invalidPassword`.
2) Write a function `login` that checks a username and password and throws an error if the inputs are invalid.
    2.1) If username is not "admin" throw an error.
    2.2) If password is not "1234" throw an error.
    2.3) Print "Login successful" after both checks.
3) Improve the code below with `do-catch`
""",
                                startingCode: """
                                ...
                                
                                try login(username: "admin", password: "1234")
                                print("Invalid username")
                                print("Invalid password")
                                print("Other error")
                                """,
                                solutionCode: ["""
enum LoginError: Error {
    case invalidUsername, invalidPassword
}

func login(username: String, password: String) throws {
    if username != "admin" {
        throw LoginError.invalidUsername
    }
    if password != "1234" {
        throw LoginError.invalidPassword
    }
    print("Login successful")
}

do {
    try login(username: "admin", password: "1234")
} catch LoginError.invalidUsername {
    print("Invalid username")
} catch LoginError.invalidPassword {
    print("Invalid password")
} catch {
    print("Other error")
}
"""])

let module9Quiz1 = CodeExercise(id: 30,
                                title: "Learn Closures",
                                description: """
Write a simple closure (`add`) that adds two `Int` (`a` and `b`) values and returns the result.
""",
                                startingCode: """
                                let add: ... =
                                
                                let result = add(2, 3)
                                print(result)
                                """,
                                solutionCode: ["""
let add: (Int, Int) -> Int = { (a, b) in
    return a + b
}
let result = add(2, 3)
print(result)
"""])

let module9Quiz2 = CodeExercise(id: 31,
                                title: "Learn Capturing Values",
                                description: """
Write a closure that captures an `Int` variable and increments its value.
""",
                                startingCode: """
                                var counter = 0
                                
                                ...
                                
                                incrementCounter()
                                print(counter)
                                """,
                                solutionCode: ["""
var counter = 0
let incrementCounter = {
    counter += 1
}
incrementCounter()
print(counter)
"""])

let module9Quiz3 = CodeExercise(id: 32,
                                title: "Learn Generic Functions",
                                description: """
Write a generic function `square` that calculates and returns the square of a number.

Tip: `T` must conform to the `Numeric` protocol.
""",
                                startingCode: """
                                ...
                                
                                var double = square(2.5)
                                var integer = square(10)
                                print(double)
                                print(integer)
                                """,
                                solutionCode: ["""
func square<T: Numeric>(_ number: T) -> T {
    return number * number
}

var double = square(2.5)
var integer = square(10)
print(double)
print(integer)
"""])

let module10Quiz1 = CodeExercise(id: 33,
                                title: "Learn Property Observers",
                                description: """
1) Create a class `BankAccount` with a property `balance` of type `Double`.
2) Use `willSet` and `didSet` observers.
   2.1) `willSet` should print "Balance is about to change to (newValue)".
   2.2) `didSet` should print "Deposited (balance - oldValue) units" if the balance increased, or "Withdrew (oldValue - balance) units" if the balance decreased.
3) Create an instance `account` and change the balance to 100.0 and to 75.0
""",
                                startingCode: "...",
                                solutionCode: ["""
class BankAccount {
    var balance: Double = 0.0 {
        willSet {
            print("Balance is about to change to \\(newValue)")
        }
        didSet {
            if balance > oldValue {
                print("Deposited \\(balance - oldValue) units")
            } else {
                print("Withdrew \\(oldValue - balance) units")
            }
        }
    }
}

let account = BankAccount()
account.balance = 100.0
account.balance = 75.0
"""])


let module10Quiz2 = CodeExercise(id: 34,
                                title: "Learn Type Casting",
                                description: """
Write a function `describeVehicles` that accepts an array of `Vehicle` objects and prints "Driving a car" for each Car object and "Riding a bike" for each `Bike` object.
""",
                                startingCode: """
                                class Vehicle {}
                                class Car: Vehicle {
                                    func drive() {
                                        print("Driving a car")
                                    }
                                }
                                class Bike: Vehicle {
                                    func ride() {
                                        print("Riding a bike")
                                    }
                                }

                                let vehicles: [Vehicle] = [Car(), Bike(), Car()]

                                ...

                                describeVehicles(vehicles: vehicles)
                                """,
                                solutionCode: ["""
class Vehicle {}
class Car: Vehicle {
    func drive() {
        print("Driving a car")
    }
}
class Bike: Vehicle {
    func ride() {
        print("Riding a bike")
    }
}

let vehicles: [Vehicle] = [Car(), Bike(), Car()]

func describeVehicles(vehicles: [Vehicle]) {
    for vehicle in vehicles {
        if let car = vehicle as? Car {
            car.drive()
        } else if let bike = vehicle as? Bike {
            bike.ride()
        }
    }
}

describeVehicles(vehicles: vehicles)
"""])


let module11Quiz1 = CodeExercise(id: 35,
                                 title: "Create a Greeting View",
                                 description: """
                                 Create a `GreetingView` struct in SwiftUI that displays the text "Welcome to SwiftUI!" with a font size of 30 and color green.
                                 """,
                                 startingCode: """
struct GreetingView: View {
    var body: some View {
        ...
    }
}
""",
                                 solutionCode: ["""
struct GreetingView: View {
    var body: some View {
        Text("Welcome to SwiftUI!")
            .font(.system(size: 30))
            .foregroundColor(.green)
    }
}
"""])

let module11Quiz2 = CodeExercise(id: 36,
                                 title: "Create a Simple VStack",
                                 description: """
                                 Create a `SimpleVStackView` struct in SwiftUI that displays a vertical stack of 3 text views, each showing the text "Item X" where X is the item number, with a spacing of 15 and center alignment.
                                 """,
                                 startingCode: """
struct SimpleVStackView: View {
    var body: some View {
        VStack {
            ...
        }
    }
}
""",
                                 solutionCode: ["""
struct SimpleVStackView: View {
    var body: some View {
        VStack(
            alignment: .center,
            spacing: 15
        ) {
            ForEach(1...3, id: \\.self) { item in
                Text("Item \\(item)")
            }
        }
    }
}
"""])

let module11Quiz3 = CodeExercise(id: 37,
                                 title: "Create a Complex HStack",
                                 description: """
                                 Create a `ComplexHStackView` struct in SwiftUI that displays a horizontal stack of 4 text views, each showing the text "Element X" where X is the element number, with a spacing of 20 and bottom alignment.
                                 """,
                                 startingCode: """
struct ComplexHStackView: View {
    var body: some View {
        HStack {
            ...
        }
    }
}
""",
                                 solutionCode: ["""
struct ComplexHStackView: View {
    var body: some View {
        HStack(
            alignment: .bottom,
            spacing: 20
        ) {
            ForEach(1...4, id: \\.self) { element in
                Text("Element \\(element)")
            }
        }
    }
}
"""])

let module11Quiz4 = CodeExercise(id: 38,
                                 title: "Overlay Views in ZStack",
                                 description: """
                                 Create a `OverlayZStackView` struct in SwiftUI that displays a green rectangle with a width and height of 200 points, and overlays a pink text "Center View" on top of it.
                                 """,
                                 startingCode: """
struct OverlayZStackView: View {
    var body: some View {
        ZStack {
            ...
        }
    }
}
""",
                                 solutionCode: ["""
struct OverlayZStackView: View {
    var body: some View {
        ZStack {
            Rectangle()
                .fill(Color.green)
                .frame(width: 200, height: 200)
            Text("Center View")
                .foregroundColor(.pink)
        }
    }
}
"""])

let module12Quiz1 = CodeExercise(id: 39,
                                 title: "Switch between On and Off",
                                 description: """
                                 Create a `ToggleSwitch` struct in SwiftUI that switches between "On" and "Off" when clicked, using a state variable.
                                 """,
                                 startingCode: """
struct ToggleSwitch: View {
    @State private var isOn: Bool = false

    var body: some View {
        ...
    }
}
""",
                                 solutionCode: ["""
struct ToggleSwitch: View {
    @State private var isOn: Bool = false

    var body: some View {
        Button(isOn ? "Off" : "On") {
            isOn.toggle()
        }
    }
}
"""])

let module12Quiz2 = CodeExercise(id: 40,
                                 title: "Bind a Toggle Button",
                                 description: """
                                 1) Create a `ToggleButton` struct in SwiftUI that toggles between "Start" and "Stop" using a binding variable.
                                 2) Then, create a `ControlView` struct that uses `ToggleButton` and binds its `isStarted` state.
                                 """,
                                 startingCode: """
struct ToggleButton: View {
    @Binding private var isStarted: Bool

    var body: some View {
        ...
    }
}

struct ControlView: View {
    @State private var isStarted: Bool = false

    var body: some View {
        ...
    }
}
""",
                                 solutionCode: ["""
struct ToggleButton: View {
    @Binding private var isStarted: Bool

    var body: some View {
        Button(isStarted ? "Stop" : "Start") {
            isStarted.toggle()
        }
    }
}

struct ControlView: View {
    @State private var isStarted: Bool = false

    var body: some View {
        VStack {
            ToggleButton(isStarted: $isStarted)
        }
    }
}
"""])

let module13Quiz1 = CodeExercise(id: 41,
                                 title: "Create a Submit Button",
                                 description: """
                                 1) Create a `SubmitButtonView` struct in SwiftUI that displays a button with the title "Submit".
                                 2) The button should call a function `submit` when tapped.
                                 """,
                                 startingCode: """
struct SubmitButtonView: View {
    var body: some View {
        ...
    }

    func submit() {
        // perform submit action
    }
}
""",
                                 solutionCode: ["""
struct SubmitButtonView: View {
    var body: some View {
        Button(action: submit) {
            Text("Submit")
        }
    }

    func submit() {
        // perform submit action
    }
}
"""])

let module13Quiz2 = CodeExercise(id: 42,
                                 title: "Create an Update Button",
                                 description: """
                                 1) Create a `UpdateButtonView` struct in SwiftUI that displays a button with the title "Update" and a prominent role.
                                 2) The button should call a function `update` when tapped.
                                 """,
                                 startingCode: """
struct UpdateButtonView: View {
    var body: some View {
        ...
    }

    func update() {
        // perform update action
    }
}
""",
                                 solutionCode: ["""
struct UpdateButtonView: View {
    var body: some View {
        Button("Update", role: .prominent, action: update)
    }

    func update() {
        // perform update action
    }
}
"""])

let module13Quiz3 = CodeExercise(id: 43,
                                 title: "Create an Email TextField",
                                 description: """
                                 1) Create a `EmailTextFieldView` struct in SwiftUI that displays a text field with the placeholder "Email address" for entering an email.
                                 2) The text field should have a border of a secondary color, disable autocorrection, and use no text input autocapitalization.
                                 3) Below the text field, display the entered email in red text.
                                 """,
                                 startingCode: """
struct EmailTextFieldView: View {
    @State private var email: String = ""

    var body: some View {
        VStack {
            ...
        }
    }
}
""",
                                 solutionCode: ["""
struct EmailTextFieldView: View {
    @State private var email: String = ""

    var body: some View {
        VStack {
            TextField("Email address", text: $email)
                .textInputAutocapitalization(.never)
                .disableAutocorrection(true)
                .border(.secondary)
            Text(email)
                .foregroundColor(.red)
        }
    }
}
"""])

let module13Quiz4 = CodeExercise(id: 44,
                                 title: "Create a Volume Slider",
                                 description: """
                                 1) Create a `VolumeSliderView` struct in SwiftUI that displays a slider for selecting a volume value between 0 and 100.
                                 2) Below the slider, display the selected volume value in green text while editing and gray text otherwise.
                                 """,
                                 startingCode: """
struct VolumeSliderView: View {
    @State private var volume = 50.0
    @State private var isEditing = false

    var body: some View {
        VStack {
            ...
        }
    }
}
""",
                                 solutionCode: ["""
struct VolumeSliderView: View {
    @State private var volume = 50.0
    @State private var isEditing = false

    var body: some View {
        VStack {
            Slider(
                value: $volume,
                in: 0...100,
                onEditingChanged: { editing in
                    isEditing = editing
                }
            )
            Text("\\(volume)")
                .foregroundColor(isEditing ? .green : .gray)
        }
    }
}
"""])

let module14Quiz1 = CodeExercise(id: 45,
                                 title: "Create a Food Navigation Stack",
                                 description: """
                                 1) Create a `FoodNavigationView` struct in SwiftUI that displays a list of food items using a `NavigationStack`.
                                 2) Each food item should be a navigation link that navigates to a new view displaying the selected food name.
                                 """,
                                 startingCode: """
struct FoodNavigationView: View {
    var foodItems: [String] = ["Apple", "Banana", "Carrot", "Date", "Eggplant"]

    var body: some View {
        NavigationStack {
            ...
        }
    }
}
""",
                                 solutionCode: ["""
struct FoodNavigationView: View {
    var foodItems: [String] = ["Apple", "Banana", "Carrot", "Date", "Eggplant"]

    var body: some View {
        NavigationStack {
           

 List(foodItems, id: \\.self) { food in
                NavigationLink(food, value: food)
            }
            .navigationDestination(for: String.self) { food in
                Text(food)
            }
        }
    }
}
"""])

let module14Quiz2 = CodeExercise(id: 46,
                                 title: "Create a Category Tab View",
                                 description: """
                                 1) Create a `CategoryTabView` struct in SwiftUI that displays a `TabView` with two tabs.
                                 2) The first tab should display "Fruits" with a badge of "5" and an icon of an apple. 
                                 3) The second tab should display "Vegetables" with a badge of "3" and an icon of a carrot.
                                 """,
                                 startingCode: """
struct CategoryTabView: View {
    var body: some View {
        TabView {
            ...
        }
    }
}
""",
                                 solutionCode: ["""
struct CategoryTabView: View {
    var body: some View {
        TabView {
            Text("Fruits")
                .badge("5")
                .tabItem {
                    Image(systemName: "applelogo")
                    Text("Fruits")
                }
            Text("Vegetables")
                .badge("3")
                .tabItem {
                    Image(systemName: "leaf")
                    Text("Vegetables")
                }
        }
    }
}
"""])

let module15Quiz1 = CodeExercise(id: 47,
                                 title: "Create a Rotating Arrow",
                                 description: """
                                 Create a `RotatingArrowView` struct in SwiftUI that displays an arrow image which rotates 180 degrees when tapped, with an ease-out animation of 2 seconds.
                                 """,
                                 startingCode: """
struct RotatingArrowView: View {
    @State private var isRotated = false

    var body: some View {
        ...
    }
}
""",
                                 solutionCode: ["""
struct RotatingArrowView: View {
    @State private var isRotated = false

    var body: some View {
        Image(systemName: "arrow.right.circle.fill")
            .rotationEffect(.degrees(isRotated ? 180 : 0))
            .animation(.easeOut(duration: 2), value: isRotated)
            .onTapGesture {
                isRotated.toggle()
            }
    }
}
"""])

let module15Quiz2 = CodeExercise(id: 48,
                                 title: "Create a Pulsing Heart",
                                 description: """
                                 Create a `PulsingHeartView` struct in SwiftUI that displays a heart image which scales up by 0.2 when a button is tapped, with an ease-in animation of 0.5 seconds.
                                 """,
                                 startingCode: """
struct PulsingHeartView: View {
    @State private var scale: CGFloat = 1.0

    var body: some View {
        VStack {
            ...
        }
    }
}
""",
                                 solutionCode: ["""
struct PulsingHeartView: View {
    @State private var scale: CGFloat = 1.0

    var body: some View {
        VStack {
            Image(systemName: "heart.fill")
                .scaleEffect(scale)
                .animation(.easeIn(duration: 0.5), value: scale)
            Button("Pulse") {
                scale += 0.2
            }
        }
    }
}
"""])

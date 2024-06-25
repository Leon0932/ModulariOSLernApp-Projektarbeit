//
//  LearningModuleTestData.swift
//  ModulariOSLernApp-Projektarbeit
//
//  Created by Leon Chamoun on 20.04.24.
//

import Foundation

let subsectionsModule1: [Subsection] = [
    Subsection(
        id: 1,
        title: "Syntax",
        contentDescription: """
A variable can be created using the keyword `var`. Constants can be created using `let`. To print the value out, use the function `print()`.

Unlike other languages like C or C++, you don't need to specify the data type. The compiler recognizes the data types automatically. In the next module, you will learn about different data types.
""",
        contentCode: """
var variable1 = 0
let constant = 1

print(variable1)
print(constant)

variable1 = 5
print(variable1)

// Compiler-Error
// constant = 10
""",
        linkDocumentation: "https://docs.swift.org/swift-book/LanguageGuide/TheBasics.html",
        codeExercise: module1Quiz1),
    
    Subsection(
        id: 2,
        title: "Comments in Swift",
        contentDescription: """
Use comments to include nonexecutable text in your code, as a note or reminder to yourself.
Comments are ignored by the Swift compiler when your code is compiled.

Comments in Swift are very similar to comments in C. Single-line comments begin with two forward-slashes (//).

Multiline comments start with a forward-slash followed by an asterisk (/*) and end with an asterisk followed by a forward-slash (*/):
""",
        contentCode: """
// This is a comment

/* This is also a comment
but is written over multiple lines. */
""",
        linkDocumentation: "https://docs.swift.org/swift-book/LanguageGuide/TheBasics.html#ID315",
        codeExercise: module1Quiz2
    )
]

/**
 Module 2: Subsections
 */

let subsectionsModule2Introduction: [Subsection] = [
    Subsection(
        id: 3,
        title: "Introduction",
        contentDescription: """
        Constants and variables must be declared before they’re used.
        You declare constants with the `let` keyword and variables with the `var` keyword.
        
        Here’s an example of how constants and variables can be used to track the number of login attempts a user has made. The result will get with `print` printed out. Use String Interpolation ( `\\()` ) to print out the variable in a `String`
        """,
        contentCode: """
let maximumNumberOfLoginAttempts = 10
var currentLoginAttempt = 0

print("The maximum number of login attempts is \\(maximumNumberOfLoginAttempts)")
print("The current number of login attempts is \\(currentLoginAttempt)")
""",
        linkDocumentation: "https://docs.swift.org/swift-book/documentation/the-swift-programming-language/thebasics#Declaring-Constants-and-Variables"),
    
    Subsection(
        id: 4,
        title: "Type Annotations",
        contentDescription: """
You can provide a `type annotation` when you declare a constant or variable, to be clear about the kind of values the constant or variable can store.
Write a type annotation by placing a colon after the constant or variable name, followed by a space, followed by the name of the type to use.

This example provides a type annotation for a variable called `welcomeMessage`, to indicate that the variable can store String values:
""",
        contentCode: """
var welcomeMessage: String

// The welcomeMessage variable can now be set to any string value without error:
welcomeMessage = "Hello"
print(welcomeMessage)
""",
        linkDocumentation: "https://docs.swift.org/swift-book/documentation/the-swift-programming-language/thebasics/#Type-Annotations",
        codeExercise: module2Quiz1
    )
]

let subsectionsModule2DataTypes = [
    
    
    Subsection(
        id: 5,
        title: "Integers and Floating-Points",
        contentDescription: """
    *Integers* are whole numbers with no fractional component, such as 42 and -23. Integers are either signed (positive, zero, or negative) or unsigned (positive or zero).
    
    *Floating-point* numbers are numbers with a fractional component, such as 3.14159, 0.1, and -273.15. Floating-point types can represent a much wider range of values than integer types, and can store numbers that are much larger or smaller than can be stored in an Int. Swift provides two signed floating-point number types:
    
    • Double represents a 64-bit floating-point number.
    • Float represents a 32-bit floating-point number.
    
    Double has a precision of at least 15 decimal digits, whereas the precision of `Float` can be as little as 6 decimal digits. The appropriate
    floating-point type to use depends on the nature and range of values you need to work with in your code.
    
    In situations where either type would be appropriate, `Double` is preferred.
    """,
        contentCode: """
    let age = 12 // int
    let note = 1.7 // double
    print(age)
    print(note)
    """,
        linkDocumentation: "https://docs.swift.org/swift-book/documentation/the-swift-programming-language/thebasics#Int"),
    
    Subsection(
        id: 6,
        title: "Strings and Characters",
        
        contentDescription: """
    A *string* is a series of characters, such as "hello, world" or "albatross". Swift strings are represented by the `String` type. The contents of a `String` can be accessed in various ways, including as a collection of `Character` values.
    
    You can include predefined `String` values within your code as string literals. A string literal is a sequence of characters surrounded by double quotation marks ("").
    
    Use a string literal as an initial value for a constant or variable:
    """,
        contentCode: """
    let someString = "Some string literal value"
    print(someString)
    """,
        linkDocumentation: "https://docs.swift.org/swift-book/documentation/the-swift-programming-language/stringsandcharacters#String-Literals"),
    
    Subsection(
        id: 7,
        
        title: "Booleans",
        
        contentDescription: """
    Swift has a basic Boolean type, called `Bool`. Boolean values are referred to as logical, because they can only ever be `true` or `false`.
    """,
        contentCode: """
    let orangesAreOrange = true
    let turnipsAreDelicious = false
    print(orangesAreOrange)
    print(turnipsAreDelicious)
    """,
        linkDocumentation: "https://docs.swift.org/swift-book/documentation/the-swift-programming-language/thebasics#Booleans")
    
]

let subsectionsModule2Operators: [Subsection] = [
    Subsection(
        id: 8,
        title: "Basics",
        contentDescription: """
Operators are unary, binary, or ternary:

• Unary operators operate on a single target (such as `-a`). Unary prefix operators appear immediately before their target (such as `!b`), and unary postfix operators appear immediately after their target (such as `c!`).

• Binary operators operate on two targets (such as `2 + 3`) and are infix because they appear in between their two targets.

• Ternary operators operate on three targets. Like C, Swift has only one ternary operator, the ternary conditional operator (`a ? b : c`).

The values that operators affect are operands. In the expression `1 + 2`, the + symbol is an infix operator and its two operands are the values 1 and 2.
""",
        contentCode: """
// Unary Operators: -a
// Binary Operators: 2 + 3
// Ternary Operators: a ? b : c
""", linkDocumentation: "https://docs.swift.org/swift-book/documentation/the-swift-programming-language/basicoperators#Terminology"),
    
    Subsection(
        id: 9,
        title: "Assignment",
        contentDescription: """
The assignment operator (`a = b`) initializes or updates the value of a with the value of b:
""",
        contentCode: """
let b = 10
var a = 5
a = b
print(a)
""", linkDocumentation: "https://docs.swift.org/swift-book/documentation/the-swift-programming-language/basicoperators#Assignment-Operator"),
    
    Subsection(
        id: 10,
        title: "Arithmetic",
        contentDescription: """
Swift supports the four standard arithmetic operators for all number types:

• Addition (`+`) (also supported for `String` concatenation)
• Subtraction (`-`)
• Multiplication (`*`)
• Division (`/`)
""",
        contentCode: """
let a = 1 + 2
print(a)

let b = 5 - 3
print(b)

let c = 2 * 3
print(c)

let d = 10.0 / 2.5
print(d)

let e = "hello"
let f = "world"
print(e + f)
""", linkDocumentation: "https://docs.swift.org/swift-book/documentation/the-swift-programming-language/basicoperators#Arithmetic-Operators"),
    
    
    Subsection(
        id: 11,
        title: "Remainder",
        contentDescription: """
The remainder operator (`a % b`) works out how many multiples of `b` will fit inside a and returns the value that’s left over (known as the remainder).

The remainder operator (`%`) is also known as a modulo operator in other languages. However, its behavior in Swift for negative numbers means that, strictly speaking, it’s a remainder rather than a modulo operation.
""",
        contentCode: """
let a = 9 % 4
print(a)

let b = -9 % 4
print(b)
""", linkDocumentation: "https://docs.swift.org/swift-book/documentation/the-swift-programming-language/basicoperators#Remainder-Operator", codeExercise: module2Quiz2),
    
    
    Subsection(
        id: 12,
        title: "Unary Minus / Plus",
        contentDescription: """
The sign of a numeric value can be toggled using a prefixed `-`, known as the unary minus operator.

• The unary minus operator (`-`) is prepended directly before the value it operates on, without any white space.
• The unary plus operator (`+`) simply returns the value it operates on, without any change:
""",
        contentCode: """
let three = 3
let minusThree = -three
print(minusThree)

let plusThree = -minusThree
print(plusThree)

let minusSix = -6
let alsoMinusSix = +minusSix
print(alsoMinusSix)
""", linkDocumentation: "https://docs.swift.org/swift-book/documentation/the-swift-programming-language/basicoperators#Unary-Minus-Operator"),
    
    
    Subsection(
        id: 13,
        title: "Comparison",
        contentDescription: """
Swift supports the following comparison operators:

• Equal to (`a == b`)
• Not equal to (`a != b`)
• Greater than (`a > b`)
• Less than (`a < b`)
• Greater than or equal to (`a >= b`)
• Less than or equal to (`a <= b`)
""",
        contentCode: """
print(1 == 1)
print(2 != 1)
print(2 > 1)
print(1 < 2)
print(1 >= 1)
print(2 <= 1)

""", linkDocumentation: "https://docs.swift.org/swift-book/documentation/the-swift-programming-language/basicoperators#Comparison-Operators"),
    
    
    Subsection(
        id: 14,
        title: "Ternary Conditionals",
        contentDescription: """
The ternary conditional operator is a special operator with three parts, which takes the form `question ? answer1 : answer2`.

It’s a shortcut for evaluating one of two expressions based on whether `question` is `true` or `false`. If `question` is `true`, it evaluates `answer1` and returns its value; otherwise, it evaluates `answer2` and returns its value.

The ternary conditional operator is shorthand for the code below:
""",
        contentCode: """
let question = true
var answer1: String = "Question is true"
var answer2: String = "Question is false"

if question {
    print(answer1)
} else {
    print(answer2)
}

// is equal to:
print(question ? answer1 : answer2)
""", linkDocumentation: "https://docs.swift.org/swift-book/documentation/the-swift-programming-language/basicoperators#Ternary-Conditional-Operator")
    
]

let subsectionsModule2Enums: [Subsection] = [
    Subsection(id: 15,
               title: "Introduction",
               contentDescription: "*Enumerations* (or `enums`) in Swift are a powerful feature that allows you to define a common type for a group of related values and work with those values in a type-safe way. Swift enumerations are more flexible than their counterparts in many other languages. They can have associated values and methods",
               contentCode: "",
               linkDocumentation: "https://docs.swift.org/swift-book/documentation/the-swift-programming-language/enumerations"),
    
    Subsection(id: 16,
               title: "Syntax",
               contentDescription: """
               You introduce enumerations with the `enum` keyword and place their entire definition within a pair of braces:
               
               Here’s an example for the four main points of a compass:
               """,
               contentCode: """
enum CompassPoint {
    case north
    case south
    case east
    case west
}

// or
enum CompassPointVariant2 {
    case north, south, east, west
}
""", linkDocumentation: "https://docs.swift.org/swift-book/documentation/the-swift-programming-language/enumerations#Enumeration-Syntax"),
    
    
    Subsection(id: 17,
               title: "Using Enumeration Cases",
               contentDescription: """
               Each enumeration definition defines a new type. Like other types in Swift, their names (such as `CompassPoint`) start with a capital letter. Give enumeration types singular rather than plural names, so that they read as self-evident:
               
               Here’s an example:
               """,
               contentCode: """
enum CompassPoint {
    case north, south, east, west
}

var directionToHead = CompassPoint.west
// Use shorter dot syntax after it's initialized
directionToHead = .east
print(directionToHead)
""",
               linkDocumentation: "https://docs.swift.org/swift-book/documentation/the-swift-programming-language/enumerations#Enumeration-Syntax")
    
]

let subsectionsModule2If: [Subsection] = [
    Subsection(
        id: 18,
        title: "Introduction",
        contentDescription: """
It’s often useful to execute different pieces of code based on certain conditions. You might want to run an extra piece of code when an error occurs, or to display a message when a value becomes too high or too low. To do this, you make parts of your code conditional.

Swift provides two ways to add conditional branches to your code: the `if` statement and the `switch` statement. Typically, you use the if statement to evaluate simple conditions with only a few possible outcomes. The switch statement is better suited to more complex conditions with multiple possible permutations and is useful in situations where pattern matching can help select an appropriate code branch to execute.
""",
        contentCode: """
if <statement> {
    // do something
}

switch <some value> {
    case <Nr. 1>:
        // do something
    case <Nr. 2>:
        // do something
    default:
        // do something
""",
        linkDocumentation: "https://docs.swift.org/swift-book/documentation/the-swift-programming-language/controlflow"),
    
    Subsection(
        id: 19,
        title: "If-Else",
        contentDescription: """
In Swift, you can control the execution of code based on specific conditions using `if` and `else` statements. These statements allow you to specify a condition for Swift to evaluate and a block of code to execute if the condition is true.

Additionally, you can include an else clause to provide an alternative block of code that runs if the condition is false. For more complex scenarios, you can use else if to add more conditions to be checked. A "block" of code in Swift is simply a section of code enclosed by curly braces – { } – to define its start and end.

You can also use `else if` to provide a more detailed statement.
""",
        contentCode: """
let temperatureInFahrenheit = 90

if temperatureInFahrenheit <= 32 {
    print("It's very cold. Consider wearing a scarf.")
} else if temperatureInFahrenheit >= 86 {
    print("It's really warm. Don't forget to wear sunscreen.")
} else {
    print("It's not that cold. Wear a T-shirt.")
}
""",
        linkDocumentation: "https://docs.swift.org/swift-book/documentation/the-swift-programming-language/controlflow#If",
        codeExercise: module3Quiz1),
    
    Subsection(
        id: 20,
        title: "Switch",
        contentDescription: """
A `switch` statement considers a value and compares it against several possible matching patterns. It then executes an appropriate block of code, based on the first pattern that matches successfully.

A `switch` statement provides an alternative to the `if` statement for responding to multiple potential states.

In its simplest form, a `switch` statement compares a value against one or more values of the same type.
""",
        contentCode: """
let someCharacter: Character = "z"
switch someCharacter {
case "a":
    print("The first letter of the Latin alphabet")
case "z":
    print("The last letter of the Latin alphabet")
default:
    print("Some other character")
}
""",
        linkDocumentation: "https://docs.swift.org/swift-book/documentation/the-swift-programming-language/controlflow#Switch",
        codeExercise: module3Quiz2)
    
    
]

let subsectionsModule2Loops: [Subsection] = [
    Subsection(
        id: 21,
        title: "For-in",
        contentDescription: """
You use the `for-in` loop to iterate over a sequence, such as items in an array, ranges of numbers, or characters in a string.

Here are some examples:
""",
        contentCode: """
// Iterate over the items in an array
let names = ["Anna", "Alex", "Brian", "Jack"]
for name in names {
    print(\"Hello, \\(name)!\")
}

// Iterate over a range of numbers from 1 to 5
for index in 1...5 {
    print("\\(index)! times 5 is \\(index * 5)!\")
}

// the half-open range operator (..<) includes the
// lower bound but not the upper bound.
// 1..<6 is equal to 1...5


// If you don’t need each value from a sequence,
// you can ignore the values by using an underscore
// in place of a variable name.
for _ in 1...5 {
    print("Loops are cool")
}

""",
        linkDocumentation: "https://docs.swift.org/swift-book/documentation/the-swift-programming-language/controlflow#For-In-Loops",
        codeExercise: module3Quiz3),
    
    Subsection(
        id: 22,
        title: "While",
        contentDescription: """
A `while` loop starts by evaluating a single condition. If the condition is `true`, a set of statements is repeated until the condition becomes `false`.

In this example, the `while` loop runs as long as `count` is greater than 0. During each iteration, the value of `count` is decreased by 1 and printed. When count reaches 0, the loop stops, and "Start!" is printed:
""",
        contentCode: """
var count = 5

while count > 0 {
    print("Countdown: \\(count)!\")
    count -= 1
}

print("Start!")
""",
        linkDocumentation: "https://docs.swift.org/swift-book/documentation/the-swift-programming-language/controlflow#While",
        codeExercise: module3Quiz4),
    
    
    Subsection(
        id: 23,
        title: "Repeat-While",
        contentDescription: """
The other variation of the `while` loop, known as the `repeat-while` loop, performs a single pass through the loop block first, before considering the loop’s condition. It then continues to repeat the loop until the condition is `false`.

In this example, the `repeat-while` loop is executed at least once. During each iteration, the value of `count` is decreased by 1 and printed. The loop repeats as long as `count` is greater than 0:
""",
        contentCode: """
var count = 3

repeat {
    print("Repeating: \\(count)!\")
    count -= 1
} while count > 0

print("Done!")
""",
        linkDocumentation: "https://docs.swift.org/swift-book/documentation/the-swift-programming-language/controlflow#Repeat-While",
        codeExercise: module3Quiz5)
    
]

let subsectionsModule2ControlTransfer: [Subsection] = [
    Subsection(
        id: 24,
        title: "Introduction",
        contentDescription: """
*Control transfer statements* change the order in which your code is executed, by transferring control from one piece of code to another. Swift has five control transfer statements:

• `continue`
• `break`
• `fallthrough`
• `return`
• `throw`

The `continue`, `break`, and `fallthrough` statements are described below. The `return` statement is described in **Module: Functions**, and the `throw` statement is described in **Module:  Error Handling**.

""",
        contentCode: "",
        linkDocumentation: "https://docs.swift.org/swift-book/documentation/the-swift-programming-language/controlflow#Control-Transfer-Statements"),
    
    Subsection(
        id: 25,
        title: "Continue",
        contentDescription: """
The `continue` statement tells a loop to stop what it’s doing and start again at the beginning of the next iteration through the loop. It says “I am done with the current loop iteration” without leaving the loop altogether.

In this example:
• The loop iterates through numbers from `1 to 10`.
• If `number is even` (i.e., `number % 2 == 0`), the `continue` statement is executed, causing the rest of the current iteration to be skipped.
• As a result, only odd numbers are printed: 1, 3, 5, 7, 9.
""",
        contentCode: """
for number in 1...10 {
    if number % 2 == 0 {
        continue
    }
    print(number)
}
""",
        linkDocumentation: "https://docs.swift.org/swift-book/documentation/the-swift-programming-language/controlflow#Continue",
        codeExercise: module3Quiz6),
    
    
    Subsection(
        id: 26,
        title: "Break",
        contentDescription: """
The `break` statement ends execution of an entire control flow statement immediately. The break statement can be used inside a `switch` or `loop` statement when you want to terminate the execution of the `switch` or loop statement earlier than would otherwise be the case.


In this example:
• The loop iterates through numbers from 1 to 10.
• When `number` equals 5, the `break` statement is executed, which immediately exits the loop.
• As a result, the loop stops, and only the numbers 1, 2, 3, and 4 are printed.
""",
        contentCode: """
for number in 1...10 {
    if number == 5 {
        break
    }
    print(number)
}
""",
        linkDocumentation: "https://docs.swift.org/swift-book/documentation/the-swift-programming-language/controlflow#Break",
        codeExercise: module3Quiz7),
    
    
    Subsection(
        id: 27,
        title: "Fallthrough",
        contentDescription: """
In Swift, `switch` statements don’t fall through the bottom of each case and into the next one. That is, the entire `switch` statement completes its execution as soon as the first matching case is completed. By contrast, C requires you to insert an explicit `break` statement at the end of every `switch` case to prevent fallthrough. Avoiding default fallthrough means that Swift `switch` statements are much more concise and predictable than their counterparts in C, and thus they avoid executing multiple `switch` cases by mistake.

In this example:
• The `number` variable is set to 3.
• The `switch` statement evaluates the value of `number`.
• When the case `3` is matched, "The number is 3" is printed.
• The `fallthrough` statement is used, so the execution continues to the next case (`4`), even though number is not 4.
• "The number is 4" is printed, and another `fallthrough` statement causes execution to continue to the next case (`5`).
• "The number is 5" is printed, but this time there is no `fallthrough`, so the `switch` statement terminates.
""",
        contentCode: """
let number = 3

switch number {
case 1:
    print("The number is 1")
case 2:
    print("The number is 2")
case 3:
    print("The number is 3")
    fallthrough // Continue to the next case
case 4:
    print("The number is 4")
    fallthrough // Continue to the next case
case 5:
    print("The number is 5")
default:
    print("The number is something else")
}
""",
        linkDocumentation: "https://docs.swift.org/swift-book/documentation/the-swift-programming-language/controlflow#Fallthrough",
        codeExercise: module3Quiz8),
    
]

let subsectionsModule3Intro: [Subsection] = [
    Subsection(id: 28,
               title: "Defining and Calling",
               contentDescription: """
When defining a *function*, you can optionally define named, typed input values called `parameters`, and a type for the output value, known as the `return` type. Every function has a name describing its task. To use a function, you "call" it with its name and provide input values, or arguments, matching the function’s parameters in the specified order.


To demonstrate this, there are two functions:

• The function `greet(person:)`, takes a person’s name as input and returns a greeting. It defines one input parameter—a String called person—and a return type of String for the greeting.
• The function `helloWorld()` takes no parameters and returns nothing; it only prints "Hello World".
""",
               contentCode: """
func greet(person: String) -> String {
    let greeting = "Hello, " + person + "!"
    return greeting
}

func helloWorld() {
    print("Hello World")
}

print(greet(person: "Anna"))
print(greet(person: "Brian"))

helloWorld()
""",
               linkDocumentation: "https://docs.swift.org/swift-book/documentation/the-swift-programming-language/functions#Defining-and-Calling-Functions",
               codeExercise: module4Quiz1)
    
]

let subsectionsModule3ParAnd: [Subsection] = [
    Subsection(id: 29,
               title: "Specifying Argument Labels",
               contentDescription: """
Each function parameter has both an *argument label* and a *parameter name*. The argument label is used when calling the function; each argument is written in the function call with its argument label before it. The parameter name is used in the implementation of the function. By default, parameters use their parameter name as their argument label.

You can specify an argument label before the parameter name, separated by a space.
Here’s a variation of the `greet(person:)` function that takes a person’s name and hometown and returns a greeting:
""",
               contentCode: """
func greet(person: String, from hometown: String) -> String {
    return "Hello \\(person)!  Glad you could visit from \\(hometown)."
}

print(greet(person: "Bill", from: "Cupertino"))
""",
               linkDocumentation: "https://docs.swift.org/swift-book/documentation/the-swift-programming-language/functions#Function-Argument-Labels-and-Parameter-Names",
               codeExercise: module4Quiz2),
    
    
    Subsection(id: 30,
               title: "Omitting Argument Labels",
               contentDescription: """
If you don’t want an argument label for a parameter, write an underscore (_) instead of an explicit argument label for that parameter.
""",
               contentCode: """
func greet(_ person: String, from hometown: String) -> String {
    return "Hello \\(person)!  Glad you could visit from \\(hometown)."
}
print(greet("Bill", from: "Cupertino"))
""",
               linkDocumentation: "https://docs.swift.org/swift-book/documentation/the-swift-programming-language/functions#Omitting-Argument-Labels",
               codeExercise: module4Quiz3),
    
    Subsection(id: 31,
               title: "Default Parameter Values",
               contentDescription: """
You can define a *default value* for any parameter in a function by assigning a value to the parameter after that parameter’s type. If a default value is defined, you can omit that parameter when calling the function.
""",
               contentCode: """
func greet(_ person: String, from hometown: String = "Cupertino") -> String {
    return "Hello \\(person)!  Glad you could visit from \\(hometown)."
}
print(greet("Bill"))
""",
               linkDocumentation: "https://docs.swift.org/swift-book/documentation/the-swift-programming-language/functions#Default-Parameter-Values",
               codeExercise: module4Quiz4),
    
    Subsection(id: 32,
               title: "Variadic Parameters",
               contentDescription: """
A *variadic parameter* accepts zero or more values of a specified type. You use a variadic parameter to specify that the parameter can be passed a varying number of input values when the function is called. Write variadic parameters by inserting three period characters (...) after the parameter’s type name.

The values passed to a variadic parameter are made available within the function’s body as an array of the appropriate type. For example, a variadic parameter with a name of numbers and a type of `Double...` is made available within the function’s body as a constant array called numbers of type `[Double]`.

The example below calculates the arithmetic mean (also known as the average) for a list of numbers of any length:
""",
               contentCode: """
func arithmeticMean(_ numbers: Double...) -> Double {
    var total: Double = 0
    for number in numbers {
        total += number
    }
    return total / Double(numbers.count)
}

print(arithmeticMean(1, 2, 3, 4, 5))
""",
               linkDocumentation: "https://docs.swift.org/swift-book/documentation/the-swift-programming-language/functions#Variadic-Parameters",
               codeExercise: module4Quiz5),
    
    Subsection(id: 33,
               title: "In-Out Parameters",
               contentDescription: """
Function parameters are constants by default. Trying to change a function parameter's value within the function body results in a compile-time error, preventing accidental changes. If you want a function to modify a parameter's value and have those changes persist after the function call, define that parameter as an in-out parameter instead.

You write an in-out parameter by placing the `inout` keyword before a parameter’s type. An in-out parameter's value is passed into the function, modified by the function, and passed back out to replace the original value. For more on in-out parameters and compiler optimizations, see In-Out Parameters.

You can only pass a variable as the argument for an in-out parameter, not a constant or literal value, as they can’t be modified. Place an ampersand (`&`) before a variable’s name when passing it as an argument to indicate it can be modified by the function.

Note: In-out parameters can’t have default values, and variadic parameters can’t be marked as `inout`.

Here’s an example of a function called `swapTwoInts(_:_:)`, which has two in-out integer parameters called `a` and `b`:
""",
               contentCode: """
func swapTwoInts(_ a: inout Int, _ b: inout Int) {
    let temporaryA = a
    a = b
    b = temporaryA
}

var someInt = 3
var anotherInt = 107
swapTwoInts(&someInt, &anotherInt)
print("someInt is now \\(someInt), and anotherInt is now \\(anotherInt)")
""",
               linkDocumentation: "https://docs.swift.org/swift-book/documentation/the-swift-programming-language/functions#In-Out-Parameters",
               codeExercise: module4Quiz6)
]

let subsectionsModule3Func: [Subsection] = [
    Subsection(id: 34,
               title: "Introduction",
               contentDescription: """
Every function has a specific *function type*, made up of the parameter types and the return type of the function.


For example:
`func addTwoInts(_ a: Int,
                 _ b: Int) -> Int
{ return a + b }`

`func multiplyTwoInts(_ a: Int,
                      _ b: Int) -> Int
{ return a * b }`

This example defines two simple mathematical functions called `addTwoInts` and `multiplyTwoInts`. These functions each take two `Int` values, and return an `Int` value, which is the result of performing an appropriate mathematical operation.

The type of both of these functions is:
`(Int, Int) -> Int`.

This can be read as:
“A function that has two parameters, both of type Int, and that returns a value of type Int.”

Here’s another example, for a function with no parameters or return value:

`func printHelloWorld() { print("hello, world") }`

The type of this function is `() -> Void`,
or “a function that has no parameters, and returns Void.”
""",
               contentCode: "",
               linkDocumentation: "https://docs.swift.org/swift-book/documentation/the-swift-programming-language/functions#Function-Types"),
    
    
    Subsection(id: 35,
               title: "Using Function Types",
               contentDescription: """
You use function types just like any other types in Swift. For example, you can define a constant or variable to be of a function type and assign an appropriate function to that variable.

This example below, can be read as:
“Define a variable called mathFunction, which has a type of ‘a function that takes two `Int` values, and returns an `Int` value. Set this new variable to refer to the function called `addTwoInts`.”

The `addTwoInts(_:_:)` function has the same type as the mathFunction variable, and so this assignment is allowed by Swift’s type-checker.

You can now call the assigned function with the name `mathFunction`:
""",
               contentCode: """
func addTwoInts(_ a: Int, _ b: Int) -> Int {
    return a + b
}

var mathFunction: (Int, Int) -> Int = addTwoInts

print("Result: \\(mathFunction(2, 3))")
""",
               linkDocumentation: "https://docs.swift.org/swift-book/documentation/the-swift-programming-language/functions#Using-Function-Types"),
    
    
    Subsection(id: 36,
               title: "Parameter Types",
               contentDescription: """
You can use a function type such as `(Int, Int) -> Int`
as a parameter type for another function. This enables you to leave some aspects of a function’s implementation for the function’s caller to provide when the function is called.

Here’s an example to print the results of the math functions from the previous section:
""",
               contentCode: """
func addTwoInts(_ a: Int, _ b: Int) -> Int {
    return a + b
}

func printMathResult(_ mathFunction: (Int, Int) -> Int,
                     _ a: Int,
                     _ b: Int) {
    print("Result: \\(mathFunction(a, b))")
}

printMathResult(addTwoInts, 3, 5)
""",
               linkDocumentation: "https://docs.swift.org/swift-book/documentation/the-swift-programming-language/functions#Function-Types-as-Parameter-Types"),
    
    
    Subsection(id: 37,
               title: "Return Types",
               contentDescription: """
You can use a function type as the return type of another function. You do this by writing a complete function type immediately after the return arrow (`->`) of the returning function.

The next example defines two simple functions called `stepForward(_:)` and `stepBackward(_:)`. The `stepForward(_:)` function returns a value one more than its input value, and the `stepBackward(_:)` function returns a value one less than its input value. Both functions have a type of `(Int) -> Int`.

The `chooseStepFunction(backward:)` function returns the `stepForward(_:)` function or the `stepBackward(_:)` function based on a Boolean parameter called `backward`:
""",
               contentCode: """
func stepForward(_ input: Int) -> Int {
    return input + 1
}

func stepBackward(_ input: Int) -> Int {
    return input - 1
}

func chooseStepFunction(backward: Bool) -> (Int) -> Int {
    return backward ? stepBackward : stepForward
}

var currentValue = 3

// moveNearerToZero returns a Function
let moveNearerToZero = chooseStepFunction(backward: currentValue > 0)


currentValue = moveNearerToZero(currentValue)
print(currentValue)
""",
               linkDocumentation: "https://docs.swift.org/swift-book/documentation/the-swift-programming-language/functions#Function-Types-as-Return-Types"),
    
    Subsection(id: 38,
               title: "Nested Functions",
               contentDescription: """
               All of the functions you have encountered so far in this chapter have been examples of *global functions*, which are defined at a global scope. You can also define functions inside the bodies of other functions, known as *nested functions*.
               
               Nested functions are hidden from the outside world by default, but can still be called and used by their enclosing function. An enclosing function can also return one of its nested functions to allow the nested function to be used in another scope.
               
               You can rewrite the `chooseStepFunction(backward:)` example above to use and return nested functions:
               """,
               contentCode: """
func chooseStepFunction(backward: Bool) -> (Int) -> Int {
    func stepForward(input: Int) -> Int { return input + 1 }
    func stepBackward(input: Int) -> Int { return input - 1 }
    return backward ? stepBackward : stepForward
}

var currentValue = -4
let moveNearerToZero = chooseStepFunction(backward: currentValue > 0)

// moveNearerToZero now refers to the nested stepForward() function
while currentValue != 0 {
    print("\\(currentValue)... ")
    currentValue = moveNearerToZero(currentValue)
}
print("zero!")
""",
               linkDocumentation: "https://docs.swift.org/swift-book/documentation/the-swift-programming-language/functions#Nested-Functions")
    
]

let subsectionsModule5Op: [Subsection] = [
    Subsection(id: 39,
               title: "Introduction",
               contentDescription: """
Optionals are a fundamental feature in Swift. They allow you to declare variables or constants that can either hold a value or be `nil` (no value).

Swift’s type system usually shows the wrapped type’s name with a trailing question mark (?) instead of showing the full type name. For example, if a variable has the type `Int?`, that’s just another way of writing `Optional<Int>`.

""",
               contentCode: """
var ageShort: Int?
var ageLong: Optional<Int>
""",
               linkDocumentation: "https://developer.apple.com/documentation/swift/optional#overview"),
    
    
    Subsection(id: 40,
               title: "Binding",
               contentDescription: """
To conditionally bind the wrapped value of an Optional instance to a new variable, use one of the optional binding control structures, including `if let`, `guard let`, and `switch`.

Here are some examples:
""", contentCode: """
var age: Int? = nil
var name: String? = "Max"
    
func unwrappVariables() {
        
    if let unwrappedAge = age {
        print(unwrappedAge)
    } else {
        print("Age is nil")
    }
        
    guard let unwrappedName = name else {
        print("Name is nil")
        return
    }
        
    print(unwrappedName)
        
}
    
unwrappVariables()
""",
               linkDocumentation: "https://developer.apple.com/documentation/swift/optional#Optional-Binding", codeExercise: module5Quiz1),
    
    
    Subsection(id: 41,
               title: "Chaining",
               contentDescription: """
To safely access the properties and methods of a wrapped instance, use the postfix optional chaining operator (postfix `?`).

Here is an example
(You will learn classes in the **Module 7: Object Oriented Programming**):
""", contentCode: """
class Person {
    var residence: Residence?
}


class Residence {
    var numberOfRooms = 1
}

let john = Person()
if let roomCount = john.residence?.numberOfRooms {
    print("John's residence has \\(roomCount) room(s).")
} else {
    print("Unable to retrieve the number of rooms.")
}

""", linkDocumentation: "https://developer.apple.com/documentation/swift/optional#Optional-Chaining",
               codeExercise: module5Quiz2),
    
    
    Subsection(id: 42,
               title: "Nil-Coalescing Operator",
               contentDescription: """
Use the nil-coalescing operator (??) to supply a default value in case the `Optional` instance is `nil`.

Here is a simple example:

""", contentCode: """
var optionalCar: String? = "BMW"
print(optionalCar ?? "There is no car")

""", linkDocumentation: "https://developer.apple.com/documentation/swift/optional#Using-the-Nil-Coalescing-Operator", codeExercise: module5Quiz3),
    
    
    Subsection(id: 43,
               title: "Unconditional Unwrapping",
               contentDescription: """
When you’re certain that an instance of Optional contains a value, you can unconditionally unwrap the value by using the forced unwrap operator (postfix !).
Note: Unconditionally unwrapping a nil instance with `!` triggers a runtime error.

Here is a simple example:
""", contentCode: """
var optionalCar: String? = "BMW"
print(optionalCar!)

// This code will
// crash the App
// var crashVariable: String? = nil
// print(crashVariable!)

""", linkDocumentation: "https://developer.apple.com/documentation/swift/optional#Unconditional-Unwrapping", codeExercise: module5Quiz4),
]

let subsectionsModule6Start: [Subsection] = [
    Subsection(id: 44,
               title: "Introduction",
               contentDescription: """
Swift provides three primary *collection types*, known as arrays, sets, and dictionaries, for storing collections of values.
Arrays are ordered collections of values. Sets are unordered collections of unique values. Dictionaries are unordered collections of key-value associations.

Arrays, sets, and dictionaries in Swift are always clear about the types of values and keys that they can store. This means that you can’t insert a value of the wrong type into a collection by mistake. It also means you can be confident about the type of values you will retrieve from a collection.
""",
               contentCode: "",
               linkDocumentation: "https://docs.swift.org/swift-book/documentation/the-swift-programming-language/collectiontypes")
    
]


let subsectionsModule6Array: [Subsection] = [
    Subsection(id: 45,
               title: "Creating",
               contentDescription: """
An *array* stores values of the same type in an ordered list. The same value can appear in an array multiple times at different positions.

You can create an empty array of a certain type using initializer syntax.
Swift’s Array type also provides an initializer for creating an array of a certain size with all of its values set to the same default value. You pass this initializer a default value of the appropriate type (called `repeating`): and the number of times that value is repeated in the new array (called `count`):
""",
               contentCode: """
var arrayOfInts: [Int] = []
var arrayOfDoubles: [Double] = Array(repeating: 0.0, count: 3)

print(arrayOfInts)
print(arrayOfDoubles)
""", linkDocumentation: "https://docs.swift.org/swift-book/documentation/the-swift-programming-language/collectiontypes#Arrays"),
    
    
    Subsection(id: 46,
               title: "Modifying",
               contentDescription: """
You access and modify an array through its methods and properties, or by using subscript syntax.

Here are some examples:
""",
               contentCode: """
var shoppingList = ["Eggs", "Toast", "Cornflakes"]
print("The shopping list contains \\(shoppingList.count) items.")

if shoppingList.isEmpty {
    print("The shopping list is empty.")
} else {
    print("The shopping list isn't empty.")
}

// Add
shoppingList.append("Flour")
shoppingList += ["Baking Powder"]
print("The shopping list contains \\(shoppingList)")

// Access
print("The first item of the shopping list is: \\(shoppingList[0])")

// Modify
shoppingList[0] = "Six eggs"
print("The first item of the shopping list is: \\(shoppingList[0])")

// Remove
let cornflakes = shoppingList.remove(at: 2)
let bakingPowder = shoppingList.removeLast()
""",
               linkDocumentation: "https://docs.swift.org/swift-book/documentation/the-swift-programming-language/collectiontypes#Accessing-and-Modifying-an-Array"),
    
    
    Subsection(id: 47, title: "Iterating", contentDescription: """
You can iterate over the entire set of values in an array with the `for-in` loop:
""",
               contentCode: """
var shoppingList = ["Eggs", "Toast", "Cornflakes"]

for item in shoppingList {
    print(item)
}
""",
               linkDocumentation: "https://docs.swift.org/swift-book/documentation/the-swift-programming-language/collectiontypes#Iterating-Over-an-Array",
               codeExercise: module6Quiz1)
    
]

let subsectionsModule6Sets: [Subsection] = [
    Subsection(id: 48,
               title: "Creating",
               contentDescription: """
A *set* stores distinct values of the same type in a collection with no defined ordering. You can use a set instead of an array when the order of items isn’t important, or when you need to ensure that an item only appears once.

You can create an empty set of a certain type using initializer syntax:
""",
               contentCode: """
var letters = Set<Character>()
print("letters is of type Set<Character> with \\(letters.count) items.")

// Initialize a set with an array literal
var favoriteGenres: Set<String> = ["Rock", "Classical", "Hip hop"]
print(favoriteGenres)
""",
               linkDocumentation: "https://docs.swift.org/swift-book/documentation/the-swift-programming-language/collectiontypes#Sets"),
    
    
    Subsection(id: 49,
               title: "Modifying",
               contentDescription: """
You access and modify a `set` through its methods and properties.

Here are some examples:
""",
               contentCode: """
var favoriteGenres: Set<String> = ["Rock", "Classical", "Hip hop"]

if favoriteGenres.isEmpty {
    print("As far as music goes, I'm not picky.")
} else {
    print("I have particular music preferences.")
}

favoriteGenres.insert("Jazz")
print(favoriteGenres)

if let removedGenre = favoriteGenres.remove("Rock") {
    print("\\(removedGenre)? I'm over it.")
} else {
    print("I never much cared for that.")
}

if favoriteGenres.contains("Funk") {
    print("I get up on the good foot.")
} else {
    print("It's too funky in here.")
}
""",
               linkDocumentation: "https://docs.swift.org/swift-book/documentation/the-swift-programming-language/collectiontypes#Accessing-and-Modifying-a-Set"),
    
    
    Subsection(id: 50,
               title: "Iterating",
               contentDescription: """
You can iterate over the values in a set with a `for-in` loop.
""",
               contentCode: """
var favoriteGenres: Set<String> = ["Rock", "Classical", "Hip hop"]

for genre in favoriteGenres {
    print("\\(genre)")
}
""",
               linkDocumentation: "https://docs.swift.org/swift-book/documentation/the-swift-programming-language/collectiontypes#Iterating-Over-a-Set"),
    
    Subsection(id: 51,
               title: "Set Operations",
               contentDescription: """
    You can efficiently perform fundamental set operations, such as combining two sets together, determining which values two sets have in common, or determining whether two sets contain all, some, or none of the same values.
    
    - Use the `intersection(_:)` method to create a new set with only the values common to both sets.
    - Use the `symmetricDifference(_:)` method to create a new set with values in either set, but not both.
    - Use the `union(_:)` method to create a new set with all of the values in both sets.
    - Use the `subtracting(_:)` method to create a new set with values not in the specified set.
    
    
    Here's a example:
    """,
               contentCode: """
    let oddDigits: Set = [1, 3, 5, 7, 9]
    let evenDigits: Set = [0, 2, 4, 6, 8]
    let singleDigitPrimeNumbers: Set = [2, 3, 5, 7]
    
    
    let unionDigits = oddDigits
    .union(evenDigits)
    .sorted()
    print(unionDigits)
    
    let intersectionDigits = oddDigits
    .intersection(evenDigits)
    .sorted()
    print(intersectionDigits)
    
    let subtractingDigits = oddDigits
    .subtracting(singleDigitPrimeNumbers)
    .sorted()
    print(subtractingDigits)
    
    let symmetricDifferenceDigits = oddDigits
    .symmetricDifference(singleDigitPrimeNumbers)
    .sorted()
    print(symmetricDifferenceDigits)
    """,
               linkDocumentation: "https://docs.swift.org/swift-book/documentation/the-swift-programming-language/collectiontypes#Performing-Set-Operations",
               codeExercise: module6Quiz2),
    
    
]

let subsectionsModule6Dic: [Subsection] = [
    Subsection(id: 52,
               title: "Creating",
               contentDescription: """
A *dictionary* stores associations between keys of the same type and values of the same type in a collection with no defined ordering. Each value is associated with a *unique key*, which acts as an identifier for that value within the dictionary. Unlike items in an array, items in a dictionary don’t have a specified order. You use a dictionary when you need to look up values based on their identifier, in much the same way that a real-world dictionary is used to look up the definition for a particular word.

As with arrays, you can create an empty Dictionary of a certain type by using initializer syntax:
""",
               contentCode: "var namesOfIntegers: [Int: String] = [:]",
               linkDocumentation: "https://docs.swift.org/swift-book/documentation/the-swift-programming-language/collectiontypes#Dictionaries"),
    
    
    Subsection(id: 53,
               title: "Modifying",
               contentDescription: """
You access and modify a dictionary through its methods and properties, or by using subscript syntax.

Here are some examples:
""",
               contentCode: """
var airports = ["YYZ": "Toronto Pearson", "DUB": "Dublin"]
print("The airports dictionary contains \\(airports.count) items.")

if airports.isEmpty {
    print("The airports dictionary is empty.")
} else {
    print("The airports dictionary isn't empty.")
}

// Add
airports["LHR"] = "London"

// Update
if let oldValue = airports.updateValue("Dublin Airport", forKey: "DUB") {
    print("The old value for DUB was \\(oldValue).")
}


// Access
if let airportName = airports["DUB"] {
    print("The name of the airport is \\(airportName).")
} else {
    print("That airport isn't in the airports dictionary.")
}

// Remove
airports["APL"] = "Apple International"
// "Apple International" isn't the real airport for APL, so delete it
airports["APL"] = nil


if let removedValue = airports.removeValue(forKey: "DUB") {
    print("The removed airport's name is \\(removedValue).")
} else {
    print("The airports dictionary doesn't contain a value for DUB.")
}

""",
               linkDocumentation: "https://docs.swift.org/swift-book/documentation/the-swift-programming-language/collectiontypes#Accessing-and-Modifying-a-Dictionary"),
    
    
    Subsection(id: 54,
               title: "Iterating",
               contentDescription: """
You can iterate over the key-value pairs in a dictionary with a `for-in` loop. Each item in the dictionary is returned as a `(key, value)` tuple, and you can decompose the tuple’s members into temporary constants or variables as part of the iteration:
""",
               contentCode: """
var airports = ["YYZ": "Toronto Pearson", "DUB": "Dublin"]

for (airportCode, airportName) in airports {
    print("\\(airportCode): \\(airportName)")
}
""",
               linkDocumentation: "https://docs.swift.org/swift-book/documentation/the-swift-programming-language/collectiontypes#Iterating-Over-a-Dictionary",
               codeExercise: module6Quiz3),
    
]

let subsectionsModule7classAndStruct: [Subsection] = [
    Subsection(id: 55,
               title: "Introduction",
               contentDescription: """
In Swift, classes and structures are versatile and flexible constructs that can be used to build your program’s code. Both classes and structures can:

- Define properties to store values.
- Define methods to provide functionality.
- Define subscripts to provide access to their values using subscript syntax.
- Define initializers to set up their initial state.
- Be extended to expand their functionality beyond a default implementation.
- Conform to protocols to provide standard functionality of a certain kind.
""",
               contentCode: "",
               linkDocumentation: "https://docs.swift.org/swift-book/documentation/the-swift-programming-language/classesandstructures"),
    
    
    Subsection(id: 56,
               title: "Differences",
               contentDescription: """
 There are also significant differences between classes and structures in Swift:

Classes:
1. Inheritance: Classes can inherit from other classes. This means a class can gain the characteristics of another class.
2. Type Casting: You can check and interpret the type of a class instance at runtime.
3. Deinitializers: Classes can define deinitializers, which allow an instance of a class to free up any resources it has assigned.
4. Reference Counting: Classes are reference types and are managed by automatic reference counting (ARC).

Structures:
1. No Inheritance: Structures do not support inheritance. They cannot inherit from other structures.
2. Value Types: Structures are value types. When you assign or pass around a structure, you are making a copy of it.
3. Mutability: To modify a property of a structure, you must mark it as mutating if it changes any properties of the structure within its methods.
""",
               contentCode: "",
               linkDocumentation: "https://docs.swift.org/swift-book/documentation/the-swift-programming-language/classesandstructures#Comparing-Structures-and-Classes"),
    
    
    
]

let subsectionsModule7Nr2: [Subsection] = [
    Subsection(id: 57,
               title: "Creating a instance",
               contentDescription: """
 Both classes and structures are declared using the class and struct keywords, respectively. Both can have properties and methods defined within them.

Here’s an example:
""",
               contentCode: """
struct Resolution {
    var width = 0
    var height = 0
}

class VideoMode {
    var resolution = Resolution()
    var interlaced = false
    var frameRate = 0.0
    var name: String?
}

// create instances of structures and classes using initializer syntax:
let someResolution = Resolution()
let someVideoMode = VideoMode()
""",
               linkDocumentation: "https://docs.swift.org/swift-book/documentation/the-swift-programming-language/classesandstructures#Definition-Syntax"),
    
    
    Subsection(id: 58,
               title: "Value Types",
               contentDescription: """
When you assign an instance of a structure to a new variable or constant, or when you pass it to a function, the instance is copied.
""",
               contentCode: """
struct Resolution {
    var width = 0
    var height = 0
}

let hd = Resolution(width: 1920, height: 1080)
var cinema = hd

cinema.width = 2048
print(hd.width)
""",
               linkDocumentation: "https://docs.swift.org/swift-book/documentation/the-swift-programming-language/classesandstructures#Structures-and-Enumerations-Are-Value-Types"),
    
    
    Subsection(id: 59,
               title: "Reference Types",
               contentDescription: """
When you assign an instance of a class to a new variable or constant, or when you pass it to a function, you are referencing the same instance.
""",
               contentCode: """
struct Resolution {
    var width = 0
    var height = 0
}


class VideoMode {
    var resolution = Resolution()
    var interlaced = false
    var frameRate = 0.0
    var name: String?
}

let hd = Resolution(width: 1920, height: 1080)
let tenEighty = VideoMode()
tenEighty.resolution = hd
tenEighty.interlaced = true
tenEighty.name = "1080i"
tenEighty.frameRate = 25.0

let alsoTenEighty = tenEighty
alsoTenEighty.frameRate = 30.0
print(tenEighty.frameRate)
""",
               linkDocumentation: "https://docs.swift.org/swift-book/documentation/the-swift-programming-language/classesandstructures#Structures-and-Enumerations-Are-Value-Types"),
    
    
    Subsection(id: 60,
               title: "Identity Operators",
               contentDescription: """
Since classes are reference types, it is possible to check if two constants or variables refer to the same instance of a class using the identity operators (`===` and `!==`).
""",
               contentCode: """
struct Resolution {
    var width = 0
    var height = 0
}


class VideoMode {
    var resolution = Resolution()
    var interlaced = false
    var frameRate = 0.0
    var name: String?
}

let hd = Resolution(width: 1920, height: 1080)
let tenEighty = VideoMode()
tenEighty.resolution = hd
tenEighty.interlaced = true
tenEighty.name = "1080i"
tenEighty.frameRate = 25.0

let alsoTenEighty = tenEighty
alsoTenEighty.frameRate = 30.0

if tenEighty === alsoTenEighty {
    print("tenEighty and alsoTenEighty refer to the same VideoMode instance.")
}

""",
               linkDocumentation: "https://docs.swift.org/swift-book/documentation/the-swift-programming-language/classesandstructures#Identity-Operators")
    
]


let subsectionsModule7Nr3: [Subsection] = [
    Subsection(id: 61,
               title: "Introduction",
               contentDescription: "A *protocol* defines a blueprint of methods, properties, and other requirements that suit a particular task or piece of functionality. Classes, structures, and enumerations can adopt protocols and provide implementations for the requirements defined in those protocols.",
               contentCode: "",
               linkDocumentation: "https://docs.swift.org/swift-book/documentation/the-swift-programming-language/protocols"),
    
    
    Subsection(id: 62,
               title: "Defining",
               contentDescription: """
In this example, `SomeProtocol` defines an instance property requirement (`mustBeSettable` and `doesNotNeedToBeSettable`), a type property requirement (`someTypeProperty`), an instance method requirement (`someMethod`), a mutating instance method requirement (`changeSomething`), and a type method requirement (`someTypeMethod`).
""",
               contentCode: """
protocol SomeProtocol {
    var mustBeSettable: Int { get set }
    var doesNotNeedToBeSettable: Int { get }
    static var someTypeProperty: Int { get set }
    
    func someMethod()
    mutating func changeSomething()
    static func someTypeMethod()
}
""",
               linkDocumentation: "https://docs.swift.org/swift-book/documentation/the-swift-programming-language/protocols"),
    
    
    Subsection(id: 63,
               title: "Adopting and Conforming",
               contentDescription: """
A `protocol` can require any conforming type to provide an instance property or instance method with a particular name and type. The protocol does not specify whether the property should be a stored property or a computed property. It only specifies the required property name and type.
""",
               contentCode: """
protocol FullyNamed {
    var fullName: String { get }
}

struct Person: FullyNamed {
    var fullName: String
}

let john = Person(fullName: "John Appleseed")
print(john.fullName)
""",
               linkDocumentation: "https://docs.swift.org/swift-book/documentation/the-swift-programming-language/protocols#Property-Requirements",
               codeExercise: module7Quiz3),
    
    
    Subsection(id: 64,
               title: "Inheritance",
               contentDescription: """
A `protocol` can inherit one or more other protocols and can add further requirements on top of the requirements it inherits.
""",
               contentCode: """
protocol SomeProtocol { }
protocol AnotherProtocol { }

protocol InheritingProtocol: SomeProtocol, AnotherProtocol {
    // additional requirements go here
}
""",
               linkDocumentation: "https://docs.swift.org/swift-book/documentation/the-swift-programming-language/protocols#Protocol-Inheritance"),
    
    
    Subsection(id: 65,
               title: "Composition",
               contentDescription: """
You can combine multiple protocols into a single requirement using a `protocol` composition.
""",
               contentCode: """
protocol Named {
    var name: String { get }
}

protocol Aged {
    var age: Int { get }
}

struct Person: Named, Aged {
    var name: String
    var age: Int
}

func wishHappyBirthday(to celebrator: Named & Aged) {
    print("Happy birthday, \\(celebrator.name), you're \\(celebrator.age)!")
}

let birthdayPerson = Person(name: "John", age: 21)
wishHappyBirthday(to: birthdayPerson)
""",
               linkDocumentation: "https://docs.swift.org/swift-book/documentation/the-swift-programming-language/protocols#Protocol-Composition")
    
]

let subsectionsModule7Nr4: [Subsection] = [
    Subsection(id: 66,
               title: "Introduction",
               contentDescription: "*Inheritance* is a mechanism in which one class (called a subclass) inherits the properties and methods of another class (called a superclass). In Swift, inheritance allows you to create a new class based on an existing class, thereby reusing code and adding new features to the existing class.",
               contentCode: "",
               linkDocumentation: "https://docs.swift.org/swift-book/documentation/the-swift-programming-language/inheritance/"),
    
    
    
    Subsection(id: 67,
               title: "Inherite a Base Class",
               contentDescription: """
               A base class is any class that doesn’t inherit from another class.
               
               *Subclassing* is the act of basing a new class on an existing class. The subclass inherits characteristics from the existing class, which you can then refine. You can also add new characteristics to the subclass. To create a subclass, you specify the subclass's name before the superclass's name, separated by a colon.
               
               
               The example below defines a base class called *Vehicle*. This base class defines a stored property called `currentSpeed`, with a default value of `0.0` (inferring a property type of `Double`). The `currentSpeed` property’s value is used by a read-only computed `String` property calle`description` to create a description of the vehicle.
               The `Vehicle` base class also defines a method called `makeNoise`. This method doesn’t actually do anything for a base `Vehicle` instance.
               
               `Bicycle` is a subclass of `Vehicle`. It inherits all properties and methods from `Vehicle`, and also introduces a new property `hasBasket`.
               """,
               contentCode: """
class Vehicle {
    var currentSpeed = 0.0
    var description: String {
        return "traveling at \\(currentSpeed) miles per hour"
    }
    func makeNoise() {
        // do nothing - an arbitrary vehicle doesn't necessarily make a noise
    }
}

class Bicycle: Vehicle {
    var hasBasket = false
}

let bicycle = Bicycle()
print(bicycle.description)

""",
               linkDocumentation: "https://docs.swift.org/swift-book/documentation/the-swift-programming-language/inheritance#Defining-a-Base-Class",
               codeExercise: module7Quiz2),
    
    
    Subsection(id: 68,
               title: "Overriding Methods",
               contentDescription: """
               You can override an inherited instance or type method to provide a tailored or alternative implementation of the method within your subclass.
               
               The following example defines a new subclass of `Vehicle` called `Train`, which overrides the `makeNoise()` method that `Train` inherits from `Vehicle`:
               """,
               contentCode: """
class Vehicle {
    var currentSpeed = 0.0
    var description: String {
        return "traveling at \\(currentSpeed) miles per hour"
    }
    func makeNoise() {
        // do nothing - an arbitrary vehicle doesn't necessarily make a noise
    }
}

class Train: Vehicle {
    override func makeNoise() {
        print("Choo Choo")
    }
}

let train = Train()
train.makeNoise()
""", linkDocumentation: "https://docs.swift.org/swift-book/documentation/the-swift-programming-language/inheritance#Overriding-Methods"),
    
    
    Subsection(id: 69,
               title: "Overriding Properties",
               contentDescription: """
               You can also override properties, including computed properties, to modify their behavior or provide custom getters and setters.
               
               Here, the `Car` class overrides the `description` property of its superclass `Vehicle` to add information about the car’s gear.
               """,
               contentCode: """
class Vehicle {
    var currentSpeed = 0.0
    var description: String {
        return "traveling at \\(currentSpeed) miles per hour"
    }
    func makeNoise() {
        // do nothing - an arbitrary vehicle doesn't necessarily make a noise
    }
}

class Car: Vehicle {
    var gear = 1
    override var description: String {
        return super.description + " in gear \\(gear)"
    }
}

let car = Car()
print(car.description)
""",
               linkDocumentation: "https://docs.swift.org/swift-book/documentation/the-swift-programming-language/inheritance#Overriding-Properties"),
    
    
    Subsection(id: 70,
               title: "Preventing Overrides",
               contentDescription: """
               You can prevent a method, property, or subscript from being overridden by marking it as `final`. Do this by writing the `final` modifier before the method, property, or subscript’s introducer keyword (such as `final var`, `final func`, `final class func`, and `final subscript`).
               
               If you try to subclass `Train` or override its methods or properties, Swift will generate a compile-time error.
               """,
               contentCode: """
class Vehicle {
    var currentSpeed = 0.0
    var description: String {
        return "traveling at \\(currentSpeed) miles per hour"
    }
    func makeNoise() {
        // do nothing - an arbitrary vehicle doesn't necessarily make a noise
    }
}

final class Train: Vehicle {
    override func makeNoise() {
        print("Choo Choo")
    }
}
""",
               linkDocumentation: "https://docs.swift.org/swift-book/documentation/the-swift-programming-language/inheritance#Preventing-Overrides")
    
]


let subsectionsModule7Nr5: [Subsection] = [
    Subsection(id: 71,
               title: "Introduction",
               contentDescription: "*Extensions* add new functionality to an existing class, structure, enumeration, or protocol type. This includes the ability to extend types for which you do not have access to the original source code (known as retroactive modeling).",
               contentCode: "",
               linkDocumentation: "https://docs.swift.org/swift-book/documentation/the-swift-programming-language/extensions"),
    
    
    Subsection(id: 72,
               title: "Basic Syntax",
               contentDescription: """
               Declare extensions with the `extension` keyword:
               
               Extensions can add computed instance properties, computed type properties and new methods to existing types.
               """,
               contentCode: """
extension Double {
    var km: Double { return self * 1_000.0 }
    var m: Double { return self }
    var cm: Double { return self / 100.0 }
    var mm: Double { return self / 1_000.0 }
    var ft: Double { return self / 3.28084 }

    func printCurrentValue() {
        print("The current value is \\(self)")
    }
}

let number = 25.4
print("One inch is \\(number.mm) meters")
number.printCurrentValue()
""",
               linkDocumentation: "https://docs.swift.org/swift-book/documentation/the-swift-programming-language/extensions#Extension-Syntax",
               codeExercise: module7Quiz4),
    
    
    Subsection(id: 73,
               title: "Mutating Instance Methods",
               contentDescription: """
               Instance methods added with an extension can also modify (or *mutate*) the instance itself. Structure and enumeration methods that modify `self` or its properties must mark the instance method as `mutating`, just like mutating methods from an original implementation.
               
               The example below adds a new mutating method called square to Swift’s Int type, which squares the original value:
               """,
               contentCode: """
extension Int {
    mutating func square() {
        self = self * self
    }
}

var someInt = 3
someInt.square()
print(someInt)
""",
               linkDocumentation: "https://docs.swift.org/swift-book/documentation/the-swift-programming-language/extensions#Mutating-Instance-Methods")
]


let subsectionsModule8Error: [Subsection] = [
    Subsection(id: 74,
               title: "Start",
               contentDescription: """
 *Error handling* is the process of responding to and recovering from error conditions in your program. Swift provides first-class support for throwing, catching, propagating, and manipulating recoverable errors at runtime.
 
 Some operations aren’t guaranteed to always complete execution or produce a useful output. Optionals are used to represent the absence of a value, but when an operation fails, it’s often useful to understand what caused the failure, so that your code can respond accordingly.
 
 As an example, consider the task of reading and processing data from a file on disk. There are a number of ways this task can fail, including the file not existing at the specified path, the file not having read permissions, or the file not being encoded in a compatible format. Distinguishing among these different situations allows a program to resolve some errors and to communicate to the user any errors it can’t resolve.
 """,
               contentCode: """
 """,
               linkDocumentation: "https://docs.swift.org/swift-book/documentation/the-swift-programming-language/errorhandling"),
    
    Subsection(id: 75,
               title: "Representing / Throwing Errors",
               contentDescription: """
 In Swift, errors are represented by values of types that conform to the `Error protocol`. This empty protocol indicates that a type can be used for error handling.
 
 Swift enumerations ( are particularly well suited to modeling a group of related error conditions, with associated values allowing for additional information about the nature of an error to be communicated. For example, here’s how you might represent the error conditions of operating a vending machine inside a game:
 """,
               contentCode: """
 enum VendingMachineError: Error {
 case invalidSelection
 case insufficientFunds(coinsNeeded: Int)
 case outOfStock
 }
 """,
               linkDocumentation: "https://docs.swift.org/swift-book/documentation/the-swift-programming-language/errorhandling#Representing-and-Throwing-Errors"),
    
    
    Subsection(id: 76,
               title: "Handling Errors",
               contentDescription: """
 There are four ways to handle errors in Swift:
 
 1. Propagating Errors Using `throws`
 A function or method that can throw an error must be marked with the `throws` keyword. When calling this function, you must handle the error using a `try` keyword.
 
 2. Do-Catch
 You can handle errors using a `do-catch` block. Inside the do block, you use try to call functions that can throw errors. In the catch blocks, you handle the errors.
 
 3. Optional Try?
 You can convert an error to an optional value using `try?`. If an error is thrown, the expression evaluates to `nil`.
 
 4. Force Try!
 You can disable error propagation using `try!`, which will cause a runtime error if an error is thrown.
 
 
 Here are some examples:
 """,
               contentCode: """
 enum DivisionError: Error {
     case divisionByZero
 }
 
 // 1.
 func divide(_ numerator: Double, by denominator: Double) throws -> Double {
     if denominator == 0 {
         throw DivisionError.divisionByZero
     }
     return numerator / denominator
 }
 
 // 2.
 do {
     let result = try divide(10, by: 2)
     print("Result: \\(result)")  // This will print: Result: 5.0
 } catch DivisionError.divisionByZero {
     print("Error: Cannot divide by zero.")
 } catch {
     print("An unexpected error occurred: \\(error).")
 }
 
 do {
     let result = try divide(10, by: 0)
     print("Result: \\(result)")  // This will not execute
 } catch DivisionError.divisionByZero {
     print("Error: Cannot divide by zero.")  // This will print
 } catch {
     print("An unexpected error occurred: \\(error).")
 }
 
 
 // 3.
 let optionalTry = try? divide(10, by: 0)
 print(optionalTry ?? "There was an error")
 
 // 4.
 let forceTry = try! divide(10, by: 2)
 // (10, by: 0), would crash the code
 print(forceTry)
 """,
               linkDocumentation: "https://docs.swift.org/swift-book/documentation/the-swift-programming-language/errorhandling#Handling-Errors",
               codeExercise: module8Quiz1)
    
    
]

let subsectionsModule9Closures: [Subsection] = [
    Subsection(id: 77,
               title: "Introduction",
               contentDescription: """
*Closures* are self-contained blocks of functionality that can be passed around and used in your code. Closures in Swift are similar to closures, anonymous functions, lambdas, and blocks in other programming languages.

Closures can capture and store references to any constants and variables from the context in which they’re defined. This is known as *closing* over those constants and variables. Swift handles all of the memory management of capturing for you.
""",
               contentCode: "",
               linkDocumentation: "https://docs.swift.org/swift-book/documentation/the-swift-programming-language/closures"),
    
    
    Subsection(id: 78,
               title: "Example",
               contentDescription: """
The *parameters* in closure expression syntax can be in-out parameters, but they can’t have a default value. Variadic parameters can be used if you name the variadic parameter. Tuples can also be used as parameter types and return types.

Closure expression syntax has the following general form:
""",
               contentCode: """
let greeting = { (name: String) -> String in
    return "Hello, \\(name)!"
}

print(greeting("John"))
""",
               linkDocumentation: "https://docs.swift.org/swift-book/documentation/the-swift-programming-language/closures#Closure-Expression-Syntax",
               codeExercise: module9Quiz1),
    
    
    Subsection(id: 79,
               title: "Trailing Closures",
               contentDescription: """
If you need to pass a closure expression to a function as the function’s final argument and the closure expression is long, it can be useful to write it as a trailing closure instead. You write a *trailing closure* after the function call’s parentheses, even though the trailing closure is still an argument to the function. When you use the trailing closure syntax, you don’t write the argument label for the first closure as part of the function call. A function call can include multiple trailing closures; however, the first few examples below use a single trailing closure.
""",
               contentCode: """
func someFunctionThatTakesAClosure(closure: () -> Void) {
    closure()
}

// Here's how you call this function without using a trailing closure:


someFunctionThatTakesAClosure(closure: {
    print("Hello World")
})


// Here's how you call this function with a trailing closure instead:


someFunctionThatTakesAClosure() {
    print("Hello World with Trailing Closures")
}
""",
               linkDocumentation: "https://docs.swift.org/swift-book/documentation/the-swift-programming-language/closures#Trailing-Closures"),
    
    
    Subsection(id: 80,
               title: "Capturing Values",
               contentDescription: """
A closure can *capture* constants and variables from the surrounding context in which it’s defined. The closure can then refer to and modify the values of those constants and variables from within its body, even if the original scope that defined the constants and variables no longer exists.
In Swift, the simplest form of a closure that can capture values is a nested function, written within the body of another function. A nested function can capture any of its outer function’s arguments and can also capture any constants and variables defined within the outer function.


Here’s an example of a function called `makeIncrementer`, which contains a nested function called `incrementer`. The nested `incrementer()` function captures two values, `runningTotal` and `amount`, from its surrounding context. After capturing these values, `incrementer` is returned by `makeIncrementer` as a closure that increments `runningTotal` by amount each time it’s called.
""",
               contentCode: """
func makeIncrementer(forIncrement amount: Int) -> () -> Int {
    var runningTotal = 0
    func incrementer() -> Int {
        runningTotal += amount
        return runningTotal
    }
    return incrementer
}

let incrementer = makeIncrementer(forIncrement: 10)
print(incrementer())
print(incrementer())
print(incrementer())
""",
               linkDocumentation: "https://docs.swift.org/swift-book/documentation/the-swift-programming-language/closures#Capturing-Values",
               codeExercise: module9Quiz2)
    
]

let subsections9Generics: [Subsection] = [
    Subsection(id: 81,
               title: "Introduction",
               contentDescription: """
*Generic* code enables you to write flexible, reusable functions and types that can work with any type, subject to requirements that you define. You can write code that avoids duplication and expresses its intent in a clear, abstracted manner.

Generics are one of the most powerful features of Swift, and much of the Swift standard library is built with generic code. In fact, you’ve been using generics throughout the Language Guide, even if you didn’t realize it. For example, Swift’s `Array` and `Dictionary` types are both generic collections. You can create an array that holds `Int` values, or an array that holds `String` values, or indeed an array for any other type that can be created in Swift. Similarly, you can create a dictionary to store values of any specified type, and there are no limitations on what that type can be.
""",
               contentCode: "",
               linkDocumentation: "https://docs.swift.org/swift-book/documentation/the-swift-programming-language/generics#The-Problem-That-Generics-Solve"),
    
    
    Subsection(id: 82,
               title: "Generic functions",
               contentDescription: """
*Generic functions can work with any type.*

Here's a example of the generic version of the function `swapTwoValues`. It uses a placeholder type name (called `T`, in this case) instead of an actual type name (such as `Int`, `String`, or `Double`). The placeholder type name doesn’t say anything about what T must be, but it does say that both a and b must be of the same type `T`, whatever `T` represents. The actual type to use in place of `T` is determined each time the `swapTwoValues(_:_:)` function is called.
""",
               contentCode: """
func swapTwoValues<T>(_ a: inout T, _ b: inout T) {
    let temporaryA = a
    a = b
    b = temporaryA
}

var someInt = 5
var anotherInt = 10
swapTwoValues(&someInt, &anotherInt)
print(someInt)
print(anotherInt)

var someString = "hello"
var anotherString = "world"
swapTwoValues(&someString, &anotherString)
print(someString)
print(anotherString)
""",
               linkDocumentation: "https://docs.swift.org/swift-book/documentation/the-swift-programming-language/generics#Generic-Functions",
               codeExercise: module9Quiz3),
    
    Subsection(id: 83,
               title: "Generic Types",
               contentDescription: """
In addition to generic functions, Swift enables you to define your own generic types. These are custom classes, structures, and enumerations that can work with any type, in a similar way to `Array` and `Dictionary`.


This example shows you how to write a generic collection type called `Stack`. A stack is an ordered set of values, similar to an array, but with a more restricted set of operations than Swift’s `Array` type. An array allows new items to be inserted and removed at any location in the array. A stack, however, allows new items to be appended only to the end of the collection (known as pushing a new value on to the stack). Similarly, a stack allows items to be removed only from the end of the collection (known as popping a value off the stack).
""",
               contentCode: """
struct Stack<Element> {
    var items: [Element] = []
    mutating func push(_ item: Element) {
        items.append(item)
    }
    mutating func pop() -> Element {
        return items.removeLast()
    }
}

var stackOfInts = Stack<Int>()
stackOfInts.push(3)
stackOfInts.push(5)
print(stackOfInts.items)
print(stackOfInts.pop())
""",
               linkDocumentation: "https://docs.swift.org/swift-book/documentation/the-swift-programming-language/generics#Generic-Types"),
    
]

let subsectionsModule10Prop: [Subsection] = [
    Subsection(id: 84,
               title: "Introduction",
               contentDescription: """
Property observers observe and respond to changes in a property’s value. Property observers are called every time a property’s value is set, even if the new value is the same as the property’s current value.


You have the option to define either or both of these observers on a property:

• `willSet` is called just before the value is stored.
• `didSet` is called immediately after the new value is stored.

If you implement a `willSet` observer, it’s passed the new property value as a constant parameter. You can specify a name for this parameter as part of your `willSet` implementation. If you don’t write the parameter name and parentheses within your implementation, the parameter is made available with a default parameter name of `newValue`.

Similarly, if you implement a `didSet` observer, it’s passed a constant parameter containing the old property value. You can name the parameter or use the default parameter name of `oldValue`. If you assign a value to a property within its own `didSet` observer, the new value that you assign replaces the one that was just set.
""",
               contentCode: "",
               linkDocumentation: "https://docs.swift.org/swift-book/documentation/the-swift-programming-language/properties#Property-Observers"),
    
    
    Subsection(id: 85,
               title: "Example",
               contentDescription: """
Here’s an example of `willSet` and `didSet` in action. The example below defines a new class called `StepCounter`, which tracks the total number of steps that a person takes while walking. This class might be used with input data from a pedometer or other step counter to keep track of a person’s exercise during their daily routine.
""",
               contentCode: """
class StepCounter {
    var totalSteps: Int = 0 {
        willSet(newTotalSteps) {
            print("About to set totalSteps to \\(newTotalSteps)")
        }
        didSet {
            if totalSteps > oldValue  {
                print("Added \\(totalSteps - oldValue) steps")
            }
        }
    }
}
let stepCounter = StepCounter()
stepCounter.totalSteps = 200
stepCounter.totalSteps = 360
stepCounter.totalSteps = 896
""",
               linkDocumentation: "https://docs.swift.org/swift-book/documentation/the-swift-programming-language/properties#Property-Observers",
               codeExercise: module10Quiz1)
]

let subsectionsModule10Type: [Subsection] = [
    Subsection(id: 86,
               title: "Introduction",
               contentDescription: """
*Type casting* is a way to check the type of an instance, or to treat that instance as a different superclass or subclass from somewhere else in its own class hierarchy.
Type casting in Swift is implemented with the `is` and `as` operators. These two operators provide a simple and expressive way to check the type of a value or cast a value to a different type.
""",
               contentCode: "",
               linkDocumentation: "https://docs.swift.org/swift-book/documentation/the-swift-programming-language/typecasting"),
    
    
    Subsection(id: 87,
               title: "Check operator (is)",
               contentDescription: """
Use the *type check operator* (`is`) to check whether an instance is of a certain subclass type. The type check operator returns `true` if the instance is of that subclass type and false if it’s not.

In this example, the `is` keyword is used to check if each `animal` in the animals array is a `Dog` or a `Cat`. Based on the result, the respective counters are incremented
""",
               contentCode: """
class Animal {}
class Dog: Animal {}
class Cat: Animal {}

let animals: [Animal] = [Dog(), Cat(), Dog()]

var dogCount = 0
var catCount = 0

for animal in animals {
    if animal is Dog {
        dogCount += 1
    } else if animal is Cat {
        catCount += 1
    }
}

print("Number of dogs: \\(dogCount)")
print("Number of cats: \\(catCount)")

""",
               linkDocumentation: "https://docs.swift.org/swift-book/documentation/the-swift-programming-language/typecasting#Checking-Type"),
    
    
    
    Subsection(id: 88,
               title: "Downcasting Intro",
               contentDescription: """
A constant or variable of a certain class type may actually refer to an instance of a subclass behind the scenes. Where you believe this is the case, you can try to downcast to the subclass type with a *type cast operator* (`as?` or `as!`)

Because downcasting can fail, the type cast operator comes in two different forms. The conditional form, `as?`, returns an optional value of the type you are trying to downcast to. The forced form, `as!`, attempts the downcast and force-unwraps the result as a single compound action.

Use the conditional form of the type cast operator (`as?`) when you aren’t sure if the downcast will succeed. This form of the operator will always return an optional value, and the value will be nil if the downcast was not possible. This enables you to check for a successful downcast.

Use the forced form of the type cast operator (`as!`) only when you are sure that the downcast will always succeed. This form of the operator will trigger a runtime error if you try to downcast to an incorrect class type.
""",
               contentCode: "",
               linkDocumentation: "https://docs.swift.org/swift-book/documentation/the-swift-programming-language/typecasting#Downcasting"),
    
    
    
    Subsection(id: 89,
               title: "Downcasting Example",
               contentDescription: """
In this example, `dog` safely attempts to downcast `animal` to a `Dog`.

The variable `forcedDog` forcibly downcasts `animal` to a `Dog`, which will crash if `animal` is not actually a `Dog`.
""",
               contentCode: """
class Animal {}
class Dog: Animal {}

let animal: Animal = Dog()

if let dog = animal as? Dog {
    print("Animal is a Dog: \\(dog)")
}

let forcedDog = animal as! Dog
""",
               linkDocumentation: "https://docs.swift.org/swift-book/documentation/the-swift-programming-language/typecasting#Downcasting",
               codeExercise: module10Quiz2)
]


let subsectionsModule11Basics: [Subsection] = [
    Subsection(id: 89,
               title: "Introduction",
               contentDescription: """
SwiftUI helps you build great-looking apps across all Apple platforms with the power of Swift — and surprisingly little code. You can bring even better experiences to everyone, on any Apple device, using just one set of tools and APIs.
""",
               contentCode: "",
               linkDocumentation: "https://developer.apple.com/xcode/swiftui/"),
    
    Subsection(id: 90,
               title: "Declarative Syntax",
               contentDescription: """
SwiftUI uses a declarative syntax, so you can simply state what your user interface should do. For example, you can write that you want a list of items consisting of text fields, then describe alignment, font, and color for each field. Your code is simpler and easier to read than ever before, saving you time and maintenance.

The following example displays a Text of "Hello World" with a font size of 32 and color red:
""",
               contentCode: """
struct TextView: View {
    var body: some View {
        Text("Hello World")
            .font(.system(size: 32))
            .foregroundColor(.red)
    }
}
""",
               linkDocumentation: "https://developer.apple.com/xcode/swiftui/",
               codeExercise: module11Quiz1)
    
]

let subsectionsModule11Layouts: [Subsection] = [
    Subsection(id: 91,
               title: "VStack",
               contentDescription: """
A view that arranges its subviews in a vertical line.

The following example shows a simple vertical stack of 10 text views, with a spacing of 10 and an alignment of `leading`:
""",
               contentCode: """
struct VStackView: View {
    var body: some View {
        VStack(
                alignment: .leading,
                spacing: 10
            ) {
                ForEach(
                    1...10,
                    id: \\.self
                ) {
                    Text("Item \\($0)")
                }
            }
    }
}
""",
               linkDocumentation: "https://developer.apple.com/documentation/swiftui/vstack",
               codeExercise: module11Quiz2),
    
    
    Subsection(id: 92,
               title: "HStack",
               contentDescription: """
A view that arranges its subviews in a horizontal line.

The fThe following example shows a simple horizontal stack of five text views, with a spacing of 5 and an alignment of `top`:
""",
               contentCode: """
struct HStackView: View {
    var body: some View {
        HStack(
                alignment: .top,
                spacing: 10
            ) {
                ForEach(
                    1...5,
                    id: \\.self
                ) {
                    Text("Item \\($0)")
                }
            }
    }
}
""",
               linkDocumentation: "https://developer.apple.com/documentation/swiftui/hstack",
               codeExercise: module11Quiz3),
    
    
    Subsection(id: 93,
               title: "ZStack",
               contentDescription: """
The `ZStack` assigns each successive subview a higher z-axis value than the one before it, meaning later subviews appear “on top” of earlier ones.

The following example uses a `ZStack` to overlay a white "Center" text on top of a blue circle with a width and height of 100 points:
""",
               contentCode: """
struct ZStackView: View {
    var body: some View {
        ZStack {
            Circle()
                .fill(Color.blue)
                .frame(width: 100, height: 100)
            Text("Center")
                .foregroundColor(.white)
            }
    }
}
""",
               linkDocumentation: "https://developer.apple.com/documentation/swiftui/zstack",
               codeExercise: module11Quiz4)
    
]


let subsectionsModule12State: [Subsection] = [
    Subsection(id: 94,
               title: "State",
               contentDescription: """
A property wrapper type that can read and write a value managed by SwiftUI.

Use state as the single source of truth for a given value type that you store in a view hierarchy. Create a state value in a `View` by applying the `@State` attribute to a property declaration and providing an initial value. Declare state as private to prevent setting it in a memberwise initializer, which can conflict with the storage management that SwiftUI provides:
""",
               contentCode: """
struct PlayButton: View {
    @State private var isPlaying: Bool = false // Create the state.


    var body: some View {
        Button(isPlaying ? "Pause" : "Play") { // Read the state.
            isPlaying.toggle() // Write the state.
        }
    }
}
""",
               linkDocumentation: "https://developer.apple.com/documentation/swiftui/state",
               codeExercise: module12Quiz1),
    
    
    Subsection(id: 95,
               title: "Binding",
               contentDescription: """
A property wrapper type that can read and write a value owned by a source of truth.

Use a binding to create a two-way connection between a property that stores data, and a view that displays and changes the data. A binding connects a property to a source of truth stored elsewhere, instead of storing data directly. For example, a button that toggles between play and pause can create a binding to a property of its parent view using the `Binding` property wrapper.

The parent view declares a property to hold the playing state, using the `State` property wrapper to indicate that this property is the value’s source of truth:
""",
               contentCode: """
struct PlayButton: View {
    @Binding var isPlaying: Bool


    var body: some View {
        Button(isPlaying ? "Pause" : "Play") {
            isPlaying.toggle()
        }
    }
}

struct PlayerView: View {
    @State var isPlaying: Bool = false


    var body: some View {
        VStack {
            Text("New episode")
                .foregroundStyle(isPlaying ? .primary : .secondary)
            PlayButton(isPlaying: $isPlaying)
        }
    }
}
""",
               linkDocumentation: "https://developer.apple.com/documentation/swiftui/binding",
               codeExercise: module12Quiz2)
]

let subsectionsModule12Objects: [Subsection] = [
    
    Subsection(id: 96,
               title: "StateObject",
               contentDescription: """
A property wrapper type that instantiates an observable object.

Use a state object as the single source of truth for a reference type that you store in a view hierarchy. Create a state object in a `View` by applying the `@StateObject` attribute to a property declaration and providing an initial value that conforms to the `ObservableObject` protocol. Declare state objects as private to prevent setting them from a memberwise initializer, which can conflict with the storage management that SwiftUI provides.

In this examole `DataModel` class conforms to the `ObservableObject` protocol and has two published properties: `name`, a string initialized to "Some Name," and `isEnabled`, a boolean initialized to `false`. These properties can be observed for changes in SwiftUI views.
""",
               contentCode: """
class DataModel: ObservableObject {
    @Published var name = "Some Name"
    @Published var isEnabled = false
}

struct MySubView: View {
    var body: some View {
        Text("Subview")
    }
}


struct MyView: View {
    @StateObject private var model = DataModel() // Create the state object.


    var body: some View {
        Text(model.name) // Updates when the data model changes.
        MySubView()
            .environmentObject(model)
    }
}
""",
               linkDocumentation: "https://developer.apple.com/documentation/swiftui/stateobject"),
    
    Subsection(id: 97,
               title: "ObservedObject",
               contentDescription: """
A property wrapper type that subscribes to an observable object and invalidates a view whenever the observable object changes.

Add the `@ObservedObject` attribute to a parameter of a SwiftUI `View` when the input is an `ObservableObject` and you want the view to update when the object’s published properties change. You typically do this to pass a `StateObject` into a subview.
The following example defines a data model as an observable object, instantiates the model in a view as a state object, and then passes the instance to a subview as an observed object:
""",
               contentCode: """
class DataModel: ObservableObject {
    @Published var name = "Some Name"
    @Published var isEnabled = false
}


struct MyView: View {
    @StateObject private var model = DataModel()


    var body: some View {
        Text(model.name)
        MySubView(model: model)
    }
}


struct MySubView: View {
    @ObservedObject var model: DataModel


    var body: some View {
        Toggle(model.isEnabled ? "Enabled" : "Disabled", isOn: $model.isEnabled)
    }
}
""",
               linkDocumentation: "https://developer.apple.com/documentation/swiftui/observedobject"),
    
    
    Subsection(id: 98,
               title: "EnvironmentObject",
               contentDescription: """
A property wrapper type for an observable object that a parent or ancestor view supplies.

An environment object invalidates the current view whenever the observable object that conforms to ObservableObject changes. If you declare a property as an environment object, be sure to set a corresponding model object on an ancestor view by calling its `environmentObject(_:)` modifier.

Here's an example:
""",
               contentCode: """
class DataModel: ObservableObject {
    @Published var name = "Some Name"
    @Published var isEnabled = false
}


struct MyView: View {
    @StateObject private var model = DataModel()


    var body: some View {
        Text(model.name)
        MySubView()
            .environmentObject(model)
    }
}


struct MySubView: View {
    @EnvironmentObject var model: DataModel


    var body: some View {
        Toggle(model.isEnabled ? "Enabled" : "Disabled", isOn: $model.isEnabled)
    }
}
""",
               linkDocumentation: "https://developer.apple.com/documentation/swiftui/environmentobject")
    
]


let subsectionsModule13Components1: [Subsection] = [
    Subsection(id: 99,
               title: "Button Part I",
               contentDescription: """
 You create a button by providing an action and a label. The action is either a method or closure property that does something when a user clicks or taps the button. The label is a view that describes the button’s action — for example, by showing text, an icon, or both.
 
 The label of a button can be any kind of view, such as a `Text` view for text-only labels or a `Label` view, for buttons with both a title and an icon:
 """,
               contentCode: """
 struct ButtonView: View {
    var body: some View {
        Button(action: signIn) {
            Text("Sign In") // Only Title
 
            // Label("Sign In", systemImage: "arrow.up")
            // Title and an incon
        }
    }
    
    func signIn() {
        // do something
    }
 }
 """,
               linkDocumentation: "https://developer.apple.com/documentation/swiftui/button",
               codeExercise: module13Quiz1),
    
    Subsection(id: 100,
               title: "Button Part II",
               contentDescription: """
 You can optionally initialize a button with a `ButtonRole` that characterizes the button’s purpose. For example, you can create a `destructive` button for a deletion action:
 """,
               contentCode: """
 struct ButtonView: View {
    var body: some View {
        Button("Delete", role: .destructive, action: delete)
    }
 
    func delete() {
    // do something
    }
 }
 """,
               linkDocumentation: "https://developer.apple.com/documentation/swiftui/button#Assigning-a-role",
               codeExercise: module13Quiz2),
    
    Subsection(id: 101,
               title: "Button Part III",
               contentDescription: """
 You can customize a button’s appearance using one of the standard button styles, like `bordered`, and apply the style with the `buttonStyle(_:)` modifier:
 """,
               contentCode: """
 struct ButtonView: View {
    var body: some View {
        Button("Sign In", action: signIn)
            .buttonStyle(.bordered)
    }
 
    func signIn() {
        // do something
    }
 }
 """,
               linkDocumentation: "https://developer.apple.com/documentation/swiftui/button#Styling-buttons"),
    
    Subsection(id: 102,
               title: "TextField",
               contentDescription: """
 You create a text field with a label and a binding to a value. If the value is a string, the text field updates this value continuously as the user types or otherwise edits the text in the field. For non-string types, it updates the value when the user commits their edits, such as by pressing the Return key.
 
 The following example shows a text field to accept a username, and a `Text` view below it that shadows the continuously updated value of username. The `Text` view changes color as the user begins and ends editing. When the user submits their completed entry to the text field, the `onSubmit(of:_:)` modifer calls an internal `validate(name:)` method.
 """,
               contentCode: """
 struct TextFieldView: View {
    @State private var username: String = ""
 
    var body: some View {
        TextField(
            "User name (email address)",
            text: $username
        )
        .onSubmit {
            // validate(name: username)
        }
        .textInputAutocapitalization(.never)
        .disableAutocorrection(true)
        .border(.secondary)
 
 
        Text(username)
            .foregroundColor(.blue)
    }
 }
 """,
               linkDocumentation: "https://developer.apple.com/documentation/swiftui/textfield",
               codeExercise: module13Quiz3),
    
    
    Subsection(id: 103,
               title: "Slider",
               contentDescription: """
 A control for selecting a value from a bounded linear range of values.
 
 A slider consists of a “thumb” image that the user moves between two extremes of a linear “track”. The ends of the track represent the minimum and maximum possible values. As the user moves the thumb, the slider updates its bound value.
 
 The following example shows a slider bound to the value speed. As the slider updates this value, a bound `Text` view shows the value updating. The `onEditingChanged` closure passed to the slider receives callbacks when the user drags the slider. The example uses this to change the color of the value text.
 """,
               contentCode: """
 struct SliderView: View {
    @State private var speed = 50.0
    @State private var isEditing = false


    var body: some View {
        VStack {
            Slider(
                value: $speed,
                in: 0...100,
                onEditingChanged: { editing in
                    isEditing = editing
                }
            )
            Text("\\(speed)")
                .foregroundColor(isEditing ? .red : .blue)
        }
    }
 }
 """,
               linkDocumentation: "https://developer.apple.com/documentation/swiftui/slider",
               codeExercise: module13Quiz4),
    
    
    Subsection(id: 104,
               title: "Toggle",
               contentDescription: """
 A control for selecting a value from a bounded linear range of values.
 
 You create a toggle by providing an `isOn` binding and a label. Bind `isOn` to a Boolean property that determines whether the toggle is on or off. Set the label to a view that visually describes the purpose of switching between toggle states. For example:
 """,
               contentCode: """
 struct ToggleView: View {
    @State private var vibrateOnRing = false

    var body: some View {
        Toggle(isOn: $vibrateOnRing) {
            Text("Vibrate on Ring")
        }
    }
 }
 """,
               linkDocumentation: "https://developer.apple.com/documentation/swiftui/toggle"),
    
    Subsection(id: 105,
               title: "System Images",
               contentDescription: """
 Symbol images give you a consistent set of icons to use in your app, and ensure that those icons adapt to different sizes and to app-specific content. A symbol image contains a vector-based shape that scales without losing its sharpness. You generate its final appearance by applying a tint color, or if you’re using SF Symbols 2 or later, you can apply multiple colors to add depth and emphasis to your symbol. You use symbol images in places where you display a simple shape or glyph, such as a bar button item.
 
 In SwiftUI, you use `Image(systemName:)` to load a system symbol image and `Image(_:)` to load your custom symbol, as the following code shows:
 """,
               contentCode: """
 struct SystemImagesView: View {
    var body: some View {
        // Create a system symbol image.
        Image(systemName: "multiply.circle.fill")
    }
 }
 """,
               linkDocumentation: "https://developer.apple.com/documentation/uikit/uiimage/configuring_and_displaying_symbol_images_in_your_ui")
    
]

let subsectionsModule14NavigationViews: [Subsection] = [
    Subsection(id: 106,
               title: "Navigations",
               contentDescription: """
A view that displays a root view and enables you to present additional views over the root view.

Use a navigation stack to present a stack of views over a root view. People can add views to the top of the stack by clicking or tapping a `NavigationLink`, and remove views using built-in, platform-appropriate controls, like a Back button or a swipe gesture. The stack always displays the most recently added view that hasn’t been removed, and doesn’t allow the root view to be removed.

To create navigation links, associate a view with a data type by adding a `navigationDestination(for:destination:)` modifier inside the stack’s view hierarchy. Then initialize a NavigationLink that presents an instance of the same kind of data.

This example defines a view with a list of names displayed using a `NavigationStack`. Each name in the list is a navigation link that, when tapped, navigates to a new view displaying the selected name as text.
""",
               contentCode: """
struct NavigationExampleView: View {
    var names: [String] = ["Paul", "Abraham", "Leon", "Elias", "Eren", "Canel"]

    var body: some View {
        NavigationStack {
            List(names, id: \\.self) { name in
                NavigationLink(name, value: name)
            }
            .navigationDestination(for: String.self) { name in
                Text(name)
            }
        }
    }
}
""",
               linkDocumentation: "https://developer.apple.com/documentation/swiftui/navigationstack",
               codeExercise: module14Quiz1),
    
    
    Subsection(id: 107,
               title: "TabView",
               contentDescription: """
To create a user interface with tabs, place views in a TabView and apply the `tabItem(_:)` modifier to the contents of each tab. On iOS, you can also use one of the badge modifiers, like `badge(_:)`, to assign a badge to each of the tabs.

This example defines a view with `TabView` containing two tabs. The first tab displays "First Tab" with a badge of "2" and an icon of a circle with the number 1. The second tab displays "Second Tab" with a badge of "!" and an icon of a circle with the number 2:
""",
               contentCode: """
struct TabViewExample: View {
    var body: some View {
        TabView {
            Text("First Tab")
                .badge("2")
                .tabItem {
                    Image(systemName: "1.circle")
                    Text("First")
                }
            Text("Second Tab")
                .badge("!")
                .tabItem {
                    Image(systemName: "2.circle")
                    Text("Second")
                }
        }
    }
}
""",
               linkDocumentation: "https://developer.apple.com/documentation/swiftui/tabview",
               codeExercise: module14Quiz2)

]

let subsectionsModule15Animations: [Subsection] = [
    
    Subsection(id: 108,
               title: "Rotation Effects",
               contentDescription: """
Rotates a view’s rendered output in two dimensions around the specified point.

This example defines a view that includes a state variable `isRotated` initialized to `false` to control the rotation of an arrow image. The view contains an `Image` that rotates 90 degrees when `isRotated` is `true`, with an ease-in-out animation of 1 second. Tapping the image toggles the rotation state:
""",
               contentCode: """
struct BasicAnimationView: View {
    @State private var isRotated = false
    
    var body: some View {
        Image(systemName: "arrow.right.circle.fill")
            .rotationEffect(.degrees(isRotated ? 90 : 0))
            .animation(.easeInOut, value: 1)
            .onTapGesture {
                isRotated.toggle()
            }
    }
}
""",
               linkDocumentation: "https://developer.apple.com/documentation/swiftui/view/rotationeffect(_:anchor:)",
               codeExercise: module15Quiz1),
    
    Subsection(id: 109,
               title: "Scale Effects",
               contentDescription: """
Scales this view’s rendered output by the given vertical and horizontal size amounts, relative to an anchor point.

This example defines a view that includes a state variable `scale` initialized to 1.0 to control the scaling of a star image. The view contains a vertically stacked `Image` with a scaling effect and animation, and a button that increases the scale by 0.5 when tapped, triggering the animation.
""",
               contentCode: """
struct AnimationView: View {
    @State private var scale: CGFloat = 1.0

    var body: some View {
        VStack {
            Image(systemName: "star.fill")
                .scaleEffect(scale)
                .animation(.easeInOut, value: 1)
            Button("Animate") {
                scale += 0.5
            }
        }
    }
}
""",
               linkDocumentation: "https://developer.apple.com/documentation/swiftui/view/scaleeffect(_:anchor:)-7q7as",
               codeExercise: module15Quiz2),

]

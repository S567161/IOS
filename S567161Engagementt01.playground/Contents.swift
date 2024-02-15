import UIKit

var greeting = "Hello, playground"

//Ques 01:
print("Swift is a programming language developed by Apple Inc.")
print("It was introduced in 2014 as a replacement for Objective-C.")
print("Swift is designed to work with Apple's Cocoa and Cocoa Touch frameworks.")
print("Key features include safety, speed, and expressiveness.")
print("Overall, Swift is a powerful and versatile programming language, primarily used for developing applications on Apple platforms, including iOS, macOS, watchOS, and tvOS")

//Ques 02:
let sID = "S567161"
let fullname = "Udaykiranreddy Devarapally"

// Print using string interpolation
print("SID: \(sID)")
print("Full Name: \(fullname)")
//Ques 03:
print("Yes, Bool is a data type in Swift. The Bool type is used to represent boolean values, which can only be either true or false. In Swift, boolean values are fundamental for making decisions and controlling the flow of program execution through conditional statements such as if and while.")
print("Distinct Type: Bool is a distinct and predefined data type in Swift.")
print("Binary Representation: Booleans have a binary representation, where true is typically represented as 1 and false as 0.")
print("Justification")
let isSwiftAcceptBool = true

if isSwiftAcceptBool {
    print("Swift is awesome!")
} else {
    print("Swift is still awesome!")
}
//Ques 04:
print("Double has more precision digits compared to Float in Swift.")
print("Bit Size: The Double type in Swift is a 64-bit floating-point number, while Float is a 32-bit floating-point number. The larger bit size of Double allows it to represent a wider range of values and provides more precision.")
print("Decimal Digits: Double can represent more decimal digits accurately than Float. Double has a 15-17 digit decimal precision, while Float typically has a 6-9 digit decimal precision.")
let doubleValue: Double = 123456789.123456789
let floatValue: Float = 123456789.123456789

print("Double Value: \(doubleValue)")
print("Float Value: \(floatValue)")
//Ques 05:
let decimalNumber = 73

// Converting to binary
let binaryRepresentation = String(decimalNumber, radix: 2)

// Converting to octal
let octalRepresentation = String(decimalNumber, radix: 8)

// Converting to hexadecimal
let hexadecimalRepresentation = String(decimalNumber, radix: 16)

// Printing the results
print("Decimal: \(decimalNumber)")
print("Binary: \(binaryRepresentation)")
print("Octal: \(octalRepresentation)")
print("Hexadecimal: \(hexadecimalRepresentation)")
//Ques 06:
print("The main difference between Int32 and UInt32 lies in their representation of signed and unsigned integer values.")
print("Int32 is a 32-bit signed integer data type in Swift.It can represent both positive and negative integer values.The range of Int32 is from -2,147,483,648 to 2,147,483,647.")
print("UInt32 is a 32-bit unsigned integer data type in Swift.It can only represent non-negative integer values (zero and positive).The range of UInt32 is from 0 to 4,294,967,295.")
//Ques 07:
print("The + operator and string interpolation are both ways to concatenate strings in Swift, but they differ in terms of syntax and functionality.")
print("By using + operator")
let firstName = "Udaykiranreddy"
let lastName = "Devarapally"

let fullName = firstName + " " + lastName
print(fullName)
print("By using string interpolation")
let FirstName = "Udaykiranreddy"
let LastName = "Devarapally"

let FullName = "\(FirstName) \(LastName)"
print(FullName)
//Ques 08:
print("In this scenario, you need to perform a downcast from Int to Int8 using the truncatingIfNeeded initializer.")
let num: Int = 300

// Perform downcast from Int to Int8
let anotherNum: Int8 = Int8(truncatingIfNeeded: num)

// Printing the value of anotherNum
print("Value of anotherNum: \(anotherNum)")
//Ques 09:
print("Both print(:separator:terminator:) and debugPrint(:separator:terminator:) are used to print values in Swift, but they have differences in terms of formatting and additional information included in the output")
print("By using print(:separator:terminator:),we get only output prints to console")
print("Using print", sID)
print("By using debugPrint(:separator:terminator:),we get the detailed ouput.")
debugPrint("by debugprint", sID)
print("In summary, if you simply want to print the value without additional formatting and debugging information, you can use print. If you want more detailed debugging information and formatting, debugPrint is a better choice.")
//Ques 10:
print("To print the value of age after 3 years from now, you need to first convert the string 21 to an integer")
// Assigning the string "21" to the variable age
var ageString = "21"

// Convert ageString to an integer
if let age = Int(ageString) {
    let ageAfter3Years = age + 3

    print("Age after 3 years: \(ageAfter3Years)")
} else {
    // Handle the case where conversion to Int fails
    print("Invalid age value")
}
//Ques 11:

func addTwoNumbers(_ number1: Int, _ number2: Int) -> String {
    // Function to reverse a given integer
    func reverseNumber(_ num: Int) -> Int {
        var reversed = 0
        var originalNum = num
        
        while originalNum > 0 {
            reversed = reversed * 10 + originalNum % 10
            originalNum /= 10
        }
        
        return reversed
    }
    
    // Reverse number1 and number2
    let reversedNumber1 = reverseNumber(number1)
    let reversedNumber2 = reverseNumber(number2)
    
    // Find the sum of reversedNumber1 and reversedNumber2
    let sum = reversedNumber1 + reversedNumber2
    // Reverse the sum
        let reversedSum = reverseNumber(sum)
        
    // Convert the reversedSum to a String
        let reversedSumString = String(reversedSum)
        
        // Calculate the number of zeros to pad
        let numberOfZeros = String(sum).count - reversedSumString.count
        
        // Pad with leading zeros as needed
        let result = String(repeating: "0", count: numberOfZeros) + reversedSumString
        
        return result
    }

    
    // Examples
    let result1 = addTwoNumbers(983, 3256)
    print("Example 1: \(result1)")

    let result2 = addTwoNumbers(1, 9999)
    print("Example 2: \(result2)")


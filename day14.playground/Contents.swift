//write a function that accepts an optional array of integers, and returns one randomly. If the array is missing or empty, return a random number in the range 1 through 100.
//
//If that sounds easy, it’s because I haven’t explained the catch yet: I want you to write your function in a single line of code.

var arr = [Int]()
func checkPoint9(givenArray: [Int]?) -> Int { givenArray?.randomElement() ?? Int.random(in: 1...100) }

print(checkPoint9(givenArray: arr))

arr = [120,121,122,123]

print(checkPoint9(givenArray: arr))


//struct Book {
//    let title: String
//    let author: String?
//}
//
//let book = Book(title: "Beowulf", author: nil)
//let author = book.author ?? "Anonymous"
//print(author)

//let captains = [
//    "Enterprise": "Picard",
//    "Voyager": "Janeway",
//    "Defiant": "Sisko"
//]

//let new = captains["Serenity"] ?? "N/A"

//let new = captains["Serenity", default: "N/A"]

//var myVar: Int? = 3
//
//if let unwrapped = myVar {
//    print("Run if myVar has a value inside")
//    print("That value is \(unwrapped)")
//}
//
//func checkIfValid(myVar: Int?) {
//    guard let unwrapped = myVar else {
//        print("Run if myVar doesn't have a value inside")
//        return
//    }
//    print("\(unwrapped) is valid")
//}
//checkIfValid(myVar: myVar)
//
//let newVar = myVar ?? 45
//
//print(newVar)

import Foundation
/*
//Múltiples Closures en una función
enum BackendError {
    case customError
}

func getDataFromBackend(status: String,
                        onSuccess: () -> Void,
                        onFailure:(BackendError) -> Void) {
    if status == "OK" {
        onSuccess()
    } else {
        onFailure(.customError)
    }
}

getDataFromBackend(status: "here", onSuccess: {
    print("Todo OK")
}) { (error) in
    print("Error \(error)")
}


func makeIncrementer(forIncrement amount: Int) -> () -> Int {
    var runningTotal = 0
    func incrementer() -> Int {
        runningTotal += amount
        return runningTotal
    }
    return incrementer
}

let incrementByTen = makeIncrementer(forIncrement: 10)
incrementByTen()
incrementByTen()
incrementByTen()


func travel(action: (String) -> String) {
    print("I'm getting ready to go.")
    let description = action("London")
    print(description)
    print("I arrived!")
}

travel { (place: String) -> String in
    return "I'm going to \(place) in my car"
}

travel { place in
    return "I'm going to \(place) in my car"
}

travel {
    "I'm going to \($0) in my car"
}

func travel(action: (String, Int) -> String) {
    print("I'm getting ready to go.")
    let description = action("London", 60)
    print(description)
    print("I arrived!")
}

travel {
    "I'm going to \($0) at \($1) miles per hour."
}
 

func buyDevices(name: String, count: Int, configurator: () -> String) {
    print("I'm buying \(count)x\(name).")
    for _ in 0..<count {
        let configuredDevice = configurator(name)
        print(configuredDevice)
    }
}
 
func travel() -> (String) -> Void {
    return {
        print("I'm going to \($0)")
    }
}

let result = travel()
result("London")

let result2 = travel()("London")

*/
func makeCodeGenerator(language: String) -> () -> Void {
    if language == "Swift" {
        return "Swift rocks! \(languaje)"
    } else {
        return "Other languages are pretty great too! \(languaje)"
    }
}
let generator = makeCodeGenerator(language: "Swift")
generator()

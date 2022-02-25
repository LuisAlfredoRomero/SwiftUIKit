import Foundation

func loadData(input: () -> String) {
    print("Loading...")
    let str = input()
    print("Loaded: \(str)")
}
loadData {
    return "He thrusts his fists against the posts"
}

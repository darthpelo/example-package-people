public enum Gender: String {
    case Male, Female, Other
}

public struct Person {
    let name: String
    let age: Int
    let gender: Gender
    let height: Float
    
    public init(name: String, age: Int, gender: Gender, height: Float) {
        self.name = name
        self.age = age
        self.gender = gender
        self.height = height
    }
}

extension Person: Equatable {}

public func ==(lhs: Person, rhs: Person) -> Bool {
    return lhs.age == rhs.age && lhs.gender == rhs.gender && lhs.height == rhs.height
}

extension Person: Comparable {}

public func <(lhs: Person, rhs: Person) -> Bool {
    return lhs.age < rhs.age
}

protocol Reproductable {
    func reproduce(with person: Person) -> Person?
}

extension Person: Reproductable {
    public func reproduce(with person: Person) -> Person? {
        if self != person {
            return Person(name: "Sara", age: 0, gender: .Female, height: 0.4)
        } else {
            return nil
        }
    }
}

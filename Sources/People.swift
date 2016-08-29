protocol Human {
    var gender: Gender { get set }
}

public enum Gender: String {
    case Male, Famle, Other
}

extension Human {
   public func genderType() -> Gender {
       return gender
   } 
}

public struct Anagram {
    public func match(_ possibleMatches: [String]) -> [String] {
        let normalizedWord = word.lowercased()
        
        let matches = possibleMatches.filter { possibleMatch in
            let normalizedPossibleMatch = possibleMatch.lowercased()
            
            if normalizedWord == normalizedPossibleMatch {
                return false
            }
               
            return normalizedWord.sorted() == normalizedPossibleMatch.sorted()
        }
        
        return matches
    }
    
    private let word: String
    
    public init(word: String) {
        self.word = word
    }
}

func insertionSort(words: inout [String]) {
    if words.count <= 1 {
        return 
    }
    
    for i in 0 ..< words.count {
        let value = words[i]
        var j = i - 1 
        while j >= 0 && value < words[j] { 
            words[j + 1] = words[j]
            j -= 1
        }
        words[j + 1] = value                
    }
    return
}

func main() {
    var wordsList : [String] = []
    while let input = readLine() {
        wordsList.append(input)
    }
    insertionSort(words: &wordsList)
    for word in wordsList {
        print(word)
    }
}

main()

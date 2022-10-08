var wordsList : [String] = []
while let input = readLine() {
    wordsList.append(input)
}

func insertionSort(arr: inout [String]) -> [String] {
    if arr.count == 1 {
        return arr
    }
    
    for i in 0 ..< arr.count {
        let value = arr[i]
        var j = i - 1 
        while j >= 0 && value < arr[j] { 
            arr[j + 1] = arr[j]
            j -= 1
        }
        arr[j + 1] = value                
    }
    return arr
}
let sortedWords = insertionSort(arr: &wordsList)



// ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
let unsortedIntegers = [5, 1, 4, 2, 8]
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
// ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧


// Add your code below:


func insertionSort(unsortedIntegers: [Int]) {
    var sortedIntegers = unsortedIntegers
    var pass = 0
    var swaps = 0
    var swapsTotal = 0

    for i in 0 ..< sortedIntegers.count {

        let value = sortedIntegers[i]

        var j = i - 1 // j initialy references the index prior to i
        
        swaps = 0
        while j >= 0 && value < sortedIntegers[j] { // Identify if elements are unsorted, but do not go out of range, if they are unsorted, find its correct index in the sorted array by continually swapping
            sortedIntegers[j + 1] = sortedIntegers[j] // sets current value to prior value
            j -= 1
            swaps += 1
            swapsTotal += 1
        }
        sortedIntegers[j + 1] = value // sets the prior value to the current value
        
        print("Pass: \(pass), Swaps: \(swaps)/\(swapsTotal), Array: \(sortedIntegers)")
        pass += 1
        
    }
}
insertionSort(unsortedIntegers: unsortedIntegers)

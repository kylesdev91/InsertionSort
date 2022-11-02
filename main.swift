func readWords(words:inout [String]) {
    while let line = readLine() {
        words.append(line)
    }
}

func sort(words: inout [String]) {
    var index = 0
    var swapQty = 0
    var swapSum = 0
    var previousSwap = 0


    while index < words.count {
        while index - previousSwap > -1 {
            if words[index] < words[index - previousSwap] {
                swapQty += 1
                previousSwap += 1
            } else {
                break
            }
        }

        if swapQty > 0 {
            words.insert(words[index], at: index - previousSwap + 1)
            words.remove(at: index+1)
        }

        swapSum += swapQty
        index += 1
        swapQty = 0
        previousSwap = 1
    }
}

func main() {
    var words = [String]()
    readWords(words: &words)
    sort(words: &words)
    for word in words {
        print(word)
    }
}

main()

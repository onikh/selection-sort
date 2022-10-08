
var array = [String]()

var line : String?
repeat {
    line = readLine()
    if line != nil {
        array.append(line!.lowercased())
    }
} while line != nil



var pass = 0
var totalSwaps = 0
var swaps = 0
var arrayList = ""


for index in 0..<array.count {

    print("Pass:", "\(pass),", "Swaps:", "\(swaps)/\(totalSwaps),", "Array:", array.description, terminator:"")
    print("")

    swaps = 0


//    var least = array[index]
    var indexToSave = index

    for index2 in index..<array.count {
        if array[index2] < array[indexToSave] {
            indexToSave = index2
        }
    
    }

    array.swapAt(index, indexToSave)
    totalSwaps += 1
    swaps += 1
    pass += 1

}




func selection_sort(_ arr: inout [Int]) {
    let n = arr.count
    for i in 0..<n {
        var minIndex = i
        for j in (i + 1)..<n {
            if arr[j] < arr[minIndex] {
                minIndex = j
            }
        }
        if minIndex != i {
            arr.swapAt(i, minIndex)
        }
    }
}

func bubble_sort(_ arr: inout [Int]) {
    var n = arr.count
    var swapped: Bool
    repeat {
        swapped = false
        for i in 0..<n-1 {
            if arr[i] > arr[i + 1] {
                arr.swapAt(i, i + 1)
                swapped = true
            }
        }
        n -= 1
    } while swapped
}

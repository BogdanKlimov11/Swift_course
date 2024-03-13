func merge(_ arr: inout [Int], left: Int, mid: Int, right: Int) {
    let n1 = mid - left + 1
    let n2 = right - mid

    var L = Array(repeating: 0, count: n1)
    var R = Array(repeating: 0, count: n2)

    for i in 0..<n1 {
        L[i] = arr[left + i]
    }
    for j in 0..<n2 {
        R[j] = arr[mid + 1 + j]
    }

    var i = 0
    var j = 0
    var k = left
    while i < n1 && j < n2 {
        if L[i] <= R[j] {
            arr[k] = L[i]
            i += 1
        } else {
            arr[k] = R[j]
            j += 1
        }
        k += 1
    }

    while i < n1 {
        arr[k] = L[i]
        i += 1
        k += 1
    }

    while j < n2 {
        arr[k] = R[j]
        j += 1
        k += 1
    }
}

func merge_sort(_ arr: inout [Int], left: Int, right: Int) {
    if left < right {
        let mid = (left + right) / 2
        merge_sort(&arr, left: left, right: mid)
        merge_sort(&arr, left: mid + 1, right: right)
        merge(&arr, left: left, mid: mid, right: right)
    }
}

/*

An array A consisting of N integers is given. Rotation of the array means that each element is shifted right by one index, and the last element of the array is moved to the first place. For example, the rotation of array A = [3, 8, 9, 7, 6] is [6, 3, 8, 9, 7] (elements are shifted right by one index and 6 is moved to the first place).

The goal is to rotate array A K times; that is, each element of A will be shifted to the right K times.

Write a function:

public func solution(_ A : inout [Int], _ K : Int) -> [Int]

that, given an array A consisting of N integers and an integer K, returns the array A rotated K times.

For example, given

    A = [3, 8, 9, 7, 6]
    K = 3
the function should return [9, 7, 6, 3, 8]. Three rotations were made:

    [3, 8, 9, 7, 6] -> [6, 3, 8, 9, 7]
    [6, 3, 8, 9, 7] -> [7, 6, 3, 8, 9]
    [7, 6, 3, 8, 9] -> [9, 7, 6, 3, 8]
For another example, given

    A = [0, 0, 0]
    K = 1
the function should return [0, 0, 0]

Given

    A = [1, 2, 3, 4]
    K = 4
the function should return [1, 2, 3, 4]

Assume that:

N and K are integers within the range [0..100];
each element of array A is an integer within the range [−1,000..1,000].
In your solution, focus on correctness. The performance of your solution will not be the focus of the assessment.

*/

public func cyclicRotation(_ A : inout [Int], _ K : Int) -> [Int] {
    print("initialArray:\(A)")
    if A.count == 0 {
        return A
    }
    
    for _ in 0..<K {
        A.insert(A.removeLast(), at: 0)
        print(A)
    }
    print("finalArray:\(A)")
    return A
}

var sampleArray = [3, 8, 9, 7, 6]
let setIndex = 3
let result = cyclicRotation(&sampleArray, setIndex)

/*
prints
initialArray:[3, 8, 9, 7, 6]
[6, 3, 8, 9, 7]
[7, 6, 3, 8, 9]
[9, 7, 6, 3, 8]
finalArray:[9, 7, 6, 3, 8]


*/


//2nd solution
public func cyclicRotation(_ A : inout [Int], _ K : Int) -> [Int] {
    print("initialArray:\(A)")
    if A.count == 0 {
        return A
    }
    
    let size = A.count
    print("size:\(size)")
    
    var ret =  Array(repeating: 0, count: size)
    print("intial ret:\(ret)")
    
    for x in 0..<size {
        print("x:\(x),K:\(K), and size:\(size)")
        print ("inProgress:\((x + K) % size)")
        print("A[x]:\(A[x])")
        ret[(x + K) % size] = A[x]
        print("workingArray:\(ret)")
    }
    
    print("finalArray:\(ret)")
    return ret
}

var sampleArray = [3, 8, 9, 7, 6]
let setIndex = 3
let result = cyclicRotation(&sampleArray, setIndex)


/*
print

initialArray:[3, 8, 9, 7, 6]
size:5
intial ret:[0, 0, 0, 0, 0]
x:0,K:3, and size:5
inProgress:3
A[x]:3
workingArray:[0, 0, 0, 3, 0]
x:1,K:3, and size:5
inProgress:4
A[x]:8
workingArray:[0, 0, 0, 3, 8]
x:2,K:3, and size:5
inProgress:0
A[x]:9
workingArray:[9, 0, 0, 3, 8]
x:3,K:3, and size:5
inProgress:1
A[x]:7
workingArray:[9, 7, 0, 3, 8]
x:4,K:3, and size:5
inProgress:2
A[x]:6
workingArray:[9, 7, 6, 3, 8]
finalArray:[9, 7, 6, 3, 8]

*/

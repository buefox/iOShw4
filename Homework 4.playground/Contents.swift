
print ("Problem 1.")
var ans = 0
for i in 0...7{
    for j in 0...7{
        ans += i * j
    }
}
print (ans)

print ("Problem 2.")
ans = 0
for i in 0...7{
    for j in 0...7 where j % 2 == 1{
        ans += i * j
    }
}
print (ans)

print ("Problem 3.")
ans = 0
for i in 0...7{
    for j in 0...7 where j <= i{
        ans += i * j
    }
}
print (ans)

print ("Problem 4.")
func multipliers(start:Int, end:Int, step:Int) -> Int {
    var ans = 0
    for i in start...end{
        if i % step == 0{
            ans += i
        }
    }
    return ans
}

print (multipliers(1, end:10, step:1))

print ("Problem 5.")
func non_multipliers(start:Int, end:Int, step:Int) -> Int {
    var ans = 0
    for i in start...end{
        if i % step != 0{
            ans += i
        }
    }
    return ans
}

print (non_multipliers(1, end:10, step:1))

print ("Problem 6.")
func odd_row(rows:Int, columns:Int) -> Int {
    var ans = 0;
    for i in 0..<rows where i % 2 == 1{
        for j in 0..<columns{
            ans += i * j
        }
    }
    return ans
}

print (odd_row(8, columns: 8))

print ("Problem 7.")
func row_bigger(rows:Int, columns:Int) -> Int {
    var ans = 0;
    for i in 0..<rows{
        for j in 0..<columns where i >= j{
            ans += i * j
        }
    }
    return ans
}

print (row_bigger(8, columns: 8))

print ("Problem 8.")
func fahr_cel(f:Int) -> Double {
    return (5*(Double(f) - 32) / 9)
}

print (fahr_cel(100))

print ("Problem 9.")
func odd_even(arr:[Int]) -> ([Int], [Int]) {
    var odd = [Int]()
    var even = [Int]()
    for num in arr{
        if(num % 2 == 1){
            odd.append(num)
        }
        else{
            even.append(num)
        }
    }
    return (odd, even)
}

print (odd_even([1,2,3,4,5,6,7,8,9,0]))
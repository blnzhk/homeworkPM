
import Foundation


class Homework {

    // MARK: Task1
    // Task1: Implement factorial: 1) recursion; 2) iteration

    // 1) Recursion
    private static func calucalteFactorialRecursion (_ n: Int) -> Int {
        if n == 1 {
            return 1
        }
        return calucalteFactorialRecursion (n - 1 ) * n
    }
    
    static func factorialRecursion (_ n: Int) {
        print(calucalteFactorialRecursion(n))
    }
    
    // 2) Iteration
    static func factorialIteration (_ n: Int) -> Int {
        var result: Int = 1
        for i in 2...n {
            result *= i
        }
        print(result)
        return result
    }
    
    // MARK: Task2
    // Task2: Output Fibonaci sequence till specified N
    
    // 1) Recursion
    private static var arrayFibonaci: [Int] = []
    
    private static func calucalteFibonaciRecursion (_ n: Int) -> Int {
        if n == 1 || n == 2 {
            arrayFibonaci.append(1)
            return 1
        }
        
        var param1: Int
        var param2: Int
        
        if arrayFibonaci.count >= n - 2 {
            param2 = arrayFibonaci[n - 3]
        } else {
            param2 = calucalteFibonaciRecursion(n - 2)
        }
        
        if arrayFibonaci.count >= n - 1 {
            param1 = arrayFibonaci[n - 2]
        } else {
            param1 = calucalteFibonaciRecursion(n - 1)
        }
        
        let tmp = param1 + param2
        arrayFibonaci.append(tmp)
        return tmp

    }
    
    static func fibonacciRecursion(_ n: Int) {
        arrayFibonaci.removeAll()
        calucalteFibonaciRecursion(n)
        print(arrayFibonaci)
        
    }
        
    // 2) Iteration
    static func fibonaciIteration (_ n: Int) -> [Int] {
        var fib: [Int] = []
        for _ in 1...2 {
            fib.append(1)
        }
        for i in 2...n - 1 {
            fib.append(fib[i - 1] + fib[i - 2] )
        }
        print(fib)
        return fib
    }
    
    // MARK: Task3
    // Task3: Find N digit of Pi number fraction
    
    static func findNInPiByArray (_ n: Int) -> [Int] {
        
        let piFract = Double.pi.truncatingRemainder(dividingBy: 1)
        var arrayPi = String(piFract).compactMap { Int(String($0))}
        arrayPi.remove(at: 0)
        print(arrayPi[n - 1])
        return arrayPi
    }
    
    static func findNInPi (_ n: Int) -> Int {
        
        var fractPi = Double.pi.truncatingRemainder(dividingBy: 1)
        for _ in 1...(n - 1) {
            if n == 1 {
                return 1
            }
            fractPi *= 10
            fractPi = fractPi.truncatingRemainder(dividingBy: 1)
        }
        fractPi *= 10
        let result: Int = Int(floor(fractPi))
        print(result)
        return result
    }


}

Homework.fibonacciRecursion(8)
Homework.fibonaciIteration(8)
Homework.factorialRecursion(5)
Homework.factorialIteration(5)
Homework.findNInPiByArray(12)
Homework.findNInPi(12)

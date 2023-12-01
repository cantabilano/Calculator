//
//  ContentView.swift
//  Calculator with class
//
//  Created by t2023-m0006 on 11/29/23.
//
import Foundation

class Calculator {
    /*강제 해제(Force Unwrapping)되지 않는 옵셔널 초기화
      옵셔널 타입을 가진 속성은 선언과 동시에 초기화되거나 나중에 값을 할당할 수 있다.
     */
 var firstNumber : Double?
 var secondNumber : Double?

        //덧셈
        func AddOperation(_ firstNumber: Int, _ secondNumber: Int) -> Double {
            return firstNumber + secondNumber
        }
        
        //뺄샘
        func SubtractOperation(_ firstNumber: Int, _ secondNumber: Int) -> Double {
            return firstNumber - secondNumber
        }
        
        //곱셉
        func MultiplyOperation(_ firstNumber: Double, _ secondNumber: Double) -> Double {
            return firstNumber * secondNumber
        }
        
        //나눗셈
        func DivideOperation(_ firstNumber: Double, _ secondNumber: Double) -> Double? {
            guard secondNumber != 0 else {
                print("0으로 나눌 수 없어요.")
                return nil
            }
            return firstNumber / secondNumber
        }
        /*
        //나머지
        func remain(_ firstNumber: Int, _ secondNumber: Int) -> Int {
            return firstNumber % secondNumber
        } */
    
}
//덧셈 연산 클래스 + 부모 매소드
/*
 - keyword `super`
     - **`super`** 키워드는 자식 클래스에서 부모 클래스의 메서드, 속성 또는 초기화 메서드를 호출할 때 사용됩니다.
     - 부모 클래스의 메서드를 호출하거나 부모 클래스의 초기화 메서드를 호출하는 데 사용됩니다.
     - **`super.method()`** 또는 **`super.property`*와 같이 사용하여 부모 클래스의 기능을 호출할 수 있습니다.
 */
class AddOperation: Calculator {
    
    func operate(_ firstNumber: Double, _ secondNumber: Double) -> Double {
        return super.AddOperation(firstNumber, secondNumber)
    }
}

// 뺄셈 연산 클래스
class SubtractOperation: Calculator {
    func operate(_ firstNumber: Double, _ secondNumber: Double) -> Double {
        return super.SubtractOperation(firstNumber, secondNumber)
    }
}

// 곱셈 연산 클래스
class MultiplyOperation: Calculator {
    func operate(_ firstNumber: Double, _ secondNumber: Double) -> Double {
        return super.MultiplyOperation(firstNumber, secondNumber)
    }
}

// 나눗셈 연산 클래스
class DivideOperation: Calculator {
    func operate(_ firstNumber: Double, _ secondNumber: Double) -> Double? {
        return super.DivideOperation(firstNumber, secondNumber)
    }
}

let calculator = Calculator()


let addOperation = AddOperation()
let addResult = addOperation.operate(45, 23)

let subtractOperation = SubtractOperation()
let subtractResult = subtractOperation.operate(523, 323)

let multiplyOperation = MultiplyOperation()
let multiplyResult = multiplyOperation.operate(532, 2)

let divideOperation = DivideOperation()
let divideResult = divideOperation.operate(100, 2)


print("addResult : \(addResult)")
print("subtractResult : \(subtractResult)")
print("multiplyResult : \(multiplyResult)")
print("divideResult : \(divideResult)")

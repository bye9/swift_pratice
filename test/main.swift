//
//  main.swift
//  test
//
//  Created by JeongHwan Seok on 2020/11/12.
//

import Swift
//상수명(변수명): 데이터타입 = 초기화
let constant: String = "차후에 변경 불가능한 상수"
var variable: String = "차후에 변경 가능한 변수"

variable = "변수 변경"

let sum: Int
let inputA: Int = 100
let inputB: Int = 200

sum = inputA + inputB
print(sum)

var nickName: String

nickName = "bye9"
print(nickName)
nickName = "bye1"
print(nickName)
//2data type

var someBool: Bool = true
someBool = false

var someInt: Int = -100

var someUInt: UInt = 100

var someFloat: Float = 3.14

var someDouble: Double = 3.14
//someDouble = someFloat

var someCharacter: Character = "h"

var someString: String = "하하하"
someString = someString + "웃어요!"
print(someString)
//someString = someCharacter

let integer = 100
print(type(of: integer))
let floatingPoint = 12.34
print(type(of: floatingPoint))
let apples = "A"
print(type(of: apples))

//3any,nil
var someAny: Any = 100
someAny = "어떤 타입도 수용 가능"
someAny = 123.12

//let someDouble: Double = someAny
class SomeClass {}
var someAnyObject: AnyObject = SomeClass()
//someAnyObject = 123.12
//someAny = nil


//4array
var integers: Array<Int> = Array<Int>()
integers.append(1)
integers.append(100)
//integers.append(101.1)

print(integers.contains(100))
print(integers.contains(99))

integers.remove(at: 0)
integers.removeLast()
integers.removeAll()

print(integers.count)

var doubles: Array<Double> = [Double]()
var strings: [String] = [String]()
var characters: [Character] = []

let immutableArray = [1, 2, 3]

//key, value
var anyDictionary: Dictionary<String, Any> = [String: Any]()
anyDictionary["someKey"] = "value"
anyDictionary["anotherKey"] = 100
print(anyDictionary)
anyDictionary["someKey"] = "dictionary"

anyDictionary.removeValue(forKey: "anotherKey")
anyDictionary["someKey"] = nil
print(anyDictionary)

let emptyDictionary: [String: String] = [:]
let initalizedDictionary: [String: String] = ["name": "jeonghwan", "gender": "male"]
//불확실성 let someValue: String = initalizedDictionary["name"]

var integerSet: Set<Int> = Set<Int>()
integerSet.insert(1)
integerSet.insert(100)
integerSet.insert(99)
integerSet.insert(99)

print(integerSet.contains(1))
integerSet.remove(100)
integerSet.removeFirst()
print(integerSet.count)

let setA: Set<Int> = [1, 2, 3, 4, 5]
let setB: Set<Int> = [3, 4, 5, 6, 7]

let union: Set<Int> = setA.union(setB)
let sortedUnion: [Int] = union.sorted()
let intersection: Set<Int> = setA.intersection(setB) //교집합
let subtracting: Set<Int> = setA.subtracting(setB)  //차집합

//5function
func sum(a: Int, b: Int) -> Int {
    return a + b
}

func printMyName(name: String) -> Void {
    print(name)
}

func printYourName(name: String) {
    print(name)
}

func maximumIntegerValue() -> Int {
    return Int.max
}

print(sum(a: 3, b: 5))
printMyName(name: "jeonghwan")
printYourName(name: "hana")
print(maximumIntegerValue())

//8함수 고급
func greeting(friend: String, me: String = "bye9") {
    print("Hello \(friend)! I'm \(me)")
}

//매개변수 기본값을 가지는 매개변수는 생략 가능
greeting(friend: "hana") //Hello hana! I'm bye9
greeting(friend: "john", me: "eric")

//전달인자 레이블
//함수 내부 : 매개변수 이름 사용
func greeting(to friend: String, from me: String) {
    print("Hello \(friend)! I'm \(me)")
}
//함수 외부 : 전달 인자 레이블 사용
greeting(to: "hana", from: "bye9")

//가변 매개변수
func sayHelloToFriends(me: String, friends: String...) -> String {
    return "Hello \(friends)! I'm \(me)!"
}

print(sayHelloToFriends(me: "bye9", friends: "hana", "eric"))
print(sayHelloToFriends(me: "bye9"))

//데이터 타입으로서의 함수 사용 가능
var someFunction: (String, String) -> Void = greeting(to:from:)
someFunction("eric", "bye9")

someFunction = greeting(friend:me:)
someFunction("eirc", "bye9")

func runAnother(function: (String, String) -> Void) {
    function("jenny", "mike")
}

runAnother(function: greeting(friend:me:))
runAnother(function: someFunction)

//9조건문
let someInteger = 100

if someInteger < 100 {
    print("100미만")
} else if someInteger > 100 {
    print("100 초과")
} else {
    print("100")
}
//if someInteger {} 안대요. 항상 bool 타입

switch someInteger {
case 0:
    print("zero")
case 1..<100: //1이상 100미만
    print("1~99")
case 100:
    print("100")
case 101...Int.max: //101이상
    print("over 100")
default:
    print("unknown")
}

switch "bye9" {
case "jake", "john":
    print("jake")
    //fallthrough 자동으로 break걸리는걸 안걸리게
case "mina":
    print("mina")
case "bye9":
    print("bye9!!!")
default:
    print("unknown")
}

//10반복문
var integerss = [1, 2, 3]
let people = ["bye9": 10, "eric": 15, "mike": 12]

for integer in integerss {
    print(integer)
}

for (name, age) in people {
    print("\(name): \(age)")
}

while integerss.count > 1 {
    integerss.removeLast()
}

repeat {
    integerss.removeLast()
} while integerss.count > 0

//11옵셔널 값이 있을 수도, 없을 수도 있다.
func someFunction(someOptionalParam: Int?) {
    // ...
}
func someFunction(someParam: Int) {
    // ...
}

someFunction(someOptionalParam: nil)
//someFunction(someParam: nil)
 
//암시적 추출 옵셔널
var optionalValue: Int! = 100

switch optionalValue {
case .none: //값이 없다면
    print("This Optional variable is nil")
case .some(let value):
    print("Value is \(value)")
}

optionalValue = optionalValue + 1
optionalValue = nil
//optionalValue = optionalValue + 1

//물음표를 이용한 옵셔널
//optionalValue = optionalValue + 1 연산불가

//12옵셔널 추출
//1. 옵셔널 바인딩
//_는 인자이름 생략
func printName(_ name: String) {
    print(name)
}

var myName: String! = nil

if let name: String = myName { //nil이 아닐 때 실행
    printName(name)
} else {
    print("myName == nil")
}

var myName2: String? = "bye9"
var yourName: String? = nil

if let name = myName2, let friend = yourName {
    print("\(name) and \(friend)")
}
//yourName이 nil이기 때문에 실행x

yourName = "hana"

if let name = myName2, let friend = yourName {
    print("\(name) and \(friend)")
}

//2. 강제추출
printName(myName2!) //bye9
myName2 = nil
//print(myName2!) 런타임 오류

let someInteger2 = 50

switch someInteger2 {
case 0:
     print("zero")
case 1..<100:
     print("1~99")
case 50:
     print("50")
default:
    print("error")
}

//13구조체-값타입
//구조체와 클래스는 프로그래머가 데이터를 용도에 맞게 묶어 표현하고자 할 때 용이합니다. 프로퍼티와 메서드를 사용하여 구조화된 데이터와 기능을 가질 수 있습니다.
//프로퍼티는 구조체 안의 인스턴스 변수라고 생각, 메소드는 구조체 안의 함수
//프로퍼티=속성, 메소드=행동
/* 인스턴스(instance)는 해당 클래스의 구조로 컴퓨터 저장공간에서 할당된 실체를 의미한다. 여기서 클래스는 속성과 행위로 구성된 일종의 설계도이다. OOP에서 객체는 클래스와 인스턴스를 포함한 개념 */
struct Sample {
    //인스턴스 프로퍼티
    var mutableProperty: Int = 100
    let immutableProperty: Int = 100
    //타입 프로퍼티 (static은 오버라이드 안됨) - 오버라이드란? 부모 클래스의 기능을 변경
    static var typeProperty: Int = 100
    
    func instanceMethod() {
        print("instance method")
    }
    static func typeMethod() {
        print("type method")
    }
}
//가변 인스턴스 -> 인스턴스 생성 후 내부 접근 가능
var mutable: Sample = Sample()
mutable.mutableProperty = 200

let immutable: Sample = Sample()
//immutable.mutableProperty = 140

//타입 프로퍼티, 메소드 -> 바로 클래스명.() 로 접근 가능(Sample이라는 타입 자체에서 사용 가능)
Sample.typeProperty = 300
Sample.typeMethod()

//mutable.typeProperty = 400

struct Student {
    var name: String = "unknown"
    var `class`: String = "Swift" //`는 이스케이프 문자처럼 사용
    //타입 메서드
    static func selfIntroduce() {
        print("학생타입입니다.")
    }
    //인스턴스 메서드
    func selfIntroduce() {
        print("저는 \(self.class)반 \(name)입니다.")
    }
}

Student.selfIntroduce()

var bye9: Student = Student()
bye9.name = "bye9"
bye9.class = "스위프트"
bye9.selfIntroduce()

let jina: Student = Student()
//불변 인스턴스이므로 프로퍼티 값 변경 불가
//jina.name = "jina"
jina.selfIntroduce() //메소드는 호출가능


//14클래스-참조타입
class ClassSample {
    var mutableProperty:Int = 100 //가변 프로퍼티
    let immutableProperty:Int = 100 //불변 프로퍼티
    static var typeProperty:Int = 100 //타입 프로퍼티
    //인스턴스 메소드
    func instanceMethod() {
        print("instance method")
    }
    //타입 메소드
    static func typeMethod() { //재정의 불가 타입
        print("type method-static")
    }
    class func classMethod() { //재정의 가능 타입
        print("type method-class")
    }
}
//인스턴스 생성(모두가 가변 프로퍼티 변경 가능
var mutableReference: ClassSample = ClassSample()
mutableReference.mutableProperty = 200
let immutableReference: ClassSample = ClassSample()
immutableReference.mutableProperty = 200

ClassSample.typeProperty = 300
ClassSample.typeMethod()

class Student2 {
    var name: String = "unknown"
    var `class`: String = "Swift"
    
    class func selfIntroduce() {
        print("학생타입입니다")
    }
    //self키워드는 클래스나 구조체 자신을 가리킬 때 사용
    func selfIntroduce() {
        print("저는 \(self.class)반 \(name)입니다.")
    }
}

Student2.selfIntroduce() //학생타입입니다.

var daechan: Student2 = Student2()
daechan.name = "김대찬"
daechan.class = "자료구조"
daechan.selfIntroduce() //저는 자료구조반 김대찬입니다.

//구조체와 달리 let으로 인스턴스 선언해도 변경가능
let dragoncloud: Student2 = Student2()
dragoncloud.name = "장용운"
dragoncloud.class = "토익600"
dragoncloud.selfIntroduce() //저는 토익600반 장용운입니다.
//클래스,구조체,열거형에 포함되어있는 함수를 메소드라고 함. 따라서 함수가 범위가 큰 것임.

//15열거형
//각 case는 그 자체가 고유의 값
enum Weekday {
    case mon
    case tue
    case wed
    case thu, fri, sat, sun
}

var day: Weekday = Weekday.mon
//타입 생략 가능
day = .sun

//이 중에서 하나라도 빼먹으면 default를 꼭 구현해줘야함.
switch day {
case .mon, .tue, .wed, .thu:
    print("평일입니다.")
case Weekday.fri:
    print("불금 파티!!!")
case .sat, .sun:
    print("신나는 주말")
}

//c언어의 enum처럼 정수값을 가질 수도 있음.
//case별로 각각 다른 값을 가져야 함.
enum Fruit: Int {
    case apple = 0
    case grape = 1
    case peach //자동으로 1씩 증가해서 2
}

print("Fruit.peach.rawValue== \(Fruit.peach.rawValue)")

//다른 원시값인 문자열도 가능
enum School: String {
    case elementary = "초등"
    case middle = "중등"
    case high = "고등"
    case university
}

print("School.middle.rawValue == \(School.middle.rawValue)")
print("School.university.rawValue == \(School.university.rawValue)")

//해당하는 case가 없을수도있으므로 옵셔널 타입사용
//let apple: Fruit = Fruit(rawValue: 0)
let apple: Fruit? = Fruit(rawValue: 0)

if let orange: Fruit = Fruit(rawValue: 5) {
    print("rawValue 5에 해당하는 케이스는 \(orange)입니다.")
} else {
    print("rawValue 5에 해당하는 케이스가 없습니다")
}

//열거형안에 메소드 가능
enum Month {
    case dec, jan, feb
    case mar, apr, may
    case jun, jul, aug
    case sep, oct, nov
    
    func printMessage() {
        switch self {
        case .mar, .apr, .may:
            print("따스한 봄~")
        case .jun, .jul, .aug:
            print("여름 더워요")
        case .sep, .oct, .nov:
            print("가을은 독서의 계절")
        case .dec, .jan, .feb:
            print("추운 겨울")
        }
    }
}

Month.mar.printMessage()

//16클래스 vs 구조체/열거형
//참조 타입 - 값 타입
//데이터를 전달할 때 값의 메모리 위치를 전달 - 데이터를 전달할 때 값을 복사하여 전달
//상속 가능 - 상속 불가능
struct ValueType {
    var property = 1
}
class ReferenceType {
    var property = 1
}
let firstStructInstance = ValueType()
var secondStructInstance = firstStructInstance
secondStructInstance.property = 2

print("first stuct instance property : \(firstStructInstance.property)") //1
print("second struct instance property : \(secondStructInstance.property)") //2

let firstClassReference = ReferenceType()
var secondClassReference = firstClassReference
secondClassReference.property = 2

print("first class reference property : \(firstClassReference.property)") //2
print("second class reference property : \(secondClassReference.property)") //2

//구조체는 값 타입이라 복사한 값이라 원래 값 변경 안됨.
struct SomeStruct {
    var someProperty: String = "Property"
}

var someStructInstance: SomeStruct = SomeStruct()

func someFunction2(structInstance: SomeStruct) {
    var localVar: SomeStruct = structInstance
    localVar.someProperty = "ABC"
}

someFunction2(structInstance: someStructInstance)
print(someStructInstance.someProperty) //property

//클래스는 참조타입 -> 원래 값 변경 됨.
class SomeClass2 {
    var someProperty: String = "Property"
}

var someClassInstance: SomeClass2 = SomeClass2()

func someFunction(classInstance: SomeClass2) {
    var localVar: SomeClass2 = classInstance
    localVar.someProperty = "ABC"
}

someFunction(classInstance: someClassInstance)
print(someClassInstance.someProperty) //abc

//17클로저 기본
//클로저는 실행가능한 코드 블럭(함수는 이름이 있는 클로저)
func sumFunction(a: Int, b: Int) -> Int {
    return a+b
}

var sumResult: Int = sumFunction(a: 1, b: 2)
print(sumResult) //3

//클로저의 사용
var sum2: (Int, Int) -> Int = { (a: Int, b: Int) -> Int in
    return a + b
}

sumResult = sum2(1, 2)
print(sumResult) //3

//sum2변수에도 함수할당 가능
sum2 = sumFunction(a:b:)
sumResult = sum2(1, 2)
print(sumResult) //3

//함수의 전달인자로서의 클로저 사용 {}
let add: (Int, Int) -> Int
add = { (a: Int, b: Int) -> Int in
    return a+b
}
let substract: (Int, Int) -> Int
substract = { (a: Int, b: Int) -> Int in
    return a-b
}
let divide: (Int, Int) -> Int
divide = { (a: Int, b: Int) -> Int in
    return a/b
}

//method라는 이름으로 클로저를 넘겨준다.
func calculate(a: Int, b: Int, method: (Int, Int) -> Int) -> Int {
    return method(a, b)
}

var calculated: Int
calculated = calculate(a: 50, b: 10, method: add)
print(calculated) //60

calculated = calculate(a: 50, b: 10, method: { (left: Int, right: Int) -> Int in
    return left * right
})
print(calculated) //500

//18클로저 고급
var result: Int
//후행 클로저 - 클로저가 함수의 마지막 전달인자일 때, 마지막 매개변수 이름 생략 가능
result = calculate(a: 10, b: 10) { (left: Int, right: Int) -> Int in
    return left + right
}

print(result) //20

//반환타입 생략(calculate 함수의 method 매개변수는 Int 타입을 반환할 것이라는 사실을 알기 때문에)
result =  calculate(a: 10, b: 10) { (left: Int, right: Int) in
    return left + right
}

//단축 인자이름
result = calculate(a: 10, b: 10, method: {
    return $0 + $1
})
print(result) //20

result = calculate(a: 10, b: 10) {
    return $0 + $1
}

//암시적 반환 표현
result = calculate(a: 10, b: 10) {
    $0 + $1
}
//한 줄 가능
result = calculate(a: 10, b: 10) { $0 + $1 }

//축약 전 후
result = calculate(a: 10, b: 10, method: { (left: Int, right: Int) -> Int in
    return left + right
})

result = calculate(a: 10, b: 10) { $0 + $1 }

//19프로퍼티
//프로퍼티는 구조체, 클래스, 열거형 내부에 구현 가능
//저장, 연산, 인스턴스, 타입 프로퍼티
struct Student3 {
    //인스턴스 저장 프로퍼티
    var name: String = ""
    var `class`: String = "Swift"
    var koreanAge: Int = 0
    
    //인스턴스 연산 프로퍼티
    var westernAge: Int {
        get {
            return koreanAge - 1
        }
        set(inputValue) {
            koreanAge = inputValue + 1
        }
    }
    
    //타입 저장 프로퍼티
    static var typeDescription: String = "학생"
    
    
    /*
     //인스턴스 메소드
     func selfIntroduce() {
        print("저는 \(self.class)반 \(name)입니다")
     }
     */ //대체가능
    
    //읽기전용 인스턴스 연산 프로퍼티
    var selfIntroduction: String {
        get {
            return "저는 \(self.class)반 \(name)입니다"
        }
    }
    
    /*
     //타입 메소드
     static func selfIntroduce() {
        print("학생타입입니다")
     }
     */
    
    //읽기전용 타입 연산 프로퍼티
    //읽기전용 시 get 생략가능
    static var selfIntroduction: String {
        return "학생타입입니다."
    }
}
//타입 연산 프로퍼티 사용
print(Student3.selfIntroduction)
//학생타입입니다

//인스턴스 생성
var yagom: Student3 = Student3()
yagom.koreanAge = 10

//인스턴스 저장 프로퍼티 사용
yagom.name = "yagom"
print(yagom.name) //yagom

//인스턴스 연산 프로퍼티 사용
print(yagom.selfIntroduction) //저는 Swift반 yagom입니다

print("제 한국나이는 \(yagom.koreanAge)살이고, 미국나이는 \(yagom.westernAge)살입니다.")


struct Money {
    var currencyRate: Double = 1100
    var dollar: Double = 0
    var won: Double {
        get {
            return dollar * currencyRate
        }
        set {
            dollar = newValue / currencyRate
        }
    }
}

var moneyInMyPocket = Money()
moneyInMyPocket.won = 11000
print(moneyInMyPocket.dollar) //10.0

moneyInMyPocket.dollar = 10
print(moneyInMyPocket.won) //11000.0

//저장 프로퍼티와 연산 프로퍼티의 기능은 함수, 메소드, 클로저, 타입 등의
//외부에 위치한 지역/전역 변수에도 사용 가능
var a: Int = 100
var b: Int = 200
var sum3: Int {
    return a+b
}
print(sum3) //300


//20프로퍼티 감시자
//프로퍼티 값이 변경될 때 원하는 동작을 수행
struct Money2 {
    var currencyRate: Double = 1100 {
        //바뀌기 직전에 호출
        willSet(newRate) {
            print("환율이 \(currencyRate)에서 \(newRate)으로 변경될 예정입니다")
        }
        //바뀐 후 호출
        didSet(oldRate) {
            print("환율이 \(oldRate)에서 \(currencyRate)으로 변경되었습니다")
        }
    }
    var dollar: Double = 0 {
        //willSet의 암시적 매개변수 이름 newValue
        willSet {
            print("\(dollar)달러에서 \(newValue)달러로 변경될 예정입니다")
        }
        //didSet의 암시적 매개변수 이름 oldValue
        didSet {
            print("\(oldValue)달러에서 \(dollar)달러로 변경되었습니다")
        }
    }
    
    //연산 프로퍼티
    var won: Double {
        get {
            return dollar * currencyRate
        }
        set {
            dollar = newValue / currencyRate
        }
        //프로퍼티 감시자와 동시에 사용 불가(willset, didset불가)
    }
}

var moneyInMyPocket2: Money2 = Money2()
//환율이 1100.0에서 1150.0으로 변경될 예정입니다
moneyInMyPocket2.currencyRate = 1150
//환율이 1100.0에서 1150.0으로 변경되었습니다.

//0.0달러에서 10.0달러로 변경될 예정입니다
moneyInMyPocket2.dollar = 10
//0.0달러에서 10.0달러로 변경되었습니다

print(moneyInMyPocket2.won) //11500.0

//프로퍼티 감시자 역시 외부에 위치한 지역/전역 변수에도 모두 사용 가능
var a2: Int = 100 {
    willSet {
        print("\(a2)에서 \(newValue)로 변경될 예정입니다")
    }
    didSet {
        print("\(oldValue)에서 \(a2)로 변경되었습니다")
    }
}
//100에서 200로 변경될 예정입니다
a=200
//100에서 200로 변경되었습니다


//21상속
//클래스, 프로토콜에서 가능
//구조체, 열거형 불가능
//다중상속 지원하지 않음.

class Person3 {
    //인스턴스 프로퍼티
    var name: String = ""
    
    //인스턴스 메소드
    func selfIntroduce() {
        print("저는 \(name)입니다")
    }
    //final키워드를 사용하여 자식클래스로 물려줬을 때 자식클래스에서 재정의(Override) 방지
    final func sayHello() {
        print("hello")
    }
    
    //타입 메소드
    //재정의 불가(자식클래스에서)
    static func typeMethod() {
        print("type method - static")
    }
    //재정의 가능
    class func classMethod() {
        print("type method - class")
    }
    //재정의 가능한 class메소드라도 final키워드를 사용하면 재정의 할 수 없습니다
    //메소드 앞의 static과 final class는 같은 역할
    final class func finalClassMethod() {
        print("type method - final class")
    }
}

//person3을 상속받은 자식 클래스 student4
class Student4: Person3 {
    //저장 프로퍼티는 override재정의 불가능
    //var name: String = ""
    var major: String = ""
    
    override func selfIntroduce() {
        print("저는 \(name)이고, 전공은 \(major)입니다")
        super.selfIntroduce() //부모 클래스의 메소드 호출
    }
    //class를 사용한 타입 메소드는 재정의 가능
    override class func classMethod() {
        print("overriden type method - class")
    }
    
    //static을 사용한 타입 메소드는 재정의 불가 ????????인스턴스 메소드와 타입 메소드의 차이????????
    //override static func typeMethod() {    }
    
    //final키워드를 사용한 타입 메소드, 프로퍼티는 재정의 불가
    //override func sayHello() { }
    //override class func finalClassMethod() { }
    
}
//person3클래스의 인스턴스
let tom: Person3 = Person3()
let hana: Student4 = Student4()

tom.name = "tom"
hana.name = "hana"
hana.major = "swift"

//저는 tom입니다
tom.selfIntroduce()

//저는 hana이고, 전공은 swift입니다
hana.selfIntroduce()

Person3.classMethod()
Person3.typeMethod()
Person3.finalClassMethod()

//overriden type method - class
Student4.classMethod()

//type method - static
Student4.typeMethod()

//type method - final class
Student4.finalClassMethod()


//22인스턴스 생성, 소멸
//init, deinit
//스위프트의 모든 인스턴스는 초기화와 동시에 모든 프로퍼티에 유효한 값이 할당되어 있어야 함.
//프로퍼티에 미리 기본값을 할당해두면 인스턴스가 생성됨과 동시에 초기값을 지니게 됨.

class PersonA {
    //모든 저장 프로퍼티에 기본값 할당
    var name: String = "unknown"
    var age: Int = 0
    var nickName: String = "nick"
}

let jason: PersonA = PersonA()
jason.name = "jason"
jason.age = 30
jason.nickName = "j"

//하지만, 인스턴스가 초기화와 동시에 프로퍼티에 원하는 값을 넣어주고 싶음 -> 이니셜라이저 사용
//프로퍼티 기본값을 사용하지 않고 이니셜라이저를 통해 인스턴스가 가져야 할 초기값을 전달 가능.
class PersonB {
    var name: String
    var age: Int
    var nickName: String
    
    init(name: String, age: Int, nickName: String) {
        self.name = name
        self.age = age
        self.nickName = nickName
    }
}

let jerry: PersonB = PersonB(name: "jerry", age: 20, nickName: "제리")
//let jerry: PersonB = PersonB(name: "jerry", age: 20, nickName: "")

//프로퍼티의 초기값이 꼭 필요 없는 경우가 있을 때
//옵셔널을 사용
class PersonC {
    var name: String
    var age: Int
    var nickName: String?
    
    convenience init(name: String, age: Int, nickName: String) {
        //self.name = name
        //self.age = age
        //중복된 코드 줄일 수 있음, convenience키워드 필요
        self.init(name: name, age: age)
        self.nickName = nickName
    }
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}

let jenny: PersonC = PersonC(name: "jenny", age: 10)
let mike: PersonC = PersonC(name: "mike", age: 15, nickName: "m")

//암시적 추출 옵셔널 (!느낌표)
//인스턴스 사용에 꼭 필요하지만 초기값을 할당하지 않고자 할 때 사용

class Puppy {
    var name: String
    var owner: PersonC!
    
    init(name: String) {
        self.name = name
    }
    func goOut() {
        print("\(name)가 주인 \(owner.name)와 산책을 합니다")
    }
}

let happy: Puppy = Puppy(name: "happy")
//happy.goOut()
//주인이 없어서 에러
happy.owner = jenny
happy.goOut()

//실패가능한 이니셜라이저
//이니셜라이저 매개변수로 전달되는 초기값이 잘못된 경우 인스턴스 생성에 실패할 수 있음.
//그럴 경우 nil을 반환한다.
class PersonD {
    var name: String
    var age: Int
    var nickName: String?
    
    init?(name: String, age: Int) {
        if (0...120).contains(age) == false {
            return nil
        }
        if name.count == 0 {
            return nil
        }
        self.name = name
        self.age = age
    }
}

let john: PersonD? = PersonD(name: "john", age: 23)
let joker: PersonD? = PersonD(name: "joker", age: 123)
let batman: PersonD? = PersonD(name: "", age: 10)

print(joker)    //nil
print(batman)   //nil

//디이니셜라이저
//클래스의 인스턴스가 메모리에서 해제되는 시점에 호출되며,
//그 시점에 해야할 일을 구현할 수 있다.
class PersonE {
    var name: String
    var pet: Puppy?
    var child: PersonC
    
    init(name: String, child: PersonC) {
        self.name = name
        self.child = child
    }
    
    deinit {
        if let petName = pet?.name {
            print("\(name)가 \(child.name)에게 \(petName)를 인도합니다")
            self.pet?.owner = child
        }
    }
}

var donald: PersonE? = PersonE(name: "donald", child: jenny)
donald?.pet = happy
donald = nil //donald 인스턴스가 더이상 필요없으므로 메모리에서 해제됨.
//donald가 jenny에게 happy를 인도한다.


//23옵셔널체이닝



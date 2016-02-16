#!/home/lwj/tool/swift-2.2-SNAPSHOT-2015-12-01-b-ubuntu14.04/usr/bin/swift
print("hello world!")

var usrs = ["xavira","ryan","brenda","james","sarach"]
var ages = [32,34,24,54,34]

extension String
{
	func leadingSpace(width :Int) -> String {
		var s = String(self)
		let len = s.characters.count
		if len > width {
			return s;
		}
		for _ in len ..< width  {
			s = " " + s
		}
		return s
	}

	func trailingSpace(width: Int) -> String {
		var s = String(self)
		let len = s.characters.count
		if len > width {
			return s;
		}
		for _ in s.characters.count ..< width {
			s = s + " "
		}
		return s
	}
}

var merge = [String: Int]()
var totalage = 0.0

for var i=0; i<ages.count; i++ {
	merge[usrs[i]] = ages[i]
}

for user in merge.keys.sort() {
	let age = merge[user]!
	totalage += Double(age)
	let paddingUsr = user.trailingSpace(10)
	let paddingAge = "\(age)".leadingSpace(3)
	print("\(paddingUsr)\(paddingAge)")
}
print("totalAge: \(totalage)")
print("Average age: ", totalage / Double(merge.count))


typealias Byte = UInt8
var acc: Byte = 64
print(acc)


class A {
	init() {
		b = B()
	}
	class B {
		init(){}
		var i=5;
	}
	var b: B;
	var j=0;
}

var a = A()
print(a.b.i)


var x = 0
var computeHi: Int {
	get {
		return x + 10
	}
	set(val) {
		x = val
	}
}

computeHi = 10
print(computeHi)


var watchVal: Int = 0{
	willSet {
		print("will set changed to ", newValue)
	}
	didSet {
		print("did set changed from: ", oldValue)
	}
}
watchVal = 10


var aTuple: (Int ,Int) = (11, 12)
print(aTuple)
print(aTuple.0)
print(aTuple.1)

var nameTuple:(name: String, age: Int)
nameTuple.name = "liweijian"
nameTuple.age = 10
print(nameTuple)

print("hello".isEmpty)
print("hello".characters)
print("hello".lowercaseString)
print("hello".uppercaseString)
print("hello".utf8)
print("hello".utf16)
print("hello".unicodeScalars)

for i in "hello".characters {
	print(i)
}

let str = "Swift"
var idx = str.utf8.startIndex
while (idx != str.utf8.endIndex) {
	print(str.utf8[idx])
	idx = idx.successor()
}

let cw :Character = "w"
if let foundat = str.characters.indexOf(cw) {
	print(foundat)
}

///
/// Advent Of Code 2019
///
/// Day 2 Part 1
///
/// https://adventofcode.com/2019/day/2
///

let input = "1,12,2,3,1,1,2,3,1,3,4,3,1,5,0,3,2,1,10,19,1,19,6,23,2,23,13,27,1,27,5,31,2,31,10,35,1,9,35,39,1,39,9,43,2,9,43,47,1,5,47,51,2,13,51,55,1,55,9,59,2,6,59,63,1,63,5,67,1,10,67,71,1,71,10,75,2,75,13,79,2,79,13,83,1,5,83,87,1,87,6,91,2,91,13,95,1,5,95,99,1,99,2,103,1,103,6,0,99,2,14,0,0"

var codes = input
    .split(separator: ",")
    .map(String.init)
    .compactMap(Int.init)

var index = 0
var code = codes[index]

while true {
    if code == 99 { break }
    
    let position1 = codes[index + 1]
    let position2 = codes[index + 2]
    let position3 = codes[index + 3]
    
    let number1 = codes[position1]
    let number2 = codes[position2]
    
    if code == 1 {
        codes[position3] = number1 + number2
    } else if code == 2 {
        codes[position3] = number1 * number2
    }
    
    index += 4
    code = codes[index]
}

print(codes[0])

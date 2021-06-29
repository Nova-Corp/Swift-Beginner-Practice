/*
  1. Create the string array with 10 elements and sort it as Ascending order.
  
  let sudentsName = [ "aaa", "bbb", "ddd", "fff", "ccc", "eee"]
  let sortedNames = [ "aaa", "bbb", "ccc", "ddd", "eee", "fff"]  
  
  2. Split that into 2 array by alternate element.
  
  let alternateName1 = ["aaa", "ccc", "eee"]
  let alternateName2 = ["bbb", "ddd", "fff"]
  
  3. Remove the first element from both array.
  
  let newAlternateName1 = ["ccc", "eee"]
  let newAlternateName1 = ["ddd", "fff"]
  
  4. Join the splited array.
  
  let joinedArray = ["ccc", "eee", "ddd", "fff"]
  
  5. Print the new array as string.
  
  Result: ccc eee ddd fff
*/
import Foundation

var studentsName = ["Pavithra", "Archana", "zila","Dillipan","Kiran","Jayanthi","Vinothini","Naveena","Bharu","yamuna"]
studentsName.sort()    // 1.sorting an student array

var alternateName1: [String] = [], alternateName2: [String] = []

func splitAlternating(splitAlternate:[String]) {
    // 2.split the array into by alternate element
    for (index, value) in splitAlternate.enumerated() {     // We can access the index value of array element Using enumarated() keyword.
        if index % 2 == 0 {
            alternateName1.append(value)
        }
        else {
           alternateName2.append(value)
        }
    }
}
splitAlternating(splitAlternate : studentsName)

// 3.remove the first element from both array
alternateName1.removeFirst()
alternateName2.removeFirst()
// 4.join the splitted array
let joinedArray = alternateName1 + alternateName2
// 5.print the joined array
print(joinedArray)

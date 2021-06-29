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
import Glibc

var students_name = ["Pavithra", "Archana", "zila","Dillipan","Kiran","Jayanthi","Vinothini","Naveena","Bharu","yamuna"]
let index = [0,1,2,3,4,5,6,7,8,9]
students_name.sort()    // 1.sorting an student array

func splitAlternating(Index: [Int], splitAlternate:[String]) {
    var alternateName1: [String] = [], alternateName2: [String] = []    

    alternateName1.reserveCapacity(splitAlternate.count / 2 + 1)
    alternateName2.reserveCapacity(splitAlternate.count / 2)
    // 2.split the array into by alternate element
    for iteration in Index {
        if iteration % 2 == 0 {
            alternateName1.append(splitAlternate[iteration])
        }
        else {
           alternateName2.append(splitAlternate[iteration])
        }
    
    }
    // 3.remove the first element from both array
    alternateName1.removeFirst()
    alternateName2.removeFirst()
    // 4.join the splitted array
    let joined_array = alternateName1 + alternateName2
    // 5.print the joined array
    print(joined_array)

}
splitAlternating(Index : index , splitAlternate : students_name)

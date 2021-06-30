/*
  1. Create the array with 10 dictionary element.
      Example:-
        let studentDatabase: [NSDictionary] = [
                                ["name": "aaa",
                                  "college": "bbb",
                                  "department": "ccc"],
                                ["name": "aaa1",
                                  "college": "bbb1",
                                  "department": "ccc1"],
                                ["name": "aaa2",
                                  "college": "bbb2",
                                  "department": "ccc2"],
                                ["name": "aaa3",
                                  "college": "bbb3",
                                  "department": "ccc3"],
                                ["name": "aaa4",
                                  "college": "bbb4",
                                  "department": "ccc4"],
                                ["name": "aaa5",
                                  "college": "bbb5",
                                  "department": "ccc5"],
                              ]
  2. Extract the name, college, department as separate array
      let studentName = ["aaa", "aaa1", ...]
      let collegeName = ["bbb", "bbb1", ...]
      let departmentName = ["ccc", "ccc1", ...]


*/
import Foundation
//1. Create the array with 10 dictionary element.
var studentDatabase: [[String:String?]] = [
                                ["name": "Pavithra",
                                  "college": "Sri Eshwar College",
                                  "department": "ECE"],
                                ["name": "Archana",
                                  "college": "Karunya University",
                                  "department": "Bio-Technology"],
                                ["name": "Kirthick",
                                  "college": "KSR College",
                                  "department": "CSE"],
                                ["name": "Kiran",
                                  "college": "SRM College",
                                  "department": "B.Com"],
                                ["name": "Bharathi",
                                  "college": "Karpagam",
                                  "department": "B.Sc"],
                                ["name": "Kaviya",
                                  "college": "VRS College",
                                  "department": "M.com"],
                                ["name": "Shalini",
                                  "college": "Sri Ramakrishna College",
                                  "department": "B.Com"],
                                ["name": "Harish",
                                  "college": "SRA College",
                                  "department": "BBA"],
                                ["name": "Raji",
                                  "college": "Karpagam University",
                                  "department": "B.Sc"],
                                ["name": "Nila",
                                  "college": "KPR College",
                                  "department": "M.com"],
                              ]
var studentName = [String]()
var collegeName = [String]()
var departmentName = [String]()
//2.Extract the name, college, department as separate array
studentDatabase.map{item in
    if let studentNames = item["name"] {
        if(studentNames != nil){
            studentName.append(studentNames!)
        }
    }
    if let collegeNames = item["college"] {
        if(collegeNames != nil){
            collegeName.append(collegeNames!)
        }
    }
    if let departmentNames = item["department"] {
        if(departmentNames != nil){
            departmentName.append(departmentNames!)
        }
    }
    return;
}
print(studentName)
print(collegeName)
print(departmentName)

// How to map two array fields into single array
%dw 2.0
output application/json
//here we are taking two variables v,r
var v =[ 1,2,3,4]
// in this sen i was taken one array as string another one as number
var r = ["varun", "Gowri","Naveen","satya"]
//var in =  flatten([v,r])
---
// Here case one  here
// v map (
//     {
//   code: v[$$],
//   lable: r[$$]
//     } )

//taking the data in variable format and iterating over array elements and based on index we are fetching the values in the another array
 v map ((item, index) ->
  {
      code:item,
      label:r[index]
  })

// same case

// (v zip r)
// map  {
// code: $[0],
// lable: $[1]
// }


// in 

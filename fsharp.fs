open System
module Test.Module

type trueNumber =
  | Boolean            of bool
  | Integer            of int

let test_function() = 
    while not (testInt > 500) do
        let mutable testInt = 150
        testInt <- testInt + 100

    let otherInt = ref 1

    for i = 1 to 10 do
        otherInt := otherInt + i        

test_function()

let rec factorial x = 
    if x < 1 then 1
    else x * factorial (x - 1)

factorial(4)

(* Test Comment *)
let myString = "Test String"
let array = [1 .. 10]

let intList = seq {1 .. 3}
let transformedIntList = List.map (fun x -> x * 2) intList

[1;2;3;4]
|> List.filter (fun i -> (i % 2) = 0)
|> List.map(fun j -> j + 1)

let divide x y =
    match y with
    | 0 -> None
    | _ -> Some(x/y)

let rec sumList xs =
    match xs with
    | []       -> 0
    | x :: xs' -> x + sumList xs'
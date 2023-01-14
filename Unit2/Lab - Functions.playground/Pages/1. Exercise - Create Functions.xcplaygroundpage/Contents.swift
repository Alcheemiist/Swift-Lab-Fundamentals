/*:
 ## Exercise - Create Functions
 
 Write a function called `introduceMyself` that prints a brief introduction of yourself. Call the function and observe the printout.
 */
func introduceMyself(person: String, age: Int = 24)
{
    print("Hi i'm \(person) aka Alchemist, my age is \(age) yrs !!")
}


print("Hi")
introduceMyself(person: "Elmahdi")
print("And You")
introduceMyself(person: "Fatima-ezzahra" , age : 25)
/*:
 Write a function called `magicEightBall` that generates a random number and then uses either a switch statement or if-else-if statements to print different responses based on the random number generated. `let randomNum = Int.random(in: 0...4)` will generate a random number from 0 to 4, after which you can print different phrases corresponding to the number generated. Call the function multiple times and observe the different printouts.
 */
func spells(val: Int = 0)
{
    if (val == 0)
    {
        print("spell 0")
    }
    else if (val == 1)
    {
        print("spell 1")
    }
    else if (val == 2)
    {
        print("spell 2")
    }
    else if (val == 3)
    {
        print("spell 3")
    }
    else
    {
        print("spell 4")
    }
}


var randomNum = Int.random(in: 0...4)
print("\(spells(val : randomNum))")

randomNum = Int.random(in: 0...4)
print("\(spells(val : randomNum))")
//: page 1 of 6  |  [Next: App Exercise - A Functioning App](@next)

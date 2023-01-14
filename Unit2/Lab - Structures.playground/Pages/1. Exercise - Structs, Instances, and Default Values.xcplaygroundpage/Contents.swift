/*:
 ## Exercise - Structs, Instances, and Default Values
 
 Imagine you are creating an app that will monitor location. Create a `GPS` struct with two variable properties, `latitude` and `longitude`, both with default values of 0.0.
 */
struct GPS {
    var latitude = 0.0
    var longitude = 0.0
    init()
    {
        
    }
    init(l: Double, lo : Double)
    {
        latitude = l
        longitude = lo
    }
}

/*:
 Create a variable instance of `GPS` called `somePlace`. It should be initialized without supplying any arguments. Print out the latitude and longitude of `somePlace`, which should be 0.0 for both.
 */
var somePlace = GPS()
print("\(somePlace.latitude) , \(somePlace.longitude)")
/*:
 Change `somePlace`'s latitude to 51.514004, and the longitude to 0.125226, then print the updated values.
 */
somePlace = GPS(l : 10.90 , lo :  34.90)
print("\(somePlace.latitude) , \(somePlace.longitude)")

/*:
 Now imagine you are making a social app for sharing your favorite books. Create a `Book` struct with four variable properties: `title`, `author`, `pages`, and `price`. The default values for both `title` and `author` should be an empty string. `pages` should default to 0, and `price` should default to 0.0.
 */
struct Book {
    var title : String = String()
    var author : String = String()
    var pages : Int = Int()
    var price : Double = Double()
    
    func display()
    {
        print("Title : \(self.title)")
        print("author : \(self.author)")
        print("pages : \(self.pages)")
        print("price : \(self.price)")
    }
    
    mutating func update(t: String , a : String , p: Int , pr : Double)
    {
        title = t
        author = a
        pages = p
        price = pr
    }
}

/*:
 Create a variable instance of `Book` called `favoriteBook` without supplying any arguments. Print out the title of `favoriteBook`. Does it currently reflect the title of your favorite book? Probably not. Change all four properties of `favoriteBook` to reflect your favorite book. Then, using the properties of `favoriteBook`, print out facts about the book.
 */
var favoriteBook = Book()
favoriteBook.update(t: "mine", a: "alchemist", p: 120, pr: 14.90)
favoriteBook.display()
//: page 1 of 10  |  [Next: App Exercise - Workout Tracking](@next)

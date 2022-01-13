/*:
 ## Exercise: Goals

Think of a goal of yours that can be measured in progress every day, whether it’s minutes spent exercising, number of photos sent to friends, hours spent sleeping, or number words written for your novel.

 - callout(Exercise): Create an array literal with 20 to 25 items of sample data for your daily activity. It may be something like `let milesBiked = [3, 7.5, 0, 0, 17 ... ]` Feel free to make up or embellish the numbers, but make sure you have entries that are above, below and exactly at the goal you've thought of. _Hint: Make sure to choose the right kind of array for your data, whether `[Double]` or `[Int]`._
*/
var tiktokHours = [1.2, 4.3, 3.5, 3, 0, 4, 2, 4.5, 4, 2, 4.2, 5.3, 3, 3, 5, 7, 2.4, 5, 3.2, 6, 2.6, 5.2]
//: - callout(Exercise): Write a function that takes the daily number as an argument and returns a message as a string. It should return a different message based on how close the number comes to your goal. You can be as ambitious and creative as you'd like with your responses, but make sure to return at least two different messages depending on your daily progress!
let goal = 50.0
func dailyProgress(hoursSpent: [Double], goal: Double) -> String {
    var progress = 0.0
    for hrs in hoursSpent {
        progress += hrs
    }
    if progress >= goal {
        return "You've met your goal!"
    } else {
        return "Keep it up, you're not quite there yet!"
    }
}
print(dailyProgress(hoursSpent: tiktokHours, goal: goal))

//: - callout(Exercise): Write a `for…in` loop that loops over your sample data, calls your function to get an appropriate message for each item, and prints the message to the console.

let dailyGoal = 5.0
func meetGoal(progressToday: Double, dailyGoal: Double) -> String {
    if progressToday >= dailyGoal {
        return "You've met your goal!"
    } else {
        return "You're not quite there yet"
    }
}
for hrs in tiktokHours{
    print(meetGoal(progressToday: hrs, dailyGoal: dailyGoal))
}


//: [Previous](@previous)  |  page 16 of 17  |  [Next: Exercise: Screening Messages](@next)

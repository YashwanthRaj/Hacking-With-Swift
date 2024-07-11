# BetterRest
This SwiftUI project is another forms-based app that will ask the user to enter information and convert that all into an alert. 

All iPhones come with a technology called Core ML built right in, which allows us to write code that makes predictions about new data based on previous data it has seen. We’ll start with some raw data, give that to our Mac as training data, then use the results to build an app able to make accurate estimates about new data – all on device, and with complete privacy for users.

SwiftUI has two ways of letting users enter numbers, and the one we’ll be using here is **`Stepper`**: a simple - and + button that can be tapped to select a precise number. The other option is **`Slider`**, which we’ll be using later on – it also lets us select from a range of values, but less precisely.

Steppers are smart enough to work with any kind of number type you like, so you can bind them to **`Int`**, **`Double`**, and more, and it will automatically adapt. For example, we might create a property like this:

```swift
@Stateprivatevar sleepAmount = 8.0
```

We could then bind that to a stepper so that it showed the current value, like this:

```swift
Stepper("\(sleepAmount) hours", value: $sleepAmount)
```

When that code runs you’ll see 8.000000 hours, and you can tap the - and + to step downwards to 7, 6, 5 and into negative numbers, or step upwards to 9, 10, 11, and so on.

By default steppers are limited only by the range of their storage. We’re using a **`Double`** in this example, which means the maximum value of the slider will be absolutely massive.

We use labelshidden to hide and still have labels in a picker. 

```swift
DatePicker("Please enter a date", selection: $wakeUp)
    .labelsHidden()
```

That still includes the original label so screen readers can use it for VoiceOver, but now they aren’t visible onscreen any more – the date picker won’t be pushed to one side by some empty text.

Date pickers provide us with a couple of configuration options that control how they work. First, we can use **`displayedComponents`** to decide what kind of options users should see:

- If you don’t provide this parameter, users see a day, hour, and minute.
- If you use **`.date`** users see month, day, and year.
- If you use **`.hourAndMinute`** users see just the hour and minute components.

So, we can select a precise time like this:

```swift
DatePicker("Please enter a time", selection: $wakeUp, displayedComponents:
```

Swift gives us **`Date`** for working with dates, and that encapsulates the year, month, date, hour, minute, second, timezone, and more. However, we don’t want to think about most of that – we want to say “give me an 8am wake up time, regardless of what day it is today.”

Swift has a slightly different type for that purpose, called **`DateComponents`**, which lets us read or write specific parts of a date rather than the whole thing.

So, if we wanted a date that represented 8am today, we could write code like this:

```swift
var components = DateComponents()
components.hour = 8
components.minute = 0
let date = Calendar.current.date(from: components)
```

On-device machine learning is surprisingly easy thanks to two Apple frameworks: Core ML, and Create ML. The first of those lets us make apps using machine learning, and the second lets us create custom machine learning models of our own using a dedicated Create ML app that makes the whole process drag and drop. As a result of all this work, it’s now within the reach of anyone to add machine learning to their app.

Core ML is capable of handling a variety of training tasks, such as recognizing images, sounds, and even motion, but in this instance we’re going to look at tabular regression. That’s a fancy name, which is common in machine learning, but all it really means is that we can throw a load of spreadsheet-like data at Create ML and ask it to figure out the relationship between various values.

Machine learning is done in two steps: we train the model, then we ask the model to make predictions. Training is the process of the computer looking at all our data to figure out the relationship between all the values we have, and in large data sets it can take a long time – easily hours, potentially much longer. Prediction is done on device: we feed it the trained model, and it will use previous results to make estimates about new data.

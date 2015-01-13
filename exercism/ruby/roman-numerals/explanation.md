If we wanted to generlize the above we basically have the following numerals
I = 1
V = 5
X = 10

We can also think of these as
I = the current unit
V = the half way point to the next unit
X = the next unit

We don't need to replace those yet since that's pretty wordy but why don't we think about how to store this data
The other letters are as follows in array notation
``` [I, V, X, L, C, D, M] ```
These are all the relevant numbers for our function since we're only going up to 3000. Why don't we split this up for now (maybe we can find a way to avoid this later) into "units" and "halfway places"
``` [I, X, C, M] ```
for ones, tens, hundreds, thousands, respectively and
``` [V, L, D] ```
For halfway to 10, halfway to a 100, and halfway to a thousand
Next let's see if we can get a mapping for the ones place that will work pulling these letters from an array. In TDD
In TDD style we know that our tests for the ones place should work for any number less than nine so let's translate that into the main method for now. This way we can screw around with our ones method and easily test it to ensure we're not breaking it.
Okay great now we can delete the "skip" lines for all of our tests that test numbers less than 9 and we'll get a passing test suite. Now it's time to mess around with that method and try to generalize it.

Finally I get to this mess that you see in version 4. I broke things up into various functions and did the best I could to separate the logic. Now it's time to test that it works. I know it's entirely too long, but if it works, I'd say it's good enough for a first shot.

I failed a couple of the tests in ways that I hadn't expected--this is why you need a really solid test suite!

So it was the thousands we had trouble with, although not for the number 3000.

So now it's back to the REPL to investigate

So it turns out the issue here was not dealing with "leading zeros" a relatively common problem when switching back and forth between numbers and strings. And really, if we look at the code I'm using to determine digits, it's a bit of a mess.

It occurred to me that this needed to be done differently, in a simpler, more intuitive way. I decided to try converting the number to a vector (an array). That way each index in the array would have a corresponding digit. I wrote some code for creating a vector from a fixnum. This isn't really ideal (I remember reading somewhere that if you find yourself using a case statement that should be a "smell" a signal that soemthing may be up). I know there's a better way to write this but I figure that since I'm including it in its own method it should be relatively straightforward to clean up the method on its own without breaking anything.

Sweet, it worked! I'm going to go ahead and commit this version of the solution and then start work on refactoring to make it better.

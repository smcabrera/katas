//
// This is only a SKELETON file for the "Bob" exercise. It's been provided as a
// convenience to get you started writing code faster.
//

var Bob = function() {};

Bob.prototype.hey = function(input) {
  if (input == ''){
    return 'Fine. Be that way!'
  }
  else {
    return 'Whatever.'
  }
};

//Bob answers 'Sure.' if you ask him a question.

//He answers 'Whoa, chill out!' if you yell at him.

//He says 'Fine. Be that way!' if you address him without actually saying
//anything.

//He answers 'Whatever.' to anything else.

module.exports = Bob;

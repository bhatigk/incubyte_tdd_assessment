# README

The **StringCalculator** class provides a method add that takes a string of numbers as input and returns their sum.
It handles both default delimiters (comma and newline) as well as custom delimiters specified in the input string. 
Negative numbers are not allowed, and if any are found, an exception is raised indicating which negative numbers were present in the input.

* Ruby version
  - ruby 3.0.0p0

* Configuration
  ```
    gem install rspec
  ```

* How to run the test suite
  ```
    rspec string_calculator_spec.rb
  ```

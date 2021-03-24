# bcalc

A calculator written in pure bash.

I even managed to write a lexer for the argument input, allowing you to do `1+1` instead of `1 + 1`.

I made sure to thouroughly comment the script, feel free to check it out if you're interested!

## Syntax

- `()` = do this first and replace with the done math
- `[]` = denotes a multi-digit number
- `^`  = exponent
- `*`  = multiplication
- `/`  = division
- `+`  = addition
- `-`  = subtraction

## What's supported

- Basic math operations
- PEMDAS
- Whole numbers

Examples:

```
$ ./bcalc [100]*[50]
5000

$ ./bcalc [1000]/[100]
10

$ ./bcalc [100]+[100]+[100]+[100]
400

$ ./bcalc 9-1-2-3-4
-1

$ ./bcalc '([100]+[50])/2'
75

$ ./bcalc '([100]+[50])+2^2'
154
```

There is also a debug mode implemented, which is useful for when the output seems wrong.
Here is an example:

```
$ ./bcalc [100]-[50]
final_array = [ 1 0 0 ] - [ 5 0 ]
number_array = 100 50
operation_array = -
calculation = 100-50
50
```

- `final_array` = the comlpete array of characters that were inputted
- `number_array` = an array of all the numbers
- `operation_array` = an array of all the operations
- `calculation` = the calculation to be used

## TODO

- ~~Better formatted ouput (perhaps `1,000,000` instead of `1000000` for example)~~
- ~~No hard limit on number/operator count~~
- ~~Support decimals~~ apparently this is not possible in pure bash
- ~~Support PEMDAS~~ (bash had already mostly supported PEMDAS, just needed to support for parenthesis)
  + ~~Parenthesis~~
  + ~~Exponents~~
  + ~~Multiplication~~
  + ~~Division~~
  + ~~Addition~~
  + ~~Subtraction~~

Off-topic from this calculator:

I feel like the work I would put into the lexer for this calculator,<br>
can be adapted into a framework for creating custom languages in BASH.

I'm definitely going to look into this after I've done more work on the calculator.

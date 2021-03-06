# bcalc

A calculator written in pure bash.

I even managed to write a lexer and parser for the argument input,<br>
allowing you to do `1+1` instead of `1 + 1`.

I made sure to thouroughly comment the script,<br>
feel free to check it out if you're interested!

## Syntax

- `()` = do this first and replace with the done math
- `^`  = exponent
- `*`  = multiplication
- `%`  = division with remainder
- `/`  = division
- `+`  = addition
- `-`  = subtraction

## What's supported

- Basic math operations
- PEMDAS
- Whole numbers

Examples:

```
$ ./bcalc 100*50
5000

$ ./bcalc 1000/100
10

$ ./bcalc 100+100+100+100
400

$ ./bcalc 9-1-2-3-4
-1

$ ./bcalc '(100+50)/2'
75

$ ./bcalc '(100+50)+2^2'
154
```

There is also a debug mode implemented,<br>
which is useful for when the output seems wrong.

Here is an example:

```
$ ./bcalc '(100+100-100)+100' --debug
final_array = ( 1 0 0 + 1 0 0 - 1 0 0 ) + 1 0 0
ip_split = 100+100 100
ip_split[0] = 100+100
first = 200
ip_split[1] = 100
second = 100
ip = 100
mn = 1 0 0
numbers = 100
number_array[0] = 100
operation_array[0] = +
operation_array[1] =
number_array[1] = 100
operation_array[0] = +
operation_array[1] =
number_array[2] =
operation_array[0] = +
operation_array[1] =
number_count = 2
operation_count = 1
calculation = 100+100
200
```

- `final_array` = the complete array of characters that were inputted
- `ip_split` = if what's in parenthesis contains a `-`, split based on that into an array
- `first` = the first calculation to be done before the subtraction (first - second)
- `second` = the second calculation to be done before the subtraction
- `ip` = anything in this array is what is inside parenthesis
- `mn` = short for multi-digit number
- `number_array` = an array of all the numbers
- `operation_array` = an array of all the operations
- `calculation` = the calculation to be used

## Testing

There is a script provided (`test`),<br>
which will test the calculator to make sure it's functioning properly.

Example output:

```
$ ./test
GOOD -- The basic parenthesis test has passed.
GOOD -- The basic exponent test has passed.
GOOD -- The basic multiplication test has passed.
GOOD -- The basic division test has passed.
GOOD -- The basic addition test has passed.
GOOD -- The basic subtraction test has passed.
GOOD -- The basic PEMDAS test has passed.
GOOD -- The second basic PEMDAS test has passed.
GOOD -- The error test for notations passed.
```

If a test fails, it will display the result and what was expected.<br>
It will also output a respective debug file for the test to `debug/`.

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

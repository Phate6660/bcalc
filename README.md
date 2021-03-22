# bcalc

A calculator written in pure bash.

I even managed to write a lexer for the argument input, allowing you to do `1+1` instead of `1 + 1`.

I made sure to thouroughly comment the script, feel free to check it out if you're interested!


## What's supported

- Basic math operations
- Only 2 numbers, and one math operation at a time
- Whole numbers

Examples:

```
$ ./bcalc 100*2
200

$ ./bcalc 400/2
200

$ ./bcalc 100+100
200

$ ./bcalc 300-100
200
```

## TODO

- Better formatted ouput (perhaps `1,000,000` instead of `1000000` for example)
- No hard limit on number/operator count
- Support decimals
- Support operating on more than two numbers
- Support PEMDAS (Parenthesis, Exponents, Multiplication, Division, Addition, Subtraction)

Off-topic from this calculator:

I feel like the work I would put into the lexer for this calculator,<br>
can be adapted into a framework for creating custom languages in BASH.

I'm definitely going to look into this after I've done more work on the calculator.

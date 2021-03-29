#!/usr/bin/env bats

load common

@test "Single brackets test" {
	result="$($BINARY_FILE '(2+2)')"
	[ "$result" -eq 4 ]
}

@test "Single brackets with basic math test" {
	result="$($BINARY_FILE '(5+5)/2')"
	[ "$result" -eq 5 ]
}

@test "Exponent in bracket with math test" {
	result="$($BINARY_FILE '(2^2)*2')"
	[ "$result" -eq 8 ]
}

@test "2 levels of brackets test" {
	result="$($BINARY_FILE '((2+2)+2)')"
	[ "$result" -eq 6 ]
}

@test "3 levels of brackets test" {
	result="$($BINARY_FILE '(((2+2)+2)+2)')"
	[ "$result" -eq 8 ]
}

@test "Multiple digits without bracket first test" {
	result="$($BINARY_FILE '1+2*3')"
	[ "$result" -eq 7 ]
}

@test "Multiple digits without bracket second test" {
	result="$($BINARY_FILE '6-1*0+3/3')"
	[ "$result" -eq 7 ]
}

@test "Multiple digits with bracket and operations test" {
	result="$($BINARY_FILE '500-(4*2^2+12)')"
	[ "$result" -eq 472 ]
}

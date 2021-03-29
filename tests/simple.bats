#!/usr/bin/env bats

load common

@test "Addition test" {
	result="$($BINARY_FILE 2+2)"
	[ "$result" -eq 4 ]
}

@test "Subtraction test" {
	result="$($BINARY_FILE 4-2)"
	[ "$result" -eq 2 ]
}

@test "Multiplication test" {
	result="$($BINARY_FILE 4*2)"
	[ "$result" -eq 8 ]
}

@test "Division test" {
	result="$($BINARY_FILE 4/2)"
	[ "$result" -eq 2 ]
}

@test "Division with remainder test" {
	result="$($BINARY_FILE 5%2)"
	[ "$result" -eq 1 ]
}

@test "Exponent test" {
	result="$($BINARY_FILE 3^2)"
	[ "$result" -eq 9 ]
}

@test "Decimal not supported error test" {
	run "$BINARY_FILE" 1.1+2.2
	[ $status -eq 1 ]
	[ "${lines[0]}" == "Only digits, parenthesis, '^', '*', '%', '/', '+', and '-', are supported." ]
	[ "${lines[1]}" == "'.' is currently unsupported." ]
}

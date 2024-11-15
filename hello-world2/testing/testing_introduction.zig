const std = @import("std");

// Test using a string literal
test "expect addOne adds one to 41" {
    // The Standard Library contains useful functions to help create tests.
    // `expect` is a function that verifies its argument is true.
    // It will return an error if its argument is false to indicate a failure.
    // `try` is used to return an error to the test runner to notify it that the test failed.

    try std.testing.expect(addOne(41) == 42);
}

// Test using a identifier
test addOne {
    // A test name can also be written using an identifier.
    // This is a doctest, and servers as documentation for `addOne`.

    try std.testing.expect(addOne(41) == 42);
}

test "expect addOne not add one to 41" {
    try std.testing.expect(addOne(41) != 43);
}

fn addOne(number: i32) i32 {
    return number + 1;
}

test "this will be skipped" {
    return error.SkipZigTest;
}

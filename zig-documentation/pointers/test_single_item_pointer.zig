const expect = @import("std").testing.expect;

test "address of sytax" {
    // Get the address of a variable:
    const x: i32 = 1234;
    const x_ptr = &x;

    // Deference a pointer:
    try expect(x_ptr.* == 1234);

    // When you get the address of a const variable, you get a const single-item pointer
    try expect(@TypeOf(x_ptr) == *const i32);

    // If you want to moutate the value, you'd need an address of a mutalbe variable:
    var y: i32 = 5678;
    const y_ptr = &y;

    try expect(@TypeOf(y_ptr) == *i32);
    y_ptr.* += 1;
    try expect(y_ptr.* == 5679);
}

test "pointer array access" {
    // Taking an addressof an individual elemet gives a
    // single-item pointer. This kind of pointer
    // does not support pointer arithmetic.
    var array = [_]u8{ 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 };
    const ptr = &array[2];
    try expect(@TypeOf(ptr) == *u8);

    try expect(array[2] == 3);
    ptr.* += 1;
    try expect(array[2] == 4);
}
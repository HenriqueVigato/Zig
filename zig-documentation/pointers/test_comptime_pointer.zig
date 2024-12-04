const expect = @import("std").testing.expect;

test "comptime pointers" {
    comptime {
        var x: i32 = 1;
        const pointer = &x;
        pointer.* += 1;
        x += 1;
        try expect(pointer.* == 3);
    }
}

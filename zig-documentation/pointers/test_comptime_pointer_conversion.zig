const expect = @import("std").testing.expect;
const print = @import("std").debug.print;

test "comptime @ptrFromInt" {
    comptime {
        //zig is able to do this at compile-time, as long as
        //ptr is never deferenced.
        const ptr: *i32 = @ptrFromInt(0xdeadbee0);
        const addr = @intFromPtr(ptr);
        try expect(@TypeOf(addr) == usize);
        try expect(addr == 0xdeadbee0);
    }
}

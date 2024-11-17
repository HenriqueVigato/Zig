const mem = @import("std").mem;
const print = @import("std").debug.print;

const array1 = [_]u32{ 1, 2 };
const array2 = [_]u32{ 3, 4 };
const together = array1 ++ array2;

pub fn main() !void {
    print("{any}\n", .{together});
}

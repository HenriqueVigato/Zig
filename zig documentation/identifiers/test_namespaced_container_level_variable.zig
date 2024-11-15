const std = @import("std");
const expect = std.testing.expect;

test "namespaced container level variable" {
    S2.y = S.x;
    try expect(foo() == 1235);
    try expect(foo() == 1236);
}

const S = struct {
    var x: i32 = 1234;
};

const S2 = struct {
    var y: i32 = undefined;
};

fn foo() i32 {
    S.x += 1;
    std.debug.print("S.x= {}\nS2.y= {}\n", .{ S.x, S2.y });
    return S.x;
}

const std = @import("std");
const big = @as(f64, 1 << 40);
// const inf = std.math.inf(f32);
// const negative_inf = -std.math.inf(f64);
// const nan = std.math.nan(f128);
//
// pub fn main() !void {
//     std.debug.print("inf: {}\nnegative_inf: {}\nnan: {}\n", .{ inf, negative_inf, nan });
// }
//
export fn foo_strict(x: f64) f64 {
    return x + big - big;
}

export fn foo_optimized(x: f64) f64 {
    @setFloatMode(.optimized);
    return x + big - big;
}

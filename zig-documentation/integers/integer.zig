const std = @import("std");

pub fn main() !void {
    const a: u32 = 4_294_967_295;
    const b: i32 = 2_147_483_647;

    // +% caso o resultado extrapole o valor maximo ele retornara o valor mais baixo
    const c = a +% 1;
    // +| caso o resultado extrapole o valor maximo ele resultado o valor maximo
    const d = b +| 1;
    std.debug.print("A: {}\nB: {}\nC: {}\nD: {}\n", .{ a, b, c, d });
}

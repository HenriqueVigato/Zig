const @"identifier with spaces in it" = 0xff;
const @"1SmallStemp4Man" = 1234561;

const c = @import("std").c;
pub extern "c" fn @"error"() void;
pub extern "c" fn @"fstat$INODE64"(fd: c.fd_t, buf: *c.Stat) c_int;

const Color = enum {
    red,
    @"relly red",
};

const color: Color = .@"relly red";

pub fn main() !void {}

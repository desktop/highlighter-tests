const std = @import("std");

pub fn main() void {
    var result = 1 + 2;
    std.debug.print("Hello world {}\n", .{result});
}
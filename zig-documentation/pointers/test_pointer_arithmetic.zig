const expect = @import("std").testing.expect;
const print = @import("std").debug.print;

test "pointer arithmetic with many-item pointer" {
    const array = [_]i32{ 1, 2, 3, 4 };
    var ptr: [*]const i32 = &array;

    try expect(ptr[0] == 1);
    // move o ponteiro do primeiro elemento do array para o segundo elemento;
    // nesse caso a posicao 3 do array vai ter algo aleatorio que esteja na memoria
    ptr += 1;
    try expect(ptr[0] == 2);
    try expect(ptr[2] == 4);
    try expect(ptr[3] != 4);

    // slicing a many-item pointer without an end is equivalent to
    // pointer arithmetic: `ptr[start..] == ptr + start`
    try expect(ptr[1..] == ptr + 1);
    try expect(ptr[2..] == ptr + 2);
}

test "pointer arithmetc with slices" {
    var array = [_]i32{ 1, 2, 3, 4 };
    var length: usize = 0; //var to make runtime-know
    _ = &length;
    var slice = array[length..array.len];

    try expect(slice[0] == 1);
    try expect(slice.len == 4);

    slice.ptr += 1;
    // now the slice is in an bad state since len has not been update

    try expect(slice[0] == 2);
    try expect(slice.len == 4);
    try expect(slice[3] != 4);
}

test "testando" {
    var array1 = [_]i32{ 1, 2, 45, 4, 6, 3 };
    var array = array1[1..array1.len];
    array.ptr += 1;

    try expect(array.len == 5);
    try expect(array[0] == 45);
    try expect(array[4] != 3);
}

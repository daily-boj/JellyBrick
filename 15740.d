import std.stdio, std.string, std.bigint, std.array;
void main()
{
    auto str = readln.chomp.split(' ');
    writeln(BigInt(str[0]) + BigInt(str[1]));
}

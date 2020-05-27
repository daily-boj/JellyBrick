import std.stdio, std.math;

ulong calc(ulong radius) {
    ulong a, b;
    ulong ans = 0;
    ulong temp_rad = radius / 2;
    immutable ulong temp_rad_pow = temp_rad * temp_rad;
    for(ulong count = 0; count < radius / 2; count++) {
        a = temp_rad;
        b = temp_rad_pow - (count + 1) * (count + 1);
        if(b > (a - 1) * (a - 1)) {
            ans++;
        }
        else {
            while((a - 1) * (a - 1) >= b && a - 1 != 0) {
                a--;
            }
            ans += a * a == b ? temp_rad - a : temp_rad - a + 1;
            temp_rad = a;
        }

    }
    return ans * 4;
}

void main()
{
    ulong rad;
    readf!" %d"(rad);
    writeln(calc(rad));
}

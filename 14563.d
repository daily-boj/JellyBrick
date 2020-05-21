import std.stdio;
import std.conv;
import std.math;

void main()
{
    int t;
    readf!" %d"(t);
    while (t--) {
        int n, sum = 0;
        readf!" %d"(n);
        for (int i = 1; i < n; i++) {
            if (n % i == 0)
                sum += i;
        }
        if (n == sum)
            writeln("Perfect");
        else if (n > sum)
            writeln("Deficient");
        else
            writeln("Abundant");
    }
}

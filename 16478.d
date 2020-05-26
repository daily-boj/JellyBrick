import std.stdio;
void main()
{
    int pab, pbc, pcd;
    readf!" %d %d %d"(pab, pbc, pcd);
    writefln("%.6f", cast(double) pab * pcd / pbc);
}

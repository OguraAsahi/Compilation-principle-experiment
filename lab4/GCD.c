int GCD(int m, int n)
{
    while (n != 0) {
        int r = m % n;
        m   = n;
        n   = r;
    }
    return m;
}
int main()
{
    int x, y, z;
    x = read();
    y = read();
    z = GCD(x, y);
    write(z);
    return 1;
}
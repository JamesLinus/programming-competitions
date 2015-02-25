import std.stdio;
import std.algorithm;
import std.range;
import std.math;
import std.conv;
import std.parallelism;

@safe int nth_prime(int n) pure {
    bool[] sieve; // the value at position n is primality of the integer n
    sieve.length = 1 << 30;
    auto nth = 0;
    foreach (i; 2 .. sieve.length) {
        if (!sieve[i]) {
            nth++;
            if (nth == n) {
                return cast(int) i;
            }
            foreach (j; iota(i*i, sieve.length, i)) {
                sieve[j] = true;
            }
        }
    }
    return -1;
}

void main()
{
    auto n = nth_prime(1000);
    writeln(n);
}

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
    for (int i = 2; i < sieve.length; i++) {
        if (!sieve[i]) {
            nth++;
            if (nth == n) {
                return cast(int) i;
            }
            for (int j = i*i; j < sieve.length; j += i) {
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

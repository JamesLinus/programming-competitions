import std.stdio;
import std.algorithm;
import std.range;
import std.math;
import std.conv;
import std.array;

int nth_prime(int n) {
    auto factor = 22; // The largest factor of P(n) / n we'll be dealing with it about 22
    // Optimization: Use an uninitialized array because programs will start with zeroed out memory
    auto sieve = uninitializedArray!(bool[])(n * factor); // the value at position n is primality of the integer n
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

void main(string[] args)
{
    auto n = args[1].to!int;
    auto nth = nth_prime(n);
    writeln(n, " : ", nth);
}

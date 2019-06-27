# theor.chem.primers
Some codes for training young theoretical chemists.  They can be found in `src` directory.

## Quantum Harmonic Oscillator
`qho.f`: This files contains some codes to generate the wave function of Quantum Harmonic Oscillator, which can be used as basis set to solve some 1D quantum oscillators eigen problems.  And using some plot tools (I use Veusz here), you get this:
![qho](src/qho.svg)

## Greatest Common Divisor
`gcd_recursion.py`: A python3 implement using recursion;
`gcd_iteration.py`: A python3 implement using iteration.

> **Definition** The greatest common divisor, gcd(*a*,*b*), of two integers *a* and *b*, 
> is the largest of their *common divisors*.  (But gcd(0,0) = 0 by definition.)
>
> gcd(0,5)= 5
>
> gcd(24,30)= 6
>
> gcd(4,7)=1
>
> **Question** How are GCD’s defined when negative numbers are involved?
>
> **Answer** They are defined the same way they are defined for positive numbers.
>
> **Question** And what are the divisors of a negative number?
>
> **Answer** By the definition of divisibility,*a*|*n* implies *a*|-*n*, 
> so negative numbers are considered to be divisible 
> by the same numbers their positive counterparts are divisible by.
>        --- http://web.mit.edu/6.857/OldStuff/Fall02/handouts/L07-generators.pdf

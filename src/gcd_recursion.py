#!/usr/bin/env python3
'''
Containing codes for learning Python3
'''


def gcd2(i,j):
    if j == 0:
        k=i
    else:
        k=i%j
    if 0==k:
        return abs(j)
    else: 
        return gcd2(j,k)

def gcd(*i):
    ii=list(i)
    if ii:
        while len(ii) >= 2 :
            j=ii.pop()
            k=ii.pop()
            l=gcd2(j,k)
            ii.append(l)
        return abs(ii[0])
    else:
        return None

def interactiveLoop():
    print("Input some integrals to get their greatest common divisor.  Divide them with spaces.")
    while True:
        numbers=input("Input > ")
        lst=[]
        if len(numbers.split())>0:
            for i in numbers.split():
                lst.append(int(i))
            print(gcd(*tuple(lst)))

if __name__=='__main__':
    interactiveLoop()




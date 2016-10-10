
n = 100

fib = [1,1]

i=2

while i < n:
    fib.append(fib[-2] + fib[-1])
    i += 1


for n in fib:
    print('{0:,}\n'.format(n))

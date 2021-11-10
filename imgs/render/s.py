v = [int(el) for el in input().split()]
t = int(input())
s = set()

for i in range(len(v)   ):
    if (t - v[i]) in s:
        print(v[i], t - v[i])
    s.add(v[i])

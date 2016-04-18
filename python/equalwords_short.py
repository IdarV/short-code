a=dict()
for l in open('words.txt'):a.setdefault(str(sorted(l)),[]).append(l[:-1])
for v in sorted(a.values()):print(', '.join(v))

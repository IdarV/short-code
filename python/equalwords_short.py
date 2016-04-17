a=dict()
for l in open('words.txt', encoding='utf-8'):a.setdefault(''.join(sorted(l)),[]).append(l.strip())
for v in sorted(a.values()):print(', '.join(map(str,v)))
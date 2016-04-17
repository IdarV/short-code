a=dict()
k='\n'
for l in open('words.txt', encoding='utf-8'):a.setdefault(''.join(sorted(l.strip(k))),[]).append(l.strip(k))
for v in sorted(a.values()):print(', '.join(map(str, v)))
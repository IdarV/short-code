a=dict()
for l in open('words.txt',encoding='utf8'):a.setdefault(str(sorted(l)),[]).append(l.strip())
for v in sorted(a.values()):print(', '.join(v))

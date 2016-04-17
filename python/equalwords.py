a = dict()
lines = [line.rstrip('\n') for line in open('words.txt', encoding='utf-8')]

for line in lines:
    a.setdefault(''.join(sorted(line)), []).append(line)

for key, values in a.items():
    values_str = ', '.join(map(str, values))
    print(values_str)
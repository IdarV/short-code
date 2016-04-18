d={}
require('fs').readFileSync('words.txt','utf8').split('\r\n').map(i=>d[i.split('').sort()]+=', '+i)
for(i in d)console.log(d[i].replace([][[]]+', ',''))

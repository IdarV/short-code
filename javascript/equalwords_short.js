d={}
require('fs').readFileSync('words.txt','utf8').split`\r
`.map(i=>d[[...i].sort()]+=', '+i)
for(i in d)console.log(d[i].slice(11))

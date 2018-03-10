d={}
require('fs').readFileSync('../words.txt','utf8').split`
`.map(v=>d[[...v].sort()]+=', '+v)
for(i in d)console.log(d[i].slice(11))
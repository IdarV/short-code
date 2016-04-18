d={}
require('fs').readFileSync('words.txt','utf8').split('\r\n').map(i=>{a=i.split('').sort().join()
d[a]?d[a].push(i):d[a]=[i]});for(i in d)console.log(d[i].join(', '))

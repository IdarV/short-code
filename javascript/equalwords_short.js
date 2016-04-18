var d={}
require('fs').readFileSync('words.txt','utf8').split('\n').map(i=>{i=i.trim();var a=i.split('').sort().join('');d[a]?d[a].push(i):d[a]=[i]})
for(i in d){console.log(d[i].join(', '))}

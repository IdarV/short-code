var fs = require('fs');
var dict = {};
var array = fs.readFileSync('words.txt').toString().split("\n");
for(i in array) {
    var abc_word = array[i].split('').sort().join('');
    if(abc_word in dict){
      dict[abc_word].push(array[i].trim());
    } else {
      dict[abc_word] = [array[i].trim()];
    }
}
for(i in dict){
  console.log(dict[i].join(', '))
}

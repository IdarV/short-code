object EqualwordsShort extends App{var f=io.Source.fromFile(args(0)).getLines.toList;var r=List("");for(i<-f){val s=i.sorted;if(!r.contains(s)){var k=i;for(j<-f)if(j.sorted==s&&j!=i)k+=", "+j;println(k);r=s::r}}}


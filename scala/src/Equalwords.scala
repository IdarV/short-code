object Equalwords extends App {
  val fileLines = io.Source.fromFile("../words.txt").getLines.toList
  var readSorted = List("")

  for (line <- fileLines) {
    val sorted = line.sorted;
    if (!readSorted.contains(sorted)) {
      var anagrams = line

      for (_line <- fileLines) {
        if (_line.sorted == sorted && _line != line) anagrams += ", " + _line
      }

      println(anagrams)
      readSorted = sorted :: readSorted
    }
  }
}
object Equalwords extends App {
  var x = scala.collection.mutable.Map[String, String]()
  val fileLines = io.Source.fromFile("../words.txt").getLines.toList
  for (line <- fileLines) {
    val sortedKey: String = line.split("").sorted.mkString("")
    var value: String = x.getOrElse(sortedKey, "")
    if (value == "") {
      value += line
    } else {
      value += ", " + line
    }
    x(sortedKey) = value
  }

  for (v <- x.values) println(v)
}
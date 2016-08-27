/**
  * Created by idarv on 27/08/16.
  */
object Equalwords extends App {
  var x = scala.collection.mutable.Map[String, String]()
  val fileLines = io.Source.fromFile("../words.txt").getLines.toList
  for (k <- fileLines) {
    val sortedKey: String = k.split("").sorted.mkString("")
    var value: String = x.getOrElse(sortedKey, "")
    if (value == "") {
      value += k
    } else {
      value += ", " + k
    }
    x(sortedKey) = value
  }

  for (v <- x.values) println(v)
}

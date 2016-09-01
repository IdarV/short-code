
object Equalwords extends App {
  val words = io.Source.fromFile("../words.txt").getLines().toList
  val groupedWords = words.groupBy(_.sorted)
  val formattedWords = groupedWords.values.map(_.mkString(", "))

  formattedWords foreach println
}
import java.io.File

val file = File(args[0])
val fileLines = file.readLines()
val sortedMap = fileLines.groupBy({it.toList().sorted().joinToString("")})

sortedMap.values.forEach{println(it.joinToString(", "))}

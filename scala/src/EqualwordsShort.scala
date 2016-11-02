io.Source.fromFile(args(0)).getLines.toSeq.groupBy(_.sorted).values map(_ mkString ", ")map println

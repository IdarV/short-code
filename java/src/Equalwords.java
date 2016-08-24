import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;

public class Equalwords {

    public static void main(String[] args) throws IOException {
        Path path = Paths.get("../words.txt");
        HashMap<String, ArrayList<String>> map = new HashMap<>();

        Files.lines(path).forEach(line -> {
            char[] chars = line.toCharArray();
            Arrays.sort(chars);
            String sorted = new String(chars);

            ArrayList<String> items = map.get(sorted);
            if(items == null){
                items = new ArrayList<>();
            }

            items.add(line);
            map.put(sorted, items);
        });

        for(ArrayList<String> list : map.values()){
            String delim = "";
            for(String string : list) {
                System.out.print(delim + string);
                delim = ", ";
            }
            System.out.println();
        }
    }
}

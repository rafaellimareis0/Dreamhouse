public class StringArrayTest {
    public static List<String> generateStringArray(Integer numberOfStrings) {
        List<String> result = new List<String>();
        
        for (Integer i = 0; i < numberOfStrings; i++) {
            result.add('Test ' + i);
        }
        
        return result;
    }
}
public class ContactAndLeadSearch {
    public static List<List<sObject>> searchContactsAndLeads(String searchKeyword) {
        List<List<sObject>> searchResults = new List<List<sObject>>();

        if (String.isNotBlank(searchKeyword)) {
            List<List<SObject>> searchList = [FIND :searchKeyword IN ALL FIELDS RETURNING Contact(Id, Name), Lead(Id, Name)];

            for (List<SObject> searchResult : searchList) {
                searchResults.add(searchResult);
            }
        }

        return searchResults;
    }
}
public class DailyLeadProcessor implements Schedulable {
    public void execute(SchedulableContext ctx) {
        List<lead> leadstoupdate = new List<lead>();
        List<Lead> leads = [SELECT Id
                            FROM Lead
                            WHERE LeadSource = NULL Limit 200];
        for(Lead l:leads){
            l.LeadSource = 'Dreamforce';
            leadstoupdate.add(l);
        }
        update leadstoupdate;
    }
}
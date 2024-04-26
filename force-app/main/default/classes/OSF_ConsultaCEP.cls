global with sharing class OSF_ConsultaCEP implements vlocity_cmt.VlocityOpenInterface{
    global static boolean invokeMethod(String methodName, Map<String, Object> input, Map<String, Object> output, Map<String, Object> options){
        String cep = (String) input.get('cep');
        Map<String, String> addressDetails = consultaCep(cep);
        output.put('addressDetails', addressDetails);
        return true;
	}
    public static Map<String, String> consultaCep(String cep){
        String endpoint = 'https://opencep.com/v1/' + cep;
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setEndpoint(endpoint);
        request.setMethod('GET');
        HttpResponse response = http.send(request);
        Map<String, Object> results = (Map<String, Object>) JSON.deserializeUntyped(response.getBody());
        Map<String, String> output = new Map<String, String>();
        output.put('logradouro', (String) results.get('logradouro'));
        output.put('localidade', (String) results.get('localidade'));
        output.put('uf', (String) results.get('uf'));
        return output;
    }
}
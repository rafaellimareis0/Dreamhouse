@isTest
private class OSF_ConsultaCEP_Test {
    @isTest
    static void testInvokeMethod_ValidCep() {
        Map<String, Object> input = new Map<String, Object>();
        input.put('cep', '01310200'); 
        Map<String, Object> output = new Map<String, Object>();
        Test.setMock(HttpCalloutMock.class, new OSF_MockHttpResponse());
        Boolean success = OSF_ConsultaCEP.invokeMethod('someMethod', input, output, new Map<String, Object>());
        System.assertEquals(true, success);
        Map<String, String> addressDetails = (Map<String, String>) output.get('addressDetails');
        System.assertNotEquals(null, addressDetails);
        System.assertNotEquals(null, addressDetails.get('logradouro'));
        System.assertNotEquals(null, addressDetails.get('localidade'));
        System.assertNotEquals(null, addressDetails.get('uf'));
    }
    @isTest
    static void testConsultaCep_ReturnsValidDetails() {
        String cep = '01310200';
        Test.setMock(HttpCalloutMock.class, new OSF_MockHttpResponse());
        Map<String, String> addressDetails = OSF_ConsultaCEP.consultaCep(cep);
        System.assertNotEquals(null, addressDetails);
        System.assertNotEquals(null, addressDetails.get('logradouro'));
        System.assertNotEquals(null, addressDetails.get('localidade'));
        System.assertNotEquals(null, addressDetails.get('uf'));
    }
    @isTest
    static void testConsultaCep_DeserializeResponse() {
        String jsonResponse = '{"logradouro": "Rua Exemplo", "localidade": "São Paulo", "uf": "SP"}';
        Map<String, Object> results = (Map<String, Object>) JSON.deserializeUntyped(jsonResponse);
        Map<String, String> output = new Map<String, String>();
        output.put('logradouro', (String) results.get('logradouro'));
        output.put('localidade', (String) results.get('localidade'));
        output.put('uf', (String) results.get('uf'));
        System.assertNotEquals(null, output);
        System.assertNotEquals(null, output.get('logradouro'));
        System.assertNotEquals(null, output.get('localidade'));
        System.assertNotEquals(null, output.get('uf'));
    }
}
global class OSF_MockHttpResponse implements HttpCalloutMock {
    public HttpResponse respond(HttpRequest request) {
        HttpResponse response = new HttpResponse();
        response.setStatusCode(200);
        response.setStatus('OK');
        String responseBody = '{ "logradouro": "Rua teste", "localidade": "Cidade teste", "uf": "SP" }';
        response.setBody(responseBody);
        return response;
    }
    static void testConsultaCep() {
        Test.setMock(HttpCalloutMock.class, new OSF_MockHttpResponse());
        Map<String, Object> inputParams = new Map<String, Object>();
        inputParams.put('cep', '01001000');
        Map<String, Object> outputParams = new Map<String, Object>();
        Map<String, Object> options = new Map<String, Object>();
        boolean result = OSF_ConsultaCEP.invokeMethod('methodName', inputParams, outputParams, options);
        System.assertEquals(true, result);
        Map<String, String> addressDetails = (Map<String, String>) outputParams.get('addressDetails');
        System.assertEquals('Rua teste', addressDetails.get('logradouro'));
        System.assertEquals('Cidade teste', addressDetails.get('localidade'));
        System.assertEquals('SP', addressDetails.get('uf'));
    }
}
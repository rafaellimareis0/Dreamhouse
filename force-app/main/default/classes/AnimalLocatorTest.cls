@isTest
private class AnimalLocatorTest {
@isTest static void getAnimalNameByIdTest() {
	Test.setMock(HttpCalloutMock.class, new AnimalLocatorMock());
    String response = AnimalLocator.getAnimalNameById(0);
    System.assertEquals('chicken', response);
}
}
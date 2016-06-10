@isTest
private class EnglishStudyControllerTest {
  
    private static User testAdminUser = new User(Id = UserInfo.getUserId());
    
    /**
     * コンストラクタ
     */
    static testMethod void EnglishStudyControllerTest() {
        
        System.runAs(testAdminUser) {

            Test.startTest();
            
            EnglishStudyController cls = new EnglishStudyController();
            
            Test.stopTest();
        }
    }

    /**
     * 英語表取得
     */
    static testMethod void getEnglishTableListTest() {
        
        System.runAs(testAdminUser) {

            Test.startTest();
            
            Id recordId = null;
            List<EnglishTable__c> results = EnglishStudyController.getEnglishTableList(recordId);
            
            Test.stopTest();

            System.assertEquals(results.isEmpty(), true);
        }
    }
}
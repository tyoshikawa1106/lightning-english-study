@isTest
private class EnglishStudyDaoTest {

    private static User testAdminUser = new User(Id = UserInfo.getUserId());
    private static EnglishStudyDao dao = new EnglishStudyDao();
    
    /**
     * 英語表取得
     */
    static testMethod void getEnglishTableList() {
        
        System.runAs(testAdminUser) {

            Test.startTest();
            
            Id recordId = null;
            List<EnglishTable__c> results = dao.getEnglishTableList(recordId);
            
            Test.stopTest();

            System.assertEquals(results.isEmpty(), true);
        }
    }
}
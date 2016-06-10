public with sharing class EnglishStudyController {

    private static EnglishStudyDao dao = new EnglishStudyDao();
    
    /**
     * コンストラクタ
     */
    public EnglishStudyController() {
        
    }
    
    /**
     * 英語表取得
     */
    @AuraEnabled
    public static List<EnglishTable__c> getEnglishTableList(Id recordId) {
        return dao.getEnglishTableList(recordId);
    }
}
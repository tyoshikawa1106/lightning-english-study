public with sharing class EnglishStudyDao {

    /**
     * コンストラクタ
     */
    public EnglishStudyDao() {
        
    }

    /**
     * 英語表取得
     */
    public List<EnglishTable__c> getEnglishTableList(Id recordId) {
        return [
            SELECT
                 Id
                ,Japanese__c
                ,English__c
            FROM
                EnglishTable__c
            WHERE
                Book__c =: recordId
            ORDER BY Name ASC
            LIMIT 1000
        ];
    }
}
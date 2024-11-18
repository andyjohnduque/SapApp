using btp.l as dm from '../db/data-model';


service SampleService{
    //entity Portfolio_Land as projection on dm.PORTFOLIO_LAND;

    //entity Portfolio_Land as select from dm.PORTFOLIO_LAND;
    @odata.draft.enabled
    entity UTILITY_TYPE as select from dm.UTILITY_TYPE;
    entity API_COMPANYCODE_SRV as select from dm.API_COMPANYCODE_SRV;
    entity INPUT_GENERAL as select from dm.INPUT_GENERAL;
    entity INPUT_PARTICIPATING as select from dm.INPUT_PARTICIPATING;
    entity RENTAL_OBJECTS as select from dm.RENTAL_OBJECTS;
    entity SETTLEMENT as select from dm.SETTLEMENT;

    //annotate Portfolio_Land with @odata.draft.enabled;
    // annotate dm.INPUTFields with @(){
    //     SETTLEMENT_ID    @title : 'Settlement ID';
    //     UTILITY_TYPE  @title : 'Utility Type';
    //     SUPPLIER_INVOICE_NO    @title : 'Invoice';
    // } 
    
    annotate dm.UTILITY_TYPE with @(){
        M_TYPE    @title : 'Measurement Type';
        M_NAME  @title : 'Measurement Name';
        UNIT    @title : 'Unit of Measurement';
    } 

    annotate dm.INPUT_GENERAL with @(
        SelectionFields : [
            SETTLEMENT_ID,
            ACTIVITY,
            UTILITY_TYPE,
            COMPANY_CODE_FR,
            COMPANY_CODE_TO,
            SUPPLIER_INVOICE_NO,
            NET_OF_TAX_AMOUNT,
            DOCUMENT_DATE,
            TOTAL_CONSUMPTION,
            UNIT
        ]
    ){
        SETTLEMENT_ID @title : 'SETTLEMENT_ID'; 
        ACTIVITY @title : 'ACTIVITY';
        UTILITY_TYPE @title : 'UTILITY_TYPE';
        COMPANY_CODE_FR @title : 'COMPANY_CODE_FR';
        COMPANY_CODE_TO @title : 'COMPANY_CODE_TO';
        SUPPLIER_INVOICE_NO @title : 'SUPPLIER_INVOICE_NO';
        NET_OF_TAX_AMOUNT @title : 'NET_OF_TAX_AMOUNT';
        DOCUMENT_DATE @title : 'DOCUMENT_DATE';
        TOTAL_CONSUMPTION @title : 'TOTAL_CONSUMPTION';
        UNIT @title : 'UNIT';
    }

    annotate dm.INPUT_PARTICIPATING with @(
        SelectionFields : [
            BUSINESS_ENTITY_FR,
            BUSINESS_ENTITY_TO,
            BUILDING_FR,
            BUILDING_TO,
            LAND_FR,
            LAND_TO
        ]
    ){
        BUSINESS_ENTITY_FR @title : 'BUSINESS_ENTITY_FR'; 
        BUSINESS_ENTITY_TO @title : 'BUSINESS_ENTITY_TO';
        BUILDING_FR @title : 'BUSINESS_ENTITY_FR'; 
        BUILDING_TO @title : 'BUILDING_TO';
        LAND_FR @title : 'LAND_FR'; 
        LAND_TO @title : 'LAND_TO';
    }
    annotate dm.RENTAL_OBJECTS with @(
        SelectionFields : [
            COMPANY_CODE,
            BUSINESS_ENTITY,
            BUSINESS_ENTITY_NAME,
            BUILDING,
            BUILDING_NAME,
            LAND,
            LAND_NAME,
            RENTAL_OBJECTS,
            RENTAL_OBJECT_NAME,
            USAGE_TYPE,
            EXCLUDE
        ]
    ){
        COMPANY_CODE @title : 'COMPANY_CODE'; 
        BUSINESS_ENTITY @title : 'BUSINESS_ENTITY';
        BUSINESS_ENTITY_NAME @title : 'BUSINESS_ENTITY_NAME'; 
        BUILDING @title : 'BUILDING';
        BUILDING_NAME @title : 'BUILDING_NAME'; 
        LAND @title : 'LAND';
        LAND_NAME @title : 'LAND_NAME'; 
        RENTAL_OBJECTS @title : 'RENTAL_OBJECTS';
        RENTAL_OBJECT_NAME @title : 'RENTAL_OBJECT_NAME'; 
        USAGE_TYPE @title : 'USAGE_TYPE';
        EXCLUDE @title : 'EXCLUDE'; 
    }
    annotate dm.SETTLEMENT with @(
        SelectionFields : [
            SETTLEMENT_START,
            SETTLEMENT_END,
            APPORTIONMENT_FORMULA,
            Mark_Up_Method,
            Posting_Date,
            Due_Date
        ]
    ){
        
        SETTLEMENT_START @title : 'SETTLEMENT_START';
        SETTLEMENT_END @title : 'SETTLEMENT_END';
        APPORTIONMENT_FORMULA @title : 'APPORTIONMENT_FORMULA';
        Mark_Up_Method @title : 'Mark_Up_Method';
        Posting_Date @title : 'Posting_Date';
        Due_Date @title : 'Due_Date';
    }
}
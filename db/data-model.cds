namespace btp.l;

entity PORTFOLIO_LAND
{
    key ID : String(36);
    LAND_CODE : String(8);
}

entity UTILITY_TYPE
{
    key M_TYPE : String(10);
    M_NAME : String(50);
    UNIT : String(5);
}

entity API_COMPANYCODE_SRV
{
    key COMPANY_CODE : String(4);
    COMPANY_NAME : String(50);
}

entity INPUT_GENERAL
{
    key IG_ID : String(24);
    SETTLEMENT_ID : String(40);
    ACTIVITY : String(40);
    UTILITY_TYPE : String(5);
    COMPANY_CODE_FR : Integer;
    COMPANY_CODE_TO : Integer;
    SUPPLIER_INVOICE_NO : String(10);
    NET_OF_TAX_AMOUNT : Double;
    DOCUMENT_DATE : Date;
    TOTAL_CONSUMPTION : Double;
    UNIT : String(3);
}

entity INPUT_PARTICIPATING
{
    key IP_ID : String(24);
    BUSINESS_ENTITY_FR : String(10);
    BUSINESS_ENTITY_TO : String(30);
    BUILDING_FR : String(10);
    BUILDING_TO : String(30);
    LAND_FR : String(10);
    LAND_TO : String(20);
}

entity RENTAL_OBJECTS
{
    key RO_ID : String(24);
    COMPANY_CODE : String(10);
    BUSINESS_ENTITY : String(10);
    BUSINESS_ENTITY_NAME : String(30);
    BUILDING : String(10);
    BUILDING_NAME : String(30);
    LAND : String(10);
    LAND_NAME : String(40);
    RENTAL_OBJECTS : String(10);
    RENTAL_OBJECT_NAME : String(30);
    USAGE_TYPE : String(10);
    EXCLUDE : String(1);
}

entity SETTLEMENT
{
    key S_ID : String(24);
    SETTLEMENT_START : Date;
    SETTLEMENT_END : Date;
    APPORTIONMENT_FORMULA : String(30);
    Mark_Up_Method : String(10);
    Posting_Date : Date;
    Due_Date : Date;
}

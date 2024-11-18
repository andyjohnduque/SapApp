using SampleService as service from '../../srv/srvc1';
annotate service.RENTAL_OBJECTS with @(
    UI.SelectionFields #filterBarMacro : [
    ],
    UI.LineItem #tableMacro : [
        {
            $Type : 'UI.DataField',
            Value : BUILDING,
            Label : 'BUILDING',
        },
        {
            $Type : 'UI.DataField',
            Value : BUILDING_NAME,
            Label : 'BUILDING_NAME',
        },
        {
            $Type : 'UI.DataField',
            Value : BUSINESS_ENTITY,
            Label : 'BUSINESS_ENTITY',
        },
        {
            $Type : 'UI.DataField',
            Value : BUSINESS_ENTITY_NAME,
            Label : 'BUSINESS_ENTITY_NAME',
        },
        {
            $Type : 'UI.DataField',
            Value : COMPANY_CODE,
            Label : 'COMPANY_CODE',
        },
        {
            $Type : 'UI.DataField',
            Value : LAND,
            Label : 'LAND',
        },
        {
            $Type : 'UI.DataField',
            Value : LAND_NAME,
            Label : 'LAND_NAME',
        },
        {
            $Type : 'UI.DataField',
            Value : RENTAL_OBJECT_NAME,
            Label : 'RENTAL_OBJECT_NAME',
        },
        {
            $Type : 'UI.DataField',
            Value : RENTAL_OBJECTS,
            Label : 'RENTAL_OBJECTS',
        },
        {
            $Type : 'UI.DataField',
            Value : USAGE_TYPE,
            Label : 'USAGE_TYPE',
        },
        {
            $Type : 'UI.DataField',
            Value : EXCLUDE,
            Label : 'EXCLUDE',
        },
    ],
);

annotate service.INPUT_GENERAL with @(
    UI.SelectionFields #filterBarMacro : [
        ACTIVITY,
        UTILITY_TYPE,
        SETTLEMENT_ID,
        COMPANY_CODE_FR,
        COMPANY_CODE_TO,
        DOCUMENT_DATE,
        NET_OF_TAX_AMOUNT,
        SUPPLIER_INVOICE_NO,
        TOTAL_CONSUMPTION,
        UNIT,
    ]
);

annotate service.INPUT_PARTICIPATING with @(
    UI.SelectionFields #filterBarMacro : [
        BUILDING_FR,
        BUILDING_TO,
        BUSINESS_ENTITY_FR,
        BUSINESS_ENTITY_TO,
        LAND_FR,
        LAND_TO,
    ]
);

annotate service.SETTLEMENT with @(
    UI.SelectionFields #filterBarMacro : [
        SETTLEMENT_START,
        SETTLEMENT_END,
        APPORTIONMENT_FORMULA,
        Due_Date,
        Posting_Date,
        Mark_Up_Method,
    ]
);

annotate service.INPUT_GENERAL with {
    ACTIVITY @Common.Label : 'ACTIVITY'
};

annotate service.INPUT_GENERAL with {
    COMPANY_CODE_FR @Common.Label : 'COMPANY_CODE_FR'
};

annotate service.INPUT_GENERAL with {
    COMPANY_CODE_TO @Common.Label : 'COMPANY_CODE_TO'
};

annotate service.INPUT_GENERAL with {
    DOCUMENT_DATE @Common.Label : 'DOCUMENT_DATE'
};

annotate service.INPUT_GENERAL with {
    NET_OF_TAX_AMOUNT @Common.Label : 'NET_OF_TAX_AMOUNT'
};

annotate service.INPUT_GENERAL with {
    SETTLEMENT_ID @Common.Label : 'SETTLEMENT_ID'
};

annotate service.INPUT_GENERAL with {
    SUPPLIER_INVOICE_NO @Common.Label : 'SUPPLIER_INVOICE_NO'
};

annotate service.INPUT_GENERAL with {
    TOTAL_CONSUMPTION @Common.Label : 'TOTAL_CONSUMPTION'
};

annotate service.INPUT_GENERAL with {
    UNIT @Common.Label : 'UNIT'
};

annotate service.INPUT_GENERAL with {
    UTILITY_TYPE @Common.Label : 'UTILITY_TYPE'
};

annotate service.INPUT_PARTICIPATING with {
    BUILDING_FR @Common.Label : 'BUILDING_FR'
};

annotate service.INPUT_PARTICIPATING with {
    BUILDING_TO @Common.Label : 'BUILDING_TO'
};

annotate service.INPUT_PARTICIPATING with {
    BUSINESS_ENTITY_FR @Common.Label : 'BUSINESS_ENTITY_FR'
};

annotate service.INPUT_PARTICIPATING with {
    BUSINESS_ENTITY_TO @Common.Label : 'BUSINESS_ENTITY_TO'
};

annotate service.INPUT_PARTICIPATING with {
    LAND_FR @Common.Label : 'LAND_FR'
};

annotate service.INPUT_PARTICIPATING with {
    LAND_TO @Common.Label : 'LAND_TO'
};

annotate service.SETTLEMENT with {
    SETTLEMENT_END @Common.Label : 'SETTLEMENT_END'
};

annotate service.SETTLEMENT with {
    SETTLEMENT_START @Common.Label : 'SETTLEMENT_START'
};

annotate service.SETTLEMENT with {
    APPORTIONMENT_FORMULA @Common.Label : 'APPORTIONMENT_FORMULA'
};

annotate service.SETTLEMENT with {
    Due_Date @Common.Label : 'Due_Date'
};

annotate service.SETTLEMENT with {
    Posting_Date @Common.Label : 'Posting_Date'
};

annotate service.SETTLEMENT with {
    Mark_Up_Method @Common.Label : 'Mark_Up_Method'
};

annotate service.SETTLEMENT with {
    S_ID @Common.Label : 'S_ID'
};


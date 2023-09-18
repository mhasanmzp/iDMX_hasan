namespace idmx;
entity material {
    Sno                       : Int64  ;
    Material                  : String(50);
    MaterialType              : String(50);
    IndustrySector            : String(50);
    Description               : String(500);
    BaseUnitOfMeasure         : String(20);
    MaterialGroup             : String(50);
    WeightUnit                : String(50);
    Plant                     : String(50);
    StorageLocation           : String(100);
    PurchasingGroup           : String(100);
    BatchManagement           : Boolean;
    AutomaticPO               : Boolean;
    GRProcessingTime          : Time;
    valuationClass            : String(50);
    PriceControl              : String(50);
    MovingPrice_StandardPrice : String(50);
    SalesOrganisation         : String(50);
    DistributionChannel       : String(50);
    Division                  : String(50);
    AccountAssignmentGroup    : String(50);
    ItemCategoryGroup         : String(50);
    AvailabilityCheck         : String(50);
    LoadingGroup              : String(50);
    TransportationGroup       : String(50);
    MRPGroup                  : String(50);
    MRPType                   : String(50);
    MRPController             : String(50);
    LotSizingProcedure        : String(50);
    MinLotSize                : String(50);
    MaxLotSize                : String(50);
    ProcurementType           : String(50);
    MRP2GRProcessingTime      : Time;
    MRP3AvailabilityCheck     : String(50);
    InspectionInterval        : String(50);
    QMControlKey              : String(50);

}

entity customer {
        Sno                      : Integer64;
        AccountGroup             : String(50);
        Name                     : String(50);
        Name2                    : String(50);
        SearchTerm               : String(50);
        HouseNumber              : Int64;
        Street                   : String(50);
        Street2                  : String(50);
        City                     : String(50);
        District                 : String(50);
        PostalCode               : Int64;
        Country                  : String(50);
        Region                   : String(50);
        Mobile                   : Integer64;
        Telephone                : Integer;
        Email                    : String(50);
        TransportationZone       : String(50);
        CompanyCode              : Integer;
        ReconciliationAccount    : String(50);
        TermsOfPayment           : String(50);
        PaymentMode              : String(50);
        DunningProcedure         : String(50);
        SalesOrganisation        : String(50);
        DistributionChannel      : String(50);
        Division                 : String(50);
        SalesDistrict            : String(50);
        Currency                 : String(50);
        PriceGroup               : String(50);
        CustomerPricingProcedure : String(50);
        ShippingCondition        : String(50);
        Incoterms                : String(50);
        Incoterms1               : String(50);
        TaxClassifications       : String(50);
        AcctAssmtGrpCust         : String(50);
        InspectionInterval       : String(50);
        PR                       : String(50);
        PartnerFunction          : String(50);
        PartnerNumber            : Integer;
        Description              : String(100);
}

entity Vendor {

        Sno                     :Integer64;

    Vendor_Account_Group  : String(50);
    Vendor_Name           : String(50);
    Search_Term           : String(50);
    Vendor_Setup_Reason   : String(50);
    Address               : String(50);
    House_No              : Integer;
    Street                : String(50);
    Postal_Code           : Integer;
    City_Name             : String(50);
    Country_Region        : String(50);
    Region                : String(50);
    Phone_No              : Integer64;
    Mobile_No             : Integer64;
    Email_Address         : String(50);
    Bank_Key              : String(50);
    Bank_Account_No       : Integer64;
    Bank_Name             : String(50);
    Compan_Code           : Integer;
    Reconciliation_Account: String;
    Sort_Key              : String(50);
    Double_Invoice_Check  : String(50);
    Payment_Term          : String(50);
    Purchas_Org           : String(50);
    Currency              : String(50);
    Shipping_Condition    : String(50);
    Incoterm              : String(50);
    Incoterm_1            : String(50);
    Purchasing_Group      : String(50);
    Automatic_PO          : String(50);
    Payment_Term_2        : String(50);
    Schema_Group          : String(50);
    Business_partner      : String(50);


}

entity Article {

    Sno                     :Integer64;
    Material_Number         : String(50);
    Material_Type           : String(50);
    Material_Group          : String(50);
    Material_Category       : String(50);
    Description             : String(50);
    Base_UoM                : String(50);
    Old_Material_No         : Integer;
    Gross_Weight            : Integer;
    Net_Weight              : Integer;
    Weight_Unit             : String(50);
    Loading_Group           : String(50);
    EAN_Number              : Integer;
    Tax_classification      : Integer;
    Listing_Procedure_DC    : String(50); 
    listed_from_DC          : Date;
    for_sale_from_DC        : Date;
    for_sale_till_DC        : Date;
    Listing_Procedure       : String(50);
    listed_to               : Date;
    for_sale_from           : Date;
    price_list              : Integer;
    Sales_org               : String(50);
    Dist_channel            : String(50);
    Plant                   : String(50);
    MRP_Type_DC             : String(50);
    Lot_sizing_proc_DC      : Integer;
    MRP_Controller_DC       : String(50);
    MRP_Type                : String(50);
    Lot_sizing_proc         : String(50); 
MRP_Controller              : String(50);


}
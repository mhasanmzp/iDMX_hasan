using idmx from '../db/schema';

service services {
    entity MaterialData as projection on idmx.material;
    entity CustomerData as projection on idmx.customer;
    entity Vendor as projection on idmx.Vendor;
    entity Article as projection on idmx.Article;
    // entity Country as projection on idmx.Country;
    entity Country as select from idmx.Country where Country_name  = 'AE_Utd_Arab_Emir';
    entity Account_Group as projection on idmx.Account_Group;
    // entity materialType as select from idmx.material {
    //     key MaterialType
    // };

    entity IndustrySector {
        key IndustrySector : String;
    }

    entity materialReadData {
        Sno               : Integer64;
        Material          : String(50);
        MaterialType      : String(50);
        IndustrySector    : String(50);
        Description       : String(500);
        BaseUnitOfMeasure : String(20);
        MaterialGroup     : String(50);
    }

    entity materialWriteData {
        Sno               : Integer64;
        Material          : String(50);
        MaterialType      : String(50);
        IndustrySector    : String(50);
        Description       : String(500);
        BaseUnitOfMeasure : String(20);
        MaterialGroup     : String(50);
    }

    entity customerReadData {
        Sno          : Integer64;
        AccountGroup : String(50);
        Name         : String(50);
        Name2        : String(50);
        SearchTerm   : String(50);
        HouseNumber  : Int64;
        Street       : String(50);
        Street2      : String(50);
        City         : String(50);
        District     : String(50);
        PostalCode   : Int64;
        Country      : String(50);
    }

    entity customerWriteData {
        Sno          : Integer64;
        AccountGroup : String(50);
        Name         : String(50);
        Name2        : String(50);
        SearchTerm   : String(50);
        HouseNumber  : Int64;
        Street       : String(50);
        Street2      : String(50);
        City         : String(50);
        District     : String(50);
        PostalCode   : Int64;
        Country      : String(50);
    }

    /*action ExcelUpload (data : String) returns { /// Old Action
        Status : Integer
    };

    action ExcelRead (data : String) returns {  ////// Action for ExcelRead Data
        Status : Integer
    };*/


     entity ExcelReadData{  /// Service to read Excel data
        Sno               : Integer64;
        Material          : String(50);
        MaterialType      : String(50);
        IndustrySector    : String(50);
        Description       : String(500);
        BaseUnitOfMeasure : String(20);
        MaterialGroup     : String(50);
    };
     entity VendorReadData
     {

           Sno               : Integer64;
           Vendor_Account_Group  : String(50);
           Vendor_Name           : String(50);
            Search_Term           : String(50);
            Vendor_Setup_Reason   : String(50);
            Address               : String(50);
            House_No              : Integer;
     }
     entity VendorWriteData
     {
            Sno               : Integer64;
            Vendor_Account_Group  : String(50);
            Vendor_Name           : String(50);
            Search_Term           : String(50);
            Vendor_Setup_Reason   : String(50);
            Address               : String(50);
     } 

    entity ArticleWriteData{

    Sno               : Integer64;
    Material_Number         : String(50);
    Material_Type           : String(50);
    Material_Group          : String(50);
    Material_Category       : String(50);
    Description             : String(50);    
    }

     entity ArticleReadData{
    
    Sno               : Integer64;
    Material_Number         : String(50);
    Material_Type           : String(50);
    Material_Group          : String(50);
    Material_Category       : String(50);
    Description             : String(50);    
    }
}

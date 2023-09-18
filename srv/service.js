const cds = require("@sap/cds");
const xlsx =require("xlsx");
const fs = require("fs");
const bodyParser =require("body-parser");
class services extends cds.ApplicationService {
    async init() {
        const db = await cds.connect.to("db");
        console.log(db)
    
        const { material, customer ,Vendor,Article} = cds.entities("idmx");

        this.on("READ", "IndustrySector", async (req) => {
            console.log("test1")
            let results = await SELECT.from(material);
            console.log("test2")
            console.log(JSON.stringify(results));
            return results;
    });

        this.on("READ", "materialReadData", async (req) => {
            console.log("test1")
            let results = await SELECT.from(material);
            console.log("test2")
            console.log(JSON.stringify(results));
            return results;
        });

        this.on("READ", "materialWriteData", async (req) => {
            let approvedata = [
                {
                    Sno: 5,
                    Material: "Guava",
                    MaterialType: "Fruit",
                    IndustrySector: "Fruit",
                    Description: "Fruit",
                    BaseUnitOfMeasure: "Fruit",
                    MaterialGroup: "Fruit",
                },
            ];

            for (var i = 0; i < approvedata.length; i++) {
                await INSERT.into(material)
                    .columns("Sno",
                        "Material",
                        "MaterialType",
                        "IndustrySector",
                        "Description",
                        "BaseUnitOfMeasure",
                        "MaterialGroup"
                    )
                    .values(
                        approvedata[i]["Sno"],
                        approvedata[i]["Material"],
                        approvedata[i]["MaterialType"],
                        approvedata[i]["IndustrySector"],
                        approvedata[i]["Description"],
                        approvedata[i]["BaseUnitOfMeasure"],
                        approvedata[i]["MaterialGroup"],

                    );
            }

            let results = await SELECT.from(material);
            return results;
        });
        this.on("READ", "customerReadData", async (req) => {
            let results = await SELECT.from(customer);
            console.log(JSON.stringify(results));
            return results;
        });

        this.on("READ", "customerWriteData", async (req) => {
            let approvedata = [
                {
                    Sno: 100,
                    AccountGroup: "thela",
                    Name: "vivek",
                    Name2: "vivek2",
                    SearchTerm: "v",
                    HouseNumber: 121,
                    Street: "noidea",
                    Street2: "noidea",
                    City: "delhi",
                    District: "delhi",
                    PostalCode: 201001,
                    Country: "Bharat",
                },
            ];

            for (var i = 0; i < approvedata.length; i++) {
                await INSERT.into(customer)
                    .columns("Sno",
                        "AccountGroup",
                        "Name",
                        "Name2",
                        "SearchTerm",
                        "HouseNumber",
                        "Street",
                        "Street2",
                        "City",
                        "District",
                        "PostalCode",
                        "Country"
                    )
                    .values(
                        approvedata[i]["Sno"],
                        approvedata[i]["AccountGroup"],
                        approvedata[i]["Name"],
                        approvedata[i]["Name2"],
                        approvedata[i]["SearchTerm"],
                        approvedata[i]["HouseNumber"],
                        approvedata[i]["Street"],
                        approvedata[i]["Street2"],
                        approvedata[i]["City"],
                        approvedata[i]["District"],
                        approvedata[i]["PostalCode"],
                        approvedata[i]["Country"],

                    );
            }

            let results = await SELECT.from(customer);
            return results;
        });
        /*this.on("ExcelUpload", async (req) => {
            let {data}=req.data;
            let y = xlsx.read(data, { type: 'string' })
           var materialSheetJson = xlsx.utils.sheet_to_json(y)
        //     res.send(materialSheetJson)
        let approvedata = JSON.parse(data);
        console.log(approvedata);

        });*/

        this.on("READ","ExcelReadData", async (req) => { 
        // const data = fs.readFileSync("./data/material.xlsx");

        let xldata = fs.readFileSync("/home/user/projects/IDMx-1/db/data/materialdata.xlsx");
        let workbook = xlsx.read(xldata.buffer, { type: 'buffer' });
        let file1 = workbook.SheetNames[0];
        let file2 = workbook.Sheets[file1];
        let approvedata = xlsx.utils.sheet_to_json(file2);
        console.log(approvedata);

        ////////////////////////////// Inserting Data into DATABASE /////////////////////////////

        for (var i = 0; i < approvedata.length; i++) {
            await INSERT.into(material)
                .columns("Sno",
                    "Material",
                    "MaterialType",
                    "IndustrySector",
                    "Description",
                    "BaseUnitOfMeasure",
                    "MaterialGroup"
                )
                .values(
                    approvedata[i]["Sno"],
                    approvedata[i]["Material"],
                    approvedata[i]["MaterialType"],
                    approvedata[i]["IndustrySector"],
                    approvedata[i]["Description"],
                    approvedata[i]["BaseUnitOfMeasure"],
                    approvedata[i]["MaterialGroup"],

                );
        }

        let results = await SELECT.from(material);
        return results;
    
       


        });

        
        this.on("ExcelRead", async (req) => {

            let xldata = fs.readFileSync("/home/user/projects/IDMx-1/db/data/materialdata.xlsx");
            let workbook = xlsx.read(xldata.buffer, { type: 'buffer' });
            let file1 = workbook.SheetNames[0];
            let file2 = workbook.Sheets[file1];
            let approvedata = xlsx.utils.sheet_to_json(file2);
            console.log(approvedata);
        
        });
        this.on("READ", "VendorReadData", async (req) => {
            console.log("sucess")
            let results = await SELECT.from(Vendor);
            console.log("test2")
            console.log(JSON.stringify(results));
            return results;
        });
        this.on("READ", "VendorWriteData", async (req) => {
            let approvedata = [
                {
                    Sno                   : "7",
                    Vendor_Account_Group  : "Mckinsol",
                    Vendor_Name           : "Neuvays",
                    Search_Term           : "Salary",
                    Vendor_Setup_Reason   : "Sales",
                    Address               : "Block",      
                },
            ]

            for (var i = 0; i < approvedata.length; i++) {
                await INSERT.into(Vendor).columns(
                    "Sno",
                    "Vendor_Account_Group",
                    "Vendor_Name",          
                    "Search_Term",         
                    "Vendor_Setup_Reason",
                    "Address",  
            )
            .values(
                approvedata[i]["Sno"],
                approvedata[i]["Vendor_Name"],
                approvedata[i]["Search_Term"],
                approvedata[i]["Vendor_Setup_Reason"],
                approvedata[i]["Address"],
            );
    }

    let results = await SELECT.from(Vendor);
            return results;

        });
        this.on("READ", "ArticleReadData", async (req) => {
            console.log("sucess")
            let results = await SELECT.from(Article);
            console.log("test2")
            console.log(JSON.stringify(results));
            return results;
        });


        this.on("READ", "ArticleWriteData", async (req) => {
            let approvedata = [
                {   
                    Sno              : "9", 
                    Material_Number  : "Mckinsol",
                    Material_Type    : "Neuvays",
                    Material_Group    : "Salary",
                    Material_Category : "Sales",
                    Description       : "Block",      
                },
            ]
            for (var i = 0; i < approvedata.length; i++) {
                await INSERT.into(Article).columns(
                    "Sno",
                    "Material_Number",
                    "Material_Type" ,
                    "Material_Group",
                    "Material_Category" ,
                    "Description",
            )
            .values(
                approvedata[i]["Sno"],
                approvedata[i]["Material_Number"],
                approvedata[i]["Material_Type"],
                approvedata[i]["Material_Group"],
                approvedata[i]["Material_Category"],
                approvedata[i]["Description"],
            );
    }

    let results = await SELECT.from(Article);
            return results;

        });
        await super.init();
    }
}
        
    
  
module.exports = { services };
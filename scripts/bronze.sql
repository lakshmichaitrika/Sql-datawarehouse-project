/* Inside the Bronze schema creating tables 
crm_cust_info 
crm_prd_info
crm_sales_details
erp_cust_az12
erp_loc_a101
erp_px_cat_g1v2
with similar columns in the excelsheet
*/
CREATE TABLE IF NOT EXISTS bronze.crm_cust_info
(
    cst_id integer,
    cst_key character varying(50),
    cst_firstname character varying(50),
    cst_lastname character varying(50),
    cst_material_status character varying(50),
    cst_gndr character varying(50) ,
    cst_create_date date,
	
)

CREATE TABLE  IF NOT EXISTS bronze.crm_prd_info(
prd_id INT,
prd_key VARCHAR(50),
prd_nm VARCHAR(50),
prd_cost INT,
prd_line VARCHAR(50),
prd_start_dt DATE,
prd_end_dt DATE,

)

CREATE TABLE IF NOT EXISTS bronze.crm_sales_details
(
    sls_ord_num character varying(50) COLLATE pg_catalog."default",
    sls_prd_key character varying(50) COLLATE pg_catalog."default",
    sls_cust_id integer,
    sls_order_dt integer,
    sls_ship_dt integer,
    sls_due_dt integer,
    sls_sales integer,
    sls_quantity integer,
    sls_price integer,
	
)

CREATE TABLE  IF NOT EXISTS bronze.erp_cust_az12(
cid VARCHAR(50),
bdate DATE,
gen VARCHAR(50),

);



CREATE TABLE  IF NOT EXISTS bronze.erp_loc_a101(
cid VARCHAR(50),
cntry VARCHAR(50),

);


CREATE TABLE IF NOT EXISTS bronze.erp_px_cat_g1v2
(
    id character varying(50) COLLATE pg_catalog."default",
    cat character varying(50) COLLATE pg_catalog."default",
    subcat character varying(50) COLLATE pg_catalog."default",
    maintenance character varying(50) COLLATE pg_catalog."default",

)



 


/* After creating the tables =>
    -To import the data rigth-click on the table a click on Import/Export option 
    -Navigate to csv file and select the table 
    -Select header and click continue 
    - Data will be importerd
*/

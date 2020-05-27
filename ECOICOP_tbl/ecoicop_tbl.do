* Author: Federico Rodari
* Description: creation of ECOICOP table for different levels of depth
* Date: 27-05-2020
* Status: deployed

*** INTRODUCTION ***

clear all

cd "C:\Users\rodarif\Documents\PRISMA_GfK\FR\Code\External Data\coicop_eu\output"


* Import dataset

import delimited "C:\Users\rodarif\Documents\PRISMA_GfK\FR\Code\External Data\coicop_eu\names\ECOICOP_EN_CTI_20140113_170219_utf8.csv", delimiter(";") varnames(1) clear 

drop kurztitel edvcode ebene

rename code coicop_str

rename titel name

replace name = subinstr(name,","," ",.)


gen coicop_nop = subinstr(coicop_str,".","",.)

gen n_digits = length(coicop_nop)

gen coicop2 = substr(coicop_nop,1,2)
gen coicop3 = substr(coicop_nop,1,3)
gen coicop4= substr(coicop_nop,1,4)
gen coicop5 = substr(coicop_nop,1,5)


save temp_coicop_eu, replace

* save unique categories by n_digits and store data (later tempfile to optimize)

preserve
keep if n_digits == 2
save coicop2_name_eu, replace

restore

preserve
keep if n_digits == 3
save coicop3_name_eu, replace

restore

preserve
keep if n_digits == 4
save coicop4_name_eu, replace

restore

preserve
keep if n_digits == 5
save coicop5_name_eu, replace

restore


drop name


merge m:1 coicop2 using coicop2_name_eu

rename name coicop2_name

drop _merge



merge m:1 coicop3 using coicop3_name_eu

rename name coicop3_name

drop _merge



merge m:1 coicop4 using coicop4_name_eu

rename name coicop4_name

drop _merge


merge m:1 coicop5 using coicop5_name_eu

rename name coicop5_name

drop _merge


* keep min

keep if n_digits == 5

drop coicop_nop n_digits

order coicop_str coicop2 coicop2_name  coicop3 coicop3_name  coicop4 coicop4_name  coicop5 coicop5_name


* Export dataset
export delimited using "C:\Users\rodarif\Documents\PRISMA_GfK\FR\Code\External Data\coicop_eu\output\coicop_names.csv", replace











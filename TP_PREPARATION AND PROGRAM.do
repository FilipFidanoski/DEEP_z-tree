* ---------------------------------------------------------------------------- *
* --- TIME PREFERENCES
* ---------------------------------------------------------------------------- *


*** preparation


use "DEEP_time.dta", clear


set obs 120 /// you need to adjust it to your data points
gen resp = _n
expand 12   /// max choices
bysort id: gen response_deep = _n


* choice

gen choice_deep = .

replace choice_deep = dt_choices1 if response_deep == 1
replace choice_deep = dt_choices2 if response_deep == 2
replace choice_deep = dt_choices3 if response_deep == 3
replace choice_deep = dt_choices4 if response_deep == 4
replace choice_deep = dt_choices5 if response_deep == 5
replace choice_deep = dt_choices6 if response_deep == 6
replace choice_deep = dt_choices7 if response_deep == 7
replace choice_deep = dt_choices8 if response_deep == 8
replace choice_deep = dt_choices9 if response_deep == 9
replace choice_deep = dt_choices10 if response_deep == 10
replace choice_deep = dt_choices11 if response_deep == 11
replace choice_deep = dt_choices12 if response_deep == 12


gen select_deep = .

replace select_deep = 0 if choice_deep == 1
replace select_deep = 1 if choice_deep == 2


* delay

* left

gen delayl = .

replace delayl = dt_shown_chance_a1 if response_deep == 1
replace delayl = dt_shown_chance_a2 if response_deep == 2
replace delayl = dt_shown_chance_a3 if response_deep == 3
replace delayl = dt_shown_chance_a4 if response_deep == 4
replace delayl = dt_shown_chance_a5 if response_deep == 5
replace delayl = dt_shown_chance_a6 if response_deep == 6
replace delayl = dt_shown_chance_a7 if response_deep == 7
replace delayl = dt_shown_chance_a8 if response_deep == 8
replace delayl = dt_shown_chance_a9 if response_deep == 9
replace delayl = dt_shown_chance_a10 if response_deep == 10
replace delayl = dt_shown_chance_a11 if response_deep == 11
replace delayl = dt_shown_chance_a12 if response_deep == 12


* right
 
gen delayr = .

replace delayr = dt_shown_chance_b1 if response_deep == 1
replace delayr = dt_shown_chance_b2 if response_deep == 2
replace delayr = dt_shown_chance_b3 if response_deep == 3
replace delayr = dt_shown_chance_b4 if response_deep == 4
replace delayr = dt_shown_chance_b5 if response_deep == 5
replace delayr = dt_shown_chance_b6 if response_deep == 6
replace delayr = dt_shown_chance_b7 if response_deep == 7
replace delayr = dt_shown_chance_b8 if response_deep == 8
replace delayr = dt_shown_chance_b9 if response_deep == 9
replace delayr = dt_shown_chance_b10 if response_deep == 10
replace delayr = dt_shown_chance_b11 if response_deep == 11
replace delayr = dt_shown_chance_b12 if response_deep == 12


* amount

* left

gen amountl = .

replace amountl = dt_shown_amount_a1 if response_deep == 1
replace amountl = dt_shown_amount_a2 if response_deep == 2
replace amountl = dt_shown_amount_a3 if response_deep == 3
replace amountl = dt_shown_amount_a4 if response_deep == 4
replace amountl = dt_shown_amount_a5 if response_deep == 5
replace amountl = dt_shown_amount_a6 if response_deep == 6
replace amountl = dt_shown_amount_a7 if response_deep == 7
replace amountl = dt_shown_amount_a8 if response_deep == 8
replace amountl = dt_shown_amount_a9 if response_deep == 9
replace amountl = dt_shown_amount_a10 if response_deep == 10
replace amountl = dt_shown_amount_a11 if response_deep == 11
replace amountl = dt_shown_amount_a12 if response_deep == 12


* right

gen amountr= .

replace amountr= dt_shown_amount_b11 if response_deep == 1
replace amountr= dt_shown_amount_b12 if response_deep == 2
replace amountr= dt_shown_amount_b13 if response_deep == 3
replace amountr= dt_shown_amount_b14 if response_deep == 4
replace amountr= dt_shown_amount_b15 if response_deep == 5
replace amountr= dt_shown_amount_b16 if response_deep == 6
replace amountr= dt_shown_amount_b17 if response_deep == 7
replace amountr= dt_shown_amount_b18 if response_deep == 8
replace amountr= dt_shown_amount_b19 if response_deep == 9
replace amountr= dt_shown_amount_b110 if response_deep == 10
replace amountr= dt_shown_amount_b111 if response_deep == 11
replace amountr= dt_shown_amount_b112 if response_deep == 12


/// describe

sum

tab select_deep


*** program 

/// based on Harrison et al., 2018


program define ML_tp
args lnf delta noise

* temporary variables

tempvar choice amountl delayl amountr delayr LC PV_L RC PV_R  

quietly {

* initial

generate int `choice' = $ML_y1

* left

generate double `amountl' = $ML_y2
generate double `delayl' = $ML_y3/365 

* right

generate double `amountr' = $ML_y4 
generate double `delayr' = $ML_y5/365 

* models

if "$discount" == "exponential" {


*L

generate double `LC' = 1 
replace `LC' = 1/((1 + `delta')^`delayl')
generate double `PV_L' = `LC'*`amountl' 

*R

generate double `RC' = 1 
replace `RC' = 1/((1 + `delta')^`delayr')
generate double `PV_R' = `RC'*`llamounr'

}


else if "$discount" == "mazur model" {

* L

generate double `LC' = 1
replace `LC' = 1/(1 + (`delta'*`delayl'))
generate double `PV_L' = `LC' * `amountl'

*R

generate double `RC' = 1
replace `RC' = 1/(1 + (`delta'*`delayr'))
generate double `PV_R' = `RC' * `amountr'
}


* noise
generate double `Diff' = (`PV_L' - `PV_R')/`noise' 


* likelihood
replace `lnf' = ln($cdf(`Diff')) if `choice'==0
replace `lnf' = ln($cdf(-`Diff')) if `choice'==1
}


end


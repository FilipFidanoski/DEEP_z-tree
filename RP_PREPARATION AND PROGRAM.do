* ---------------------------------------------------------------------------- *
* ---  RISK PREFERENCES 
* ---------------------------------------------------------------------------- *


use "DEEP_risk.dta", clear


*** preparation


/// data preparation 

set obs 120  /// you need to adjust it to your data points
gen resp = _n
expand 12  /// max choices
bysort id: gen response_deep = _n


* choice

gen choice_deep = .

replace choice_deep = dr_choices1 if response_deep == 1
replace choice_deep = dr_choices2 if response_deep == 2
replace choice_deep = dr_choices3 if response_deep == 3
replace choice_deep = dr_choices4 if response_deep == 4
replace choice_deep = dr_choices5 if response_deep == 5
replace choice_deep = dr_choices6 if response_deep == 6
replace choice_deep = dr_choices7 if response_deep == 7
replace choice_deep = dr_choices8 if response_deep == 8
replace choice_deep = dr_choices9 if response_deep == 9
replace choice_deep = dr_choices10 if response_deep == 10
replace choice_deep = dr_choices11 if response_deep == 11
replace choice_deep = dr_choices12 if response_deep == 12


gen select_deep = .

replace select_deep = 0 if choice_deep == 1
replace select_deep = 1 if choice_deep == 2


* probabilities 

gen prob_lefta = .

replace prob_lefta = dr_shown_chance_a11 if response_deep == 1
replace prob_lefta = dr_shown_chance_a12 if response_deep == 2
replace prob_lefta = dr_shown_chance_a13 if response_deep == 3
replace prob_lefta = dr_shown_chance_a14 if response_deep == 4
replace prob_lefta = dr_shown_chance_a15 if response_deep == 5
replace prob_lefta = dr_shown_chance_a16 if response_deep == 6
replace prob_lefta = dr_shown_chance_a17 if response_deep == 7
replace prob_lefta = dr_shown_chance_a18 if response_deep == 8
replace prob_lefta = dr_shown_chance_a19 if response_deep == 9
replace prob_lefta = dr_shown_chance_a110 if response_deep == 10
replace prob_lefta = dr_shown_chance_a111 if response_deep == 11
replace prob_lefta = dr_shown_chance_a112 if response_deep == 12




gen prob_leftb = .

replace prob_leftb = dr_shown_chance_a21 if response_deep == 1
replace prob_leftb = dr_shown_chance_a22 if response_deep == 2
replace prob_leftb = dr_shown_chance_a23 if response_deep == 3
replace prob_leftb = dr_shown_chance_a24 if response_deep == 4
replace prob_leftb = dr_shown_chance_a25 if response_deep == 5
replace prob_leftb = dr_shown_chance_a26 if response_deep == 6
replace prob_leftb = dr_shown_chance_a27 if response_deep == 7
replace prob_leftb = dr_shown_chance_a28 if response_deep == 8
replace prob_leftb = dr_shown_chance_a29 if response_deep == 9
replace prob_leftb = dr_shown_chance_a210 if response_deep == 10
replace prob_leftb = dr_shown_chance_a211 if response_deep == 11
replace prob_leftb = dr_shown_chance_a212 if response_deep == 12
   

   
   
gen prob_righta = .

replace prob_righta = dr_shown_chance_b11 if response_deep == 1
replace prob_righta = dr_shown_chance_b12 if response_deep == 2
replace prob_righta = dr_shown_chance_b13 if response_deep == 3
replace prob_righta = dr_shown_chance_b14 if response_deep == 4
replace prob_righta = dr_shown_chance_b15 if response_deep == 5
replace prob_righta = dr_shown_chance_b16 if response_deep == 6
replace prob_righta = dr_shown_chance_b17 if response_deep == 7
replace prob_righta = dr_shown_chance_b18 if response_deep == 8
replace prob_righta = dr_shown_chance_b19 if response_deep == 9
replace prob_righta = dr_shown_chance_b110 if response_deep == 10
replace prob_righta = dr_shown_chance_b111 if response_deep == 11
replace prob_righta = dr_shown_chance_b112 if response_deep == 12





gen prob_rightb = .

replace prob_rightb = dr_shown_chance_b21 if response_deep == 1
replace prob_rightb = dr_shown_chance_b22 if response_deep == 2
replace prob_rightb = dr_shown_chance_b23 if response_deep == 3
replace prob_rightb = dr_shown_chance_b24 if response_deep == 4
replace prob_rightb = dr_shown_chance_b25 if response_deep == 5
replace prob_rightb = dr_shown_chance_b26 if response_deep == 6
replace prob_rightb = dr_shown_chance_b27 if response_deep == 7
replace prob_rightb = dr_shown_chance_b28 if response_deep == 8
replace prob_rightb = dr_shown_chance_b29 if response_deep == 9
replace prob_rightb = dr_shown_chance_b210 if response_deep == 10
replace prob_rightb = dr_shown_chance_b211 if response_deep == 11
replace prob_rightb = dr_shown_chance_b212 if response_deep == 12



/// amount

gen prize_lefta = .

replace prize_lefta = dr_shown_amount_a11 if response_deep == 1
replace prize_lefta = dr_shown_amount_a12 if response_deep == 2
replace prize_lefta = dr_shown_amount_a13 if response_deep == 3
replace prize_lefta = dr_shown_amount_a14 if response_deep == 4
replace prize_lefta = dr_shown_amount_a15 if response_deep == 5
replace prize_lefta = dr_shown_amount_a16 if response_deep == 6
replace prize_lefta = dr_shown_amount_a17 if response_deep == 7
replace prize_lefta = dr_shown_amount_a18 if response_deep == 8
replace prize_lefta = dr_shown_amount_a19 if response_deep == 9
replace prize_lefta = dr_shown_amount_a110 if response_deep == 10
replace prize_lefta = dr_shown_amount_a111 if response_deep == 11
replace prize_lefta = dr_shown_amount_a112 if response_deep == 12




gen prize_leftb = .

replace prize_leftb = dr_shown_amount_a21 if response_deep == 1
replace prize_leftb = dr_shown_amount_a22 if response_deep == 2
replace prize_leftb = dr_shown_amount_a23 if response_deep == 3
replace prize_leftb = dr_shown_amount_a24 if response_deep == 4
replace prize_leftb = dr_shown_amount_a25 if response_deep == 5
replace prize_leftb = dr_shown_amount_a26 if response_deep == 6
replace prize_leftb = dr_shown_amount_a27 if response_deep == 7
replace prize_leftb = dr_shown_amount_a28 if response_deep == 8
replace prize_leftb = dr_shown_amount_a29 if response_deep == 9
replace prize_leftb = dr_shown_amount_a210 if response_deep == 10
replace prize_leftb = dr_shown_amount_a211 if response_deep == 11
replace prize_leftb = dr_shown_amount_a212 if response_deep == 12
   

   
   
gen prize_righta = .

replace prize_righta = dr_shown_amount_b11 if response_deep == 1
replace prize_righta = dr_shown_amount_b12 if response_deep == 2
replace prize_righta = dr_shown_amount_b13 if response_deep == 3
replace prize_righta = dr_shown_amount_b14 if response_deep == 4
replace prize_righta = dr_shown_amount_b15 if response_deep == 5
replace prize_righta = dr_shown_amount_b16 if response_deep == 6
replace prize_righta = dr_shown_amount_b17 if response_deep == 7
replace prize_righta = dr_shown_amount_b18 if response_deep == 8
replace prize_righta = dr_shown_amount_b19 if response_deep == 9
replace prize_righta = dr_shown_amount_b110 if response_deep == 10
replace prize_righta = dr_shown_amount_b111 if response_deep == 11
replace prize_righta = dr_shown_amount_b112 if response_deep == 12





gen prize_rightb = .

replace prize_rightb = dr_shown_amount_b21 if response_deep == 1
replace prize_rightb = dr_shown_amount_b22 if response_deep == 2
replace prize_rightb = dr_shown_amount_b23 if response_deep == 3
replace prize_rightb = dr_shown_amount_b24 if response_deep == 4
replace prize_rightb = dr_shown_amount_b25 if response_deep == 5
replace prize_rightb = dr_shown_amount_b26 if response_deep == 6
replace prize_rightb = dr_shown_amount_b27 if response_deep == 7
replace prize_rightb = dr_shown_amount_b28 if response_deep == 8
replace prize_rightb = dr_shown_amount_b29 if response_deep == 9
replace prize_rightb = dr_shown_amount_b210 if response_deep == 10
replace prize_rightb = dr_shown_amount_b211 if response_deep == 11
replace prize_rightb = dr_shown_amount_b212 if response_deep == 12



/// describe

sum

tab select_deep


*** program 

/// based on Harrison and Ruetstrom, 2008


program define ML_crra5

    args lnf r
    tempvar select_deep
    tempvar prob_lefta prob_leftb prob_righta prob_rightb
	tempvar prize_lefta prize_leftb prize_righta prize_rightb
	tempvar y0 y1 y2 y3
    tempvar euL euR euDiff 

    quietly {

		
        * initial        
		gen int `select_deep' = $ML_y1
		
       * setup
        generate double `prob_lefta' = $ML_y2
        generate double `prob_leftb' = $ML_y3

        generate double `prob_righta' = $ML_y4
		generate double `prob_rightb' = $ML_y5

        generate double `y0' = ((abs($ML_y6))^(1-`r'))/(1-`r')
        generate double `y1' = ((abs($ML_y7))^(1-`r'))/(1-`r')
        generate double `y2' = ((abs($ML_y8))^(1-`r'))/(1-`r')
		generate double `y3' = ((abs($ML_y9))^(1-`r'))/(1-`r')
		
        replace `y0' = -`y0' if $ML_y6 < 0
        replace `y1' = -`y1' if $ML_y7 < 0
        replace `y2' = -`y2' if $ML_y8 < 0
		replace `y3' = -`y3' if $ML_y9 < 0
		
        * expected values
        generate double `euL' = (`prob_lefta'*`y0')+(`prob_leftb'*`y1')
        generate double `euR' = (`prob_righta'*`y2')+(`prob_rightb'*`y3')
		
		* noise
		
		if "$error" == "fechner" {
			
			* Fechner index
			gen double `euDiff' = (`euR' - `euL') / `mu'

			* likelihood
            replace `lnf' = ln($cdf( `euDiff')) if $ML_y1==1
            replace `lnf' = ln($cdf(-`euDiff')) if $ML_y1==0
		
		}
		
		if "$error" == "luce" {
		
			* Luce index
		    local  deg = (1/`mu')
			gen double `euDiff' = (`euR'^`deg') / (`euR'^`deg' + `euL'^`deg')

			* evaluate the likelihood
            replace `lnf' = ln($cdf( `euDiff')) if $ML_y1==1
            replace `lnf' = ln($cdf(-`euDiff')) if $ML_y1==0
			
		}
 }
end

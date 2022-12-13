* ---------------------------------------------------------------------------- *
* ---  RISK PREFERENCES 
* ---------------------------------------------------------------------------- *


use "DEEP_risk.dta", clear 

*** it follows the identical logic for the time preferences part


/// data preparation 

set obs 120  /// you need to adjust it to your data points
gen resp = _n
expand 12 /// max choices
bysort id: gen response_deep = _n


/// choice

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


/// response

gen select_deep = .

replace select_deep = 0 if choice_deep == 1
replace select_deep = 1 if choice_deep == 2

/// probabilities 

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



/// prizes

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


*** EUT


/// 1

program define ML_eut4_noerror_power


    args lnf r
    tempvar select_deep
	tempvar prob_lefta prob_leftb prob_righta prob_rightb
	tempvar prize_lefta prize_leftb prize_righta prize_rightb
	tempvar y0 y1 y2 y3 
    tempvar euL euR euDiff

    quietly {
	
	   * initial  
		
		gen int `select_deep' = $ML_y1
		
       ** setup
	   
	   * probabilities (L)
	   
        generate double `prob_lefta' = $ML_y2
        generate double `prob_leftb' = $ML_y3
		
	   * probabilities (R)
	   
        generate double `prob_righta' = $ML_y4
        generate double `prob_rightb' = $ML_y5
		
	   
       * Left
	   
        generate double `y0' = (abs($ML_y6))^`r'
        generate double `y1' = (abs($ML_y7))^`r'

        replace `y0' = -`y0' if $ML_y6 < 0
        replace `y1' = -`y1' if $ML_y7 < 0

       * Right

        generate double `y2' = (abs($ML_y8))^`r'
        generate double `y3' = (abs($ML_y9))^`r'

        replace `y2' = -`y2' if $ML_y8 < 0
        replace `y3' = -`y3' if $ML_y9 < 0
	    
		* utility (L)
		
        generate double `euL' = (`prob_lefta'*`y0')+(`prob_leftb'*`y1')
		
		* utility (R)
		
        generate double `euR' = (`prob_righta'*`y2')+(`prob_rightb'*`y3')
	
		
		* utilities difference and noise specifications
		
        generate double `euDiff' = `euR' - `euL'
		
        
		* likelhood
		
        replace `lnf' = ln($cdf( `euDiff')) if $ML_y1==1
        replace `lnf' = ln($cdf(-`euDiff')) if $ML_y1==0

		
    }
end


* define globals

global cdf "normal"


/// ML_EUT_power+no error

ml model lf ML_eut4_noerror_power (r: select_deep prob_lefta prob_leftb prob_righta prob_rightb prize_lefta prize_leftb prize_righta prize_rightb = ) if select_deep~=., cluster(id) technique(nr) 
ml maximize, difficult
ml display


/// 2

program define ML_eut4_noerror_expo


    args lnf r alpha
    tempvar select_deep
	tempvar prob_lefta prob_leftb prob_righta prob_rightb
	tempvar prize_lefta prize_leftb prize_righta prize_rightb
	tempvar y0 y1 y2 y3 
    tempvar euL euR euDiff

    quietly {
	
	   * initial  
		
		gen int `select_deep' = $ML_y1
		
       ** setup
	   
	   * probabilities (L)
	   
        generate double `prob_lefta' = $ML_y2
        generate double `prob_leftb' = $ML_y3
		
	   * probabilities (R)
	   
        generate double `prob_righta' = $ML_y4
        generate double `prob_rightb' = $ML_y5
		
	   
       * Left
		
		generate double `y0' = (1-exp(-`alpha'*(($ML_y6)^(1-`r'))))/`alpha'
        generate double `y1' = (1-exp(-`alpha'*(($ML_y7)^(1-`r'))))/`alpha'
		
		replace `y0' = -`y0' if $ML_y6 < 0
        replace `y1' = -`y1' if $ML_y7 < 0
		
		* Right
		
        generate double `y2' = (1-exp(-`alpha'*(($ML_y8)^(1-`r'))))/`alpha'
        generate double `y3' = (1-exp(-`alpha'*(($ML_y9)^(1-`r'))))/`alpha'
		
		replace `y2' = -`y2' if $ML_y8 < 0
        replace `y3' = -`y3' if $ML_y9 < 0

	    
		* utility (L)
		
        generate double `euL' = (`prob_lefta'*`y0')+(`prob_leftb'*`y1')
		
		* utility (R)
		
        generate double `euR' = (`prob_righta'*`y2')+(`prob_rightb'*`y3')
	
		
		* utilities difference and noise specifications
		
        generate double `euDiff' = `euR' - `euL'
		
        
		* likelhood
		
        replace `lnf' = ln($cdf( `euDiff')) if $ML_y1==1
        replace `lnf' = ln($cdf(-`euDiff')) if $ML_y1==0

		
    }
end


* define globals

global cdf "normal"


/// ML_EUT_expo+no error

ml model lf ML_eut4_noerror_expo (r: select_deep prob_lefta prob_leftb prob_righta prob_rightb prize_lefta prize_leftb prize_righta prize_rightb = ) (alpha: ) if select_deep~=., cluster(id) technique(nr) 
ml maximize, difficult
ml display


/// 3

program define ML_eut4_noerror_cara


    args lnf r
    tempvar select_deep
	tempvar prob_lefta prob_leftb prob_righta prob_rightb
	tempvar prize_lefta prize_leftb prize_righta prize_rightb
	tempvar y0 y1 y2 y3 
    tempvar euL euR euDiff

    quietly {
	
	   * initial  
		
		gen int `select_deep' = $ML_y1
		
       ** setup
	   
	   * probabilities (L)
	   
        generate double `prob_lefta' = $ML_y2
        generate double `prob_leftb' = $ML_y3
		
	   * probabilities (R)
	   
        generate double `prob_righta' = $ML_y4
        generate double `prob_rightb' = $ML_y5
		
	   
       * Left
	   
		generate double `y0' = (1-exp(-`r'*$ML_y6))/`r'
        generate double `y1' = (1-exp(-`r'*$ML_y7))/`r'

        replace `y0' = -`y0' if $ML_y6 < 0
        replace `y1' = -`y1' if $ML_y7 < 0

       * Right

        generate double `y2' = (1-exp(-`r'*$ML_y8))/`r'
        generate double `y3' = (1-exp(-`r'*$ML_y9))/`r'

        replace `y2' = -`y2' if $ML_y8 < 0
        replace `y3' = -`y3' if $ML_y9 < 0
		
	    
		* utility (L)
		
        generate double `euL' = (`prob_lefta'*`y0')+(`prob_leftb'*`y1')
		
		* utility (R)
		
        generate double `euR' = (`prob_righta'*`y2')+(`prob_rightb'*`y3')
	
		
		* utilities difference and noise specifications
		
        generate double `euDiff' = `euR' - `euL'
		
        
		* likelhood
		
        replace `lnf' = ln($cdf( `euDiff')) if $ML_y1==1
        replace `lnf' = ln($cdf(-`euDiff')) if $ML_y1==0

		
    }
end


* define globals

global cdf "normal"


/// ML_EUT_cara+no error

ml model lf ML_eut4_noerror_cara (r: select_deep prob_lefta prob_leftb prob_righta prob_rightb prize_lefta prize_leftb prize_righta prize_rightb = ) if select_deep~=., cluster(id) technique(nr) 
ml maximize, difficult
ml display


/// 4

program define ML_eut4_noerror_crra


    args lnf r
    tempvar select_deep
	tempvar prob_lefta prob_leftb prob_righta prob_rightb
	tempvar prize_lefta prize_leftb prize_righta prize_rightb
	tempvar y0 y1 y2 y3 
    tempvar euL euR euDiff

    quietly {
	
	   * initial  
		
		gen int `select_deep' = $ML_y1
		
       ** setup
	   
	   * probabilities (L)
	   
        generate double `prob_lefta' = $ML_y2
        generate double `prob_leftb' = $ML_y3
		
	   * probabilities (R)
	   
        generate double `prob_righta' = $ML_y4
        generate double `prob_rightb' = $ML_y5
		
	   
       * Left
	   
		generate double `y0' = ((abs($ML_y6))^(1-`r'))/(1-`r')
        generate double `y1' = ((abs($ML_y7))^(1-`r'))/(1-`r')

        replace `y0' = -`y0' if $ML_y6 < 0
        replace `y1' = -`y1' if $ML_y7 < 0

       * Right

        generate double `y2' = ((abs($ML_y8))^(1-`r'))/(1-`r')
        generate double `y3' = ((abs($ML_y9))^(1-`r'))/(1-`r')

        replace `y2' = -`y2' if $ML_y8 < 0
        replace `y3' = -`y3' if $ML_y9 < 0
		
	    
		* utility (L)
		
        generate double `euL' = (`prob_lefta'*`y0')+(`prob_leftb'*`y1')
		
		* utility (R)
		
        generate double `euR' = (`prob_righta'*`y2')+(`prob_rightb'*`y3')
	
		
		* utilities difference and noise specifications
		
        generate double `euDiff' = `euR' - `euL'
		
        
		* likelhood
		
        replace `lnf' = ln($cdf( `euDiff')) if $ML_y1==1
        replace `lnf' = ln($cdf(-`euDiff')) if $ML_y1==0

		
    }
end


* define globals

global cdf "normal"


/// ML_EUT_crra+no error

ml model lf ML_eut4_noerror_crra (r: select_deep prob_lefta prob_leftb prob_righta prob_rightb prize_lefta prize_leftb prize_righta prize_rightb = ) if select_deep~=., cluster(id) technique(nr) 
ml maximize, difficult
ml display


/// 5

program define ML_eut4_luce_power


    args lnf r noise
    tempvar select_deep
	tempvar prob_lefta prob_leftb prob_righta prob_rightb
	tempvar prize_lefta prize_leftb prize_righta prize_rightb
	tempvar y0 y1 y2 y3 
    tempvar euL euR euDiff

    quietly {
	
	   * initial  
		
		gen int `select_deep' = $ML_y1
		
       ** setup
	   
	   * probabilities (L)
	   
        generate double `prob_lefta' = $ML_y2
        generate double `prob_leftb' = $ML_y3
		
	   * probabilities (R)
	   
        generate double `prob_righta' = $ML_y4
        generate double `prob_rightb' = $ML_y5
		
	   
       * Left
	   
        generate double `y0' = (abs($ML_y6))^`r'
        generate double `y1' = (abs($ML_y7))^`r'

        replace `y0' = -`y0' if $ML_y6 < 0
        replace `y1' = -`y1' if $ML_y7 < 0

       * Right

        generate double `y2' = (abs($ML_y8))^`r'
        generate double `y3' = (abs($ML_y9))^`r'

        replace `y2' = -`y2' if $ML_y8 < 0
        replace `y3' = -`y3' if $ML_y9 < 0
	    
		* utility (L)
		
        generate double `euL' = (`prob_lefta'*`y0')+(`prob_leftb'*`y1')
		
		* utility (R)
		
        generate double `euR' = (`prob_righta'*`y2')+(`prob_rightb'*`y3')
	
		
		* utilities difference and noise specifications
		
        generate double `euDiff' = (`euR'^(1/`noise'))/((`euR'^(1/`noise'))+(`euL'^(1/`noise')))
		
        
		* likelhood
		
        replace `lnf' = ln(`euDiff') if $ML_y1==1
        replace `lnf' = ln(1-`euDiff') if $ML_y1==0

		
    }
end


* define globals

global cdf "normal"


/// ML_EUT_power+luce

ml model lf ML_eut4_luce_power (r: select_deep prob_lefta prob_leftb prob_righta prob_rightb prize_lefta prize_leftb prize_righta prize_rightb = ) (noise: ) if select_deep~=., cluster(id) technique(nr) 
ml maximize, difficult
ml display


/// 6

program define ML_eut4_luce_expo


    args lnf r alpha noise
    tempvar select_deep
	tempvar prob_lefta prob_leftb prob_righta prob_rightb
	tempvar prize_lefta prize_leftb prize_righta prize_rightb
	tempvar y0 y1 y2 y3 
    tempvar euL euR euDiff

    quietly {
	
	   * initial  
		
		gen int `select_deep' = $ML_y1
		
       ** setup
	   
	   * probabilities (L)
	   
        generate double `prob_lefta' = $ML_y2
        generate double `prob_leftb' = $ML_y3
		
	   * probabilities (R)
	   
        generate double `prob_righta' = $ML_y4
        generate double `prob_rightb' = $ML_y5
		
	   
       * Left
		
		generate double `y0' = (1-exp(-`alpha'*(($ML_y6)^(1-`r'))))/`alpha'
        generate double `y1' = (1-exp(-`alpha'*(($ML_y7)^(1-`r'))))/`alpha'
		
		replace `y0' = -`y0' if $ML_y6 < 0
        replace `y1' = -`y1' if $ML_y7 < 0
		
		* Right
		
        generate double `y2' = (1-exp(-`alpha'*(($ML_y8)^(1-`r'))))/`alpha'
        generate double `y3' = (1-exp(-`alpha'*(($ML_y9)^(1-`r'))))/`alpha'
		
		replace `y2' = -`y2' if $ML_y8 < 0
        replace `y3' = -`y3' if $ML_y9 < 0

	    
		* utility (L)
		
        generate double `euL' = (`prob_lefta'*`y0')+(`prob_leftb'*`y1')
		
		* utility (R)
		
        generate double `euR' = (`prob_righta'*`y2')+(`prob_rightb'*`y3')
	
		
		* utilities difference and noise specifications
		
        generate double `euDiff' = (`euR'^(1/`noise'))/((`euR'^(1/`noise'))+(`euL'^(1/`noise')))
		
        
		* likelhood
		
        replace `lnf' = ln(`euDiff') if $ML_y1==1
        replace `lnf' = ln(1-`euDiff') if $ML_y1==0

		
    }
end


* define globals

global cdf "normal"


/// ML_EUT_expo+luce

ml model lf ML_eut4_luce_expo (r: select_deep prob_lefta prob_leftb prob_righta prob_rightb prize_lefta prize_leftb prize_righta prize_rightb = ) (alpha: ) (noise: ) if select_deep~=., cluster(id) technique(nr) 
ml maximize, difficult
ml display


/// 7

program define ML_eut4_luce_cara


    args lnf r noise
    tempvar select_deep
	tempvar prob_lefta prob_leftb prob_righta prob_rightb
	tempvar prize_lefta prize_leftb prize_righta prize_rightb
	tempvar y0 y1 y2 y3 
    tempvar euL euR euDiff

    quietly {
	
	   * initial  
		
		gen int `select_deep' = $ML_y1
		
       ** setup
	   
	   * probabilities (L)
	   
        generate double `prob_lefta' = $ML_y2
        generate double `prob_leftb' = $ML_y3
		
	   * probabilities (R)
	   
        generate double `prob_righta' = $ML_y4
        generate double `prob_rightb' = $ML_y5
		
	   
       * Left
	   
		generate double `y0' = (1-exp(-`r'*$ML_y6))/`r'
        generate double `y1' = (1-exp(-`r'*$ML_y7))/`r'

        replace `y0' = -`y0' if $ML_y6 < 0
        replace `y1' = -`y1' if $ML_y7 < 0

       * Right

        generate double `y2' = (1-exp(-`r'*$ML_y8))/`r'
        generate double `y3' = (1-exp(-`r'*$ML_y9))/`r'

        replace `y2' = -`y2' if $ML_y8 < 0
        replace `y3' = -`y3' if $ML_y9 < 0
		
	    
		* utility (L)
		
        generate double `euL' = (`prob_lefta'*`y0')+(`prob_leftb'*`y1')
		
		* utility (R)
		
        generate double `euR' = (`prob_righta'*`y2')+(`prob_rightb'*`y3')
	
		
		* utilities difference and noise specifications
		
        generate double `euDiff' = (`euR'^(1/`noise'))/((`euR'^(1/`noise'))+(`euL'^(1/`noise')))
		
        
		* likelhood
		
        replace `lnf' = ln(`euDiff') if $ML_y1==1
        replace `lnf' = ln(1-`euDiff') if $ML_y1==0

		
    }
end


* define globals

global cdf "normal"


/// ML_EUT_cara+luce

ml model lf ML_eut4_luce_cara (r: select_deep prob_lefta prob_leftb prob_righta prob_rightb prize_lefta prize_leftb prize_righta prize_rightb = ) (noise: ) if select_deep~=., cluster(id) technique(nr) 
ml maximize, difficult
ml display


/// 8

program define ML_eut4_luce_crra


    args lnf r noise
    tempvar select_deep
	tempvar prob_lefta prob_leftb prob_righta prob_rightb
	tempvar prize_lefta prize_leftb prize_righta prize_rightb
	tempvar y0 y1 y2 y3 
    tempvar euL euR euDiff

    quietly {
	
	   * initial  
		
		gen int `select_deep' = $ML_y1
		
       ** setup
	   
	   * probabilities (L)
	   
        generate double `prob_lefta' = $ML_y2
        generate double `prob_leftb' = $ML_y3
		
	   * probabilities (R)
	   
        generate double `prob_righta' = $ML_y4
        generate double `prob_rightb' = $ML_y5
		
	   
       * Left
	   
		generate double `y0' = ((abs($ML_y6))^(1-`r'))/(1-`r')
        generate double `y1' = ((abs($ML_y7))^(1-`r'))/(1-`r')

        replace `y0' = -`y0' if $ML_y6 < 0
        replace `y1' = -`y1' if $ML_y7 < 0

       * Right

        generate double `y2' = ((abs($ML_y8))^(1-`r'))/(1-`r')
        generate double `y3' = ((abs($ML_y9))^(1-`r'))/(1-`r')

        replace `y2' = -`y2' if $ML_y8 < 0
        replace `y3' = -`y3' if $ML_y9 < 0
		
	    
		* utility (L)
		
        generate double `euL' = (`prob_lefta'*`y0')+(`prob_leftb'*`y1')
		
		* utility (R)
		
        generate double `euR' = (`prob_righta'*`y2')+(`prob_rightb'*`y3')
	
		
		* utilities difference and noise specifications
		
        generate double `euDiff' = (`euR'^(1/`noise'))/((`euR'^(1/`noise'))+(`euL'^(1/`noise')))
		
        
		* likelhood
		
        replace `lnf' = ln(`euDiff') if $ML_y1==1
        replace `lnf' = ln(1-`euDiff') if $ML_y1==0

		
    }
end


* define globals

global cdf "normal"


/// ML_EUT_crra+luce

ml model lf ML_eut4_luce_crra (r: select_deep prob_lefta prob_leftb prob_righta prob_rightb prize_lefta prize_leftb prize_righta prize_rightb = ) (noise: ) if select_deep~=., cluster(id) technique(nr) 
ml maximize, difficult
ml display


/// 9

program define ML_eut4_fechner_power


    args lnf r noise
    tempvar select_deep
	tempvar prob_lefta prob_leftb prob_righta prob_rightb
	tempvar prize_lefta prize_leftb prize_righta prize_rightb
	tempvar y0 y1 y2 y3 
    tempvar euL euR euDiff

    quietly {
	
	   * initial  
		
		gen int `select_deep' = $ML_y1
		
       ** setup
	   
	   * probabilities (L)
	   
        generate double `prob_lefta' = $ML_y2
        generate double `prob_leftb' = $ML_y3
		
	   * probabilities (R)
	   
        generate double `prob_righta' = $ML_y4
        generate double `prob_rightb' = $ML_y5
		
	   
       * Left
	   
        generate double `y0' = (abs($ML_y6))^`r'
        generate double `y1' = (abs($ML_y7))^`r'

        replace `y0' = -`y0' if $ML_y6 < 0
        replace `y1' = -`y1' if $ML_y7 < 0

       * Right

        generate double `y2' = (abs($ML_y8))^`r'
        generate double `y3' = (abs($ML_y9))^`r'

        replace `y2' = -`y2' if $ML_y8 < 0
        replace `y3' = -`y3' if $ML_y9 < 0
	    
		* utility (L)
		
        generate double `euL' = (`prob_lefta'*`y0')+(`prob_leftb'*`y1')
		
		* utility (R)
		
        generate double `euR' = (`prob_righta'*`y2')+(`prob_rightb'*`y3')
	
		
		* utilities difference and noise specifications
		
        generate double `euDiff' = (`euR'-`euL')/(`noise')
		
        
		* likelhood
		
        replace `lnf' = ln($cdf( `euDiff')) if $ML_y1==1
        replace `lnf' = ln($cdf(-`euDiff')) if $ML_y1==0

		
    }
end


* define globals

global cdf "normal"


/// ML_EUT_power+fechner

ml model lf ML_eut4_fechner_power (r: select_deep prob_lefta prob_leftb prob_righta prob_rightb prize_lefta prize_leftb prize_righta prize_rightb = ) (noise:) if select_deep~=.,  cluster(id) technique(nr) 
ml maximize, difficult
ml display


/// 10

program define ML_eut4_fechner_expo


    args lnf r alpha noise
    tempvar select_deep
	tempvar prob_lefta prob_leftb prob_righta prob_rightb
	tempvar prize_lefta prize_leftb prize_righta prize_rightb
	tempvar y0 y1 y2 y3 
    tempvar euL euR euDiff

    quietly {
	
	   * initial  
		
		gen int `select_deep' = $ML_y1
		
       ** setup
	   
	   * probabilities (L)
	   
        generate double `prob_lefta' = $ML_y2
        generate double `prob_leftb' = $ML_y3
		
	   * probabilities (R)
	   
        generate double `prob_righta' = $ML_y4
        generate double `prob_rightb' = $ML_y5
		
	   
       * Left
		
		generate double `y0' = (1-exp(-`alpha'*(($ML_y6)^(1-`r'))))/`alpha'
        generate double `y1' = (1-exp(-`alpha'*(($ML_y7)^(1-`r'))))/`alpha'
		
		replace `y0' = -`y0' if $ML_y6 < 0
        replace `y1' = -`y1' if $ML_y7 < 0
		
		* Right
		
        generate double `y2' = (1-exp(-`alpha'*(($ML_y8)^(1-`r'))))/`alpha'
        generate double `y3' = (1-exp(-`alpha'*(($ML_y9)^(1-`r'))))/`alpha'
		
		replace `y2' = -`y2' if $ML_y8 < 0
        replace `y3' = -`y3' if $ML_y9 < 0

	    
		* utility (L)
		
        generate double `euL' = (`prob_lefta'*`y0')+(`prob_leftb'*`y1')
		
		* utility (R)
		
        generate double `euR' = (`prob_righta'*`y2')+(`prob_rightb'*`y3')
	
		
		* utilities difference and noise specifications
		
        generate double `euDiff' = (`euR'-`euL')/(`noise')
		
        
		* likelhood
		
        replace `lnf' = ln($cdf( `euDiff')) if $ML_y1==1
        replace `lnf' = ln($cdf(-`euDiff')) if $ML_y1==0

		
    }
end


* define globals

global cdf "normal"


/// ML_EUT_expo+fechner

ml model lf ML_eut4_fechner_expo (r: select_deep prob_lefta prob_leftb prob_righta prob_rightb prize_lefta prize_leftb prize_righta prize_rightb = ) (alpha: ) (noise:) if select_deep~=.,  cluster(id) technique(nr) 
ml maximize, difficult
ml display


/// 11

program define ML_eut4_fechner_cara


    args lnf r noise
    tempvar select_deep
	tempvar prob_lefta prob_leftb prob_righta prob_rightb
	tempvar prize_lefta prize_leftb prize_righta prize_rightb
	tempvar y0 y1 y2 y3 
    tempvar euL euR euDiff

    quietly {
	
	   * initial  
		
		gen int `select_deep' = $ML_y1
		
       ** setup
	   
	   * probabilities (L)
	   
        generate double `prob_lefta' = $ML_y2
        generate double `prob_leftb' = $ML_y3
		
	   * probabilities (R)
	   
        generate double `prob_righta' = $ML_y4
        generate double `prob_rightb' = $ML_y5
		
	   
       * Left
	   
		generate double `y0' = (1-exp(-`r'*$ML_y6))/`r'
        generate double `y1' = (1-exp(-`r'*$ML_y7))/`r'

        replace `y0' = -`y0' if $ML_y6 < 0
        replace `y1' = -`y1' if $ML_y7 < 0

       * Right

        generate double `y2' = (1-exp(-`r'*$ML_y8))/`r'
        generate double `y3' = (1-exp(-`r'*$ML_y9))/`r'

        replace `y2' = -`y2' if $ML_y8 < 0
        replace `y3' = -`y3' if $ML_y9 < 0
		
	    
		* utility (L)
		
        generate double `euL' = (`prob_lefta'*`y0')+(`prob_leftb'*`y1')
		
		* utility (R)
		
        generate double `euR' = (`prob_righta'*`y2')+(`prob_rightb'*`y3')
	
		
		* utilities difference and noise specifications
		
        generate double `euDiff' = (`euR'-`euL')/(`noise')
		
        
		* likelhood
		
        replace `lnf' = ln($cdf( `euDiff')) if $ML_y1==1
        replace `lnf' = ln($cdf(-`euDiff')) if $ML_y1==0

		
    }
end


* define globals

global cdf "normal"


/// ML_EUT_cara+fechner

ml model lf ML_eut4_fechner_cara (r: select_deep prob_lefta prob_leftb prob_righta prob_rightb prize_lefta prize_leftb prize_righta prize_rightb = ) (noise:) if select_deep~=.,  cluster(id) technique(nr) 
ml maximize, difficult
ml display


/// 12

program define ML_eut4_fechner_crra


    args lnf r noise
    tempvar select_deep
	tempvar prob_lefta prob_leftb prob_righta prob_rightb
	tempvar prize_lefta prize_leftb prize_righta prize_rightb
	tempvar y0 y1 y2 y3 
    tempvar euL euR euDiff

    quietly {
	
	   * initial  
		
		gen int `select_deep' = $ML_y1
		
       ** setup
	   
	   * probabilities (L)
	   
        generate double `prob_lefta' = $ML_y2
        generate double `prob_leftb' = $ML_y3
		
	   * probabilities (R)
	   
        generate double `prob_righta' = $ML_y4
        generate double `prob_rightb' = $ML_y5
		
	   
       * Left
	   
		generate double `y0' = ((abs($ML_y6))^(1-`r'))/(1-`r')
        generate double `y1' = ((abs($ML_y7))^(1-`r'))/(1-`r')

        replace `y0' = -`y0' if $ML_y6 < 0
        replace `y1' = -`y1' if $ML_y7 < 0

       * Right

        generate double `y2' = ((abs($ML_y8))^(1-`r'))/(1-`r')
        generate double `y3' = ((abs($ML_y9))^(1-`r'))/(1-`r')

        replace `y2' = -`y2' if $ML_y8 < 0
        replace `y3' = -`y3' if $ML_y9 < 0
		
	    
		* utility (L)
		
        generate double `euL' = (`prob_lefta'*`y0')+(`prob_leftb'*`y1')
		
		* utility (R)
		
        generate double `euR' = (`prob_righta'*`y2')+(`prob_rightb'*`y3')
	
		
		* utilities difference and noise specifications
		
        generate double `euDiff' = (`euR'-`euL')/(`noise')
		
        
		* likelhood
		
        replace `lnf' = ln($cdf( `euDiff')) if $ML_y1==1
        replace `lnf' = ln($cdf(-`euDiff')) if $ML_y1==0

		
    }
end


* define globals

global cdf "normal"


/// ML_EUT_crra+fechner

ml model lf ML_eut4_fechner_crra (r: select_deep prob_lefta prob_leftb prob_righta prob_rightb prize_lefta prize_leftb prize_righta prize_rightb = ) (noise:) if select_deep~=.,  cluster(id) technique(nr) 
ml maximize, difficult
ml display



*** SPT

/// 1

program define ML_spt4_noerror_power


    args lnf r gamma lambda beta
    tempvar select_deep
	tempvar prob_lefta prob_leftb prob_righta prob_rightb
	tempvar prize_lefta prize_leftb prize_righta prize_rightb
	tempvar m0 m1 m2 m3
	tempvar y0 y1 y2 y3 
    tempvar euL euR euDiff
	tempvar tmp

    quietly {
	
	   * initial  
		
		gen int `select_deep' = $ML_y1
		
       ** setup
	   
	    ** setup
	   
	   * weighting function (L)
	   
	    generate double `tmp' = (($ML_y2^`gamma')+($ML_y3^`gamma'))^(1/`gamma')

        generate double `prob_lefta' = ($ML_y2^`gamma')/`tmp'
        generate double `prob_leftb' = ($ML_y3^`gamma')/`tmp'
		
		* weighting function (R)
	    
	    replace `tmp' = (($ML_y4^`gamma')+($ML_y5^`gamma'))^(1/`gamma')

        generate double `prob_righta' = ($ML_y4^`gamma')/`tmp'
		generate double `prob_rightb' = ($ML_y5^`gamma')/`tmp'
		
		* monetary prizes (L)
	    
		generate double `m0' = $ML_y6
		generate double `m1' = $ML_y7
		
		* monetary prizes (R)
		
		generate double `m2' = $ML_y8
		generate double `m3' = $ML_y9
	   
       * Left
	   
		generate double `y0' = .
		replace `y0' = (`m0')^(`r') if `m0'>=0
		replace `y0' = -`lambda'*(-`m0')^(`beta') if `m0'<0
		
		generate double `y1' = .
		replace `y1' = (`m1')^(`r') if `m1'>=0
		replace `y1' = -`lambda'*(-`m1')^(`beta') if `m1'<0

       * Right

		generate double `y2' = .
		replace `y2' = (`m2')^(`r') if `m2'>=0
		replace `y2' = -`lambda'*(-`m2')^(`beta') if `m2'<0
		
		generate double `y3' = .
		replace `y3' = (`m3')^(`r') if `m3'>=0
		replace `y3' = -`lambda'*(-`m3')^(`beta') if `m3'<0
	    
		* utility (L)
		
        generate double `euL' = (`prob_lefta'*`y0')+(`prob_leftb'*`y1')
		
		* utility (R)
		
        generate double `euR' = (`prob_righta'*`y2')+(`prob_rightb'*`y3')
	
		
		* utilities difference and noise specifications
		
        generate double `euDiff' = `euR' - `euL'
		
        
		* likelhood
		
        replace `lnf' = ln($cdf( `euDiff')) if $ML_y1==1
        replace `lnf' = ln($cdf(-`euDiff')) if $ML_y1==0

		
    }
end


* define globals

global cdf "normal"


/// ML_SPT_power+no error

ml model lf ML_spt4_noerror_power (r: select_deep prob_lefta prob_leftb prob_righta prob_rightb prize_lefta prize_leftb prize_righta prize_rightb = ) (gamma: ) (lambda: ) (beta: ) if select_deep~=., cluster(id) technique(nr) 
ml maximize, difficult
ml display


/// 2

program define ML_spt4_noerror_expo


    args lnf r gamma lambda beta alpha
    tempvar select_deep
	tempvar prob_lefta prob_leftb prob_righta prob_rightb
	tempvar prize_lefta prize_leftb prize_righta prize_rightb
	tempvar m0 m1 m2 m3
	tempvar y0 y1 y2 y3 
    tempvar euL euR euDiff
	tempvar tmp

    quietly {
	
	   * initial  
		
		gen int `select_deep' = $ML_y1
		
       ** setup
	   
	    ** setup
	   
	   * weighting function (L)
	   
	    generate double `tmp' = (($ML_y2^`gamma')+($ML_y3^`gamma'))^(1/`gamma')

        generate double `prob_lefta' = ($ML_y2^`gamma')/`tmp'
        generate double `prob_leftb' = ($ML_y3^`gamma')/`tmp'
		
		* weighting function (R)
	    
	    replace `tmp' = (($ML_y4^`gamma')+($ML_y5^`gamma'))^(1/`gamma')

        generate double `prob_righta' = ($ML_y4^`gamma')/`tmp'
		generate double `prob_rightb' = ($ML_y5^`gamma')/`tmp'
		
		* monetary prizes (L)
	    
		generate double `m0' = $ML_y6
		generate double `m1' = $ML_y7
		
		* monetary prizes (R)
		
		generate double `m2' = $ML_y8
		generate double `m3' = $ML_y9
		
	   
	   * Left
	   
		generate double `y0' = .
		replace `y0' = (1-exp(-`alpha'*((`m0')^(1-`r'))))/`alpha' if `m0'>=0
		replace `y0' = -`lambda'*(-`m0')^(`beta') if `m0'<0
		
		generate double `y1' = .
		replace `y1' = (1-exp(-`alpha'*((`m1')^(1-`r'))))/`alpha' if `m1'>=0
		replace `y1' = -`lambda'*(-`m1')^(`beta') if `m1'<0

       * Right

		generate double `y2' = .
		replace `y2' = (1-exp(-`alpha'*((`m2')^(1-`r'))))/`alpha' if `m2'>=0
		replace `y2' = -`lambda'*(-`m2')^(`beta') if `m2'<0
		
		generate double `y3' = .
		replace `y3' = (1-exp(-`alpha'*((`m3')^(1-`r'))))/`alpha' if `m3'>=0
		replace `y3' = -`lambda'*(-`m3')^(`beta') if `m3'<0
		
	    
		* utility (L)
		
        generate double `euL' = (`prob_lefta'*`y0')+(`prob_leftb'*`y1')
		
		* utility (R)
		
        generate double `euR' = (`prob_righta'*`y2')+(`prob_rightb'*`y3')
	
		
		* utilities difference and noise specifications
		
        generate double `euDiff' = `euR' - `euL'
		
        
		* likelhood
		
        replace `lnf' = ln($cdf( `euDiff')) if $ML_y1==1
        replace `lnf' = ln($cdf(-`euDiff')) if $ML_y1==0

		
    }
end


* define globals

global cdf "normal"


/// ML_SPT_expo+no error

ml model lf ML_spt4_noerror_expo (r: select_deep prob_lefta prob_leftb prob_righta prob_rightb prize_lefta prize_leftb prize_righta prize_rightb = ) (gamma: ) (lambda: ) (beta: ) (alpha: ) if select_deep~=., cluster(id) technique(nr) 
ml maximize, difficult
ml display


/// 3

program define ML_spt4_noerror_cara


    args lnf r gamma lambda beta
    tempvar select_deep
	tempvar prob_lefta prob_leftb prob_righta prob_rightb
	tempvar prize_lefta prize_leftb prize_righta prize_rightb
	tempvar m0 m1 m2 m3
	tempvar y0 y1 y2 y3 
    tempvar euL euR euDiff
	tempvar tmp

    quietly {
	
	   * initial  
		
		gen int `select_deep' = $ML_y1
		
       ** setup
	   
	    ** setup
	   
	   * weighting function (L)
	   
	    generate double `tmp' = (($ML_y2^`gamma')+($ML_y3^`gamma'))^(1/`gamma')

        generate double `prob_lefta' = ($ML_y2^`gamma')/`tmp'
        generate double `prob_leftb' = ($ML_y3^`gamma')/`tmp'
		
		* weighting function (R)
	    
	    replace `tmp' = (($ML_y4^`gamma')+($ML_y5^`gamma'))^(1/`gamma')

        generate double `prob_righta' = ($ML_y4^`gamma')/`tmp'
		generate double `prob_rightb' = ($ML_y5^`gamma')/`tmp'
		
		* monetary prizes (L)
	    
		generate double `m0' = $ML_y6
		generate double `m1' = $ML_y7
		
		* monetary prizes (R)
		
		generate double `m2' = $ML_y8
		generate double `m3' = $ML_y9
	   
       * Left
	   
		generate double `y0' = .
		replace `y0' = (1-exp(-`r'*`m0'))/`r' if `m0'>=0
		replace `y0' = -`lambda'*(-`m0')^(`beta') if `m0'<0
		
		generate double `y1' = .
		replace `y1' = (1-exp(-`r'*`m1'))/`r' if `m1'>=0
		replace `y1' = -`lambda'*(-`m1')^(`beta') if `m1'<0

       * Right

		generate double `y2' = .
		replace `y2' = (1-exp(-`r'*`m2'))/`r' if `m2'>=0
		replace `y2' = -`lambda'*(-`m2')^(`beta') if `m2'<0
		
		generate double `y3' = .
		replace `y3' = (1-exp(-`r'*`m3'))/`r' if `m3'>=0
		replace `y3' = -`lambda'*(-`m3')^(`beta') if `m3'<0
	    
		* utility (L)
		
        generate double `euL' = (`prob_lefta'*`y0')+(`prob_leftb'*`y1')
		
		* utility (R)
		
        generate double `euR' = (`prob_righta'*`y2')+(`prob_rightb'*`y3')
	
		
		* utilities difference and noise specifications
		
        generate double `euDiff' = `euR' - `euL'
		
        
		* likelhood
		
        replace `lnf' = ln($cdf( `euDiff')) if $ML_y1==1
        replace `lnf' = ln($cdf(-`euDiff')) if $ML_y1==0

		
    }
end


* define globals

global cdf "normal"


/// ML_SPT_cara+no error

ml model lf ML_spt4_noerror_cara (r: select_deep prob_lefta prob_leftb prob_righta prob_rightb prize_lefta prize_leftb prize_righta prize_rightb = ) (gamma: ) (lambda: ) (beta: ) if select_deep~=., cluster(id) technique(nr) 
ml maximize, difficult
ml display


/// 4

program define ML_spt4_noerror_crra


    args lnf r gamma lambda beta
    tempvar select_deep
	tempvar prob_lefta prob_leftb prob_righta prob_rightb
	tempvar prize_lefta prize_leftb prize_righta prize_rightb
	tempvar m0 m1 m2 m3
	tempvar y0 y1 y2 y3 
    tempvar euL euR euDiff
	tempvar tmp

    quietly {
	
	   * initial  
		
		gen int `select_deep' = $ML_y1
		
       ** setup
	   
	    ** setup
	   
	   * weighting function (L)
	   
	    generate double `tmp' = (($ML_y2^`gamma')+($ML_y3^`gamma'))^(1/`gamma')

        generate double `prob_lefta' = ($ML_y2^`gamma')/`tmp'
        generate double `prob_leftb' = ($ML_y3^`gamma')/`tmp'
		
		* weighting function (R)
	    
	    replace `tmp' = (($ML_y4^`gamma')+($ML_y5^`gamma'))^(1/`gamma')

        generate double `prob_righta' = ($ML_y4^`gamma')/`tmp'
		generate double `prob_rightb' = ($ML_y5^`gamma')/`tmp'
		
		* monetary prizes (L)
	    
		generate double `m0' = $ML_y6
		generate double `m1' = $ML_y7
		
		* monetary prizes (R)
		
		generate double `m2' = $ML_y8
		generate double `m3' = $ML_y9
	   
       * Left
	   
		generate double `y0' = .
		replace `y0' = (`m0'^(1-`r'))/(1-`r') if `m0'>=0
		replace `y0' = -`lambda'*(-`m0')^(`beta') if `m0'<0
		
		generate double `y1' = .
		replace `y1' = (`m1'^(1-`r'))/(1-`r') if `m1'>=0
		replace `y1' = -`lambda'*(-`m1')^(`beta') if `m1'<0

       * Right

		generate double `y2' = .
		replace `y2' = (`m2'^(1-`r'))/(1-`r') if `m2'>=0
		replace `y2' = -`lambda'*(-`m2')^(`beta') if `m2'<0
		
		generate double `y3' = .
		replace `y3' = (`m3'^(1-`r'))/(1-`r') if `m3'>=0
		replace `y3' = -`lambda'*(-`m3')^(`beta') if `m3'<0
	    
		* utility (L)
		
        generate double `euL' = (`prob_lefta'*`y0')+(`prob_leftb'*`y1')
		
		* utility (R)
		
        generate double `euR' = (`prob_righta'*`y2')+(`prob_rightb'*`y3')
	
		
		* utilities difference and noise specifications
		
        generate double `euDiff' = `euR' - `euL'
		
        
		* likelhood
		
        replace `lnf' = ln($cdf( `euDiff')) if $ML_y1==1
        replace `lnf' = ln($cdf(-`euDiff')) if $ML_y1==0

		
    }
end


* define globals

global cdf "normal"


/// ML_SPT_crra+no error

ml model lf ML_spt4_noerror_crra (r: select_deep prob_lefta prob_leftb prob_righta prob_rightb prize_lefta prize_leftb prize_righta prize_rightb = ) (gamma: ) (lambda: ) (beta: ) if select_deep~=., cluster(id) technique(nr) 
ml maximize, difficult
ml display


/// 5

program define ML_spt4_luce_power


    args lnf r gamma lambda beta noise
    tempvar select_deep
	tempvar prob_lefta prob_leftb prob_righta prob_rightb
	tempvar prize_lefta prize_leftb prize_righta prize_rightb
	tempvar m0 m1 m2 m3
	tempvar y0 y1 y2 y3 
    tempvar euL euR euDiff
	tempvar tmp

    quietly {
	
	   * initial  
		
		gen int `select_deep' = $ML_y1
		
       ** setup
	   
	    ** setup
	   
	   * weighting function (L)
	   
	    generate double `tmp' = (($ML_y2^`gamma')+($ML_y3^`gamma'))^(1/`gamma')

        generate double `prob_lefta' = ($ML_y2^`gamma')/`tmp'
        generate double `prob_leftb' = ($ML_y3^`gamma')/`tmp'
		
		* weighting function (R)
	    
	    replace `tmp' = (($ML_y4^`gamma')+($ML_y5^`gamma'))^(1/`gamma')

        generate double `prob_righta' = ($ML_y4^`gamma')/`tmp'
		generate double `prob_rightb' = ($ML_y5^`gamma')/`tmp'
		
		* monetary prizes (L)
	    
		generate double `m0' = $ML_y6
		generate double `m1' = $ML_y7
		
		* monetary prizes (R)
		
		generate double `m2' = $ML_y8
		generate double `m3' = $ML_y9
	   
       * Left
	   
		generate double `y0' = .
		replace `y0' = (`m0')^(`r') if `m0'>=0
		replace `y0' = -`lambda'*(-`m0')^(`beta') if `m0'<0
		
		generate double `y1' = .
		replace `y1' = (`m1')^(`r') if `m1'>=0
		replace `y1' = -`lambda'*(-`m1')^(`beta') if `m1'<0

       * Right

		generate double `y2' = .
		replace `y2' = (`m2')^(`r') if `m2'>=0
		replace `y2' = -`lambda'*(-`m2')^(`beta') if `m2'<0
		
		generate double `y3' = .
		replace `y3' = (`m3')^(`r') if `m3'>=0
		replace `y3' = -`lambda'*(-`m3')^(`beta') if `m3'<0
	    
		* utility (L)
		
        generate double `euL' = (`prob_lefta'*`y0')+(`prob_leftb'*`y1')
		
		* utility (R)
		
        generate double `euR' = (`prob_righta'*`y2')+(`prob_rightb'*`y3')
	
		
		* utilities difference and noise specifications
		
        generate double `euDiff' = (`euR'^(1/`noise'))/((`euR'^(1/`noise'))+(`euL'^(1/`noise')))
        
		* likelhood
		
        replace `lnf' = ln(`euDiff') if $ML_y1==1
        replace `lnf' = ln(1-`euDiff') if $ML_y1==0

		
    }
end


* define globals

global cdf "normal"


/// ML_SPT_power+luce

ml model lf ML_spt4_luce_power (r: select_deep prob_lefta prob_leftb prob_righta prob_rightb prize_lefta prize_leftb prize_righta prize_rightb = ) (gamma: ) (lambda: ) (beta: ) (noise: ) if select_deep~=., cluster(id) technique(nr) 
ml maximize, difficult
ml display


/// 6

program define ML_spt4_luce_expo


    args lnf r gamma lambda beta alpha noise
    tempvar select_deep
	tempvar prob_lefta prob_leftb prob_righta prob_rightb
	tempvar prize_lefta prize_leftb prize_righta prize_rightb
	tempvar m0 m1 m2 m3
	tempvar y0 y1 y2 y3 
    tempvar euL euR euDiff
	tempvar tmp

    quietly {
	
	   * initial  
		
		gen int `select_deep' = $ML_y1
		
       ** setup
	   
	    ** setup
	   
	   * weighting function (L)
	   
	    generate double `tmp' = (($ML_y2^`gamma')+($ML_y3^`gamma'))^(1/`gamma')

        generate double `prob_lefta' = ($ML_y2^`gamma')/`tmp'
        generate double `prob_leftb' = ($ML_y3^`gamma')/`tmp'
		
		* weighting function (R)
	    
	    replace `tmp' = (($ML_y4^`gamma')+($ML_y5^`gamma'))^(1/`gamma')

        generate double `prob_righta' = ($ML_y4^`gamma')/`tmp'
		generate double `prob_rightb' = ($ML_y5^`gamma')/`tmp'
		
		* monetary prizes (L)
	    
		generate double `m0' = $ML_y6
		generate double `m1' = $ML_y7
		
		* monetary prizes (R)
		
		generate double `m2' = $ML_y8
		generate double `m3' = $ML_y9
		
	   
	   * Left
	   
		generate double `y0' = .
		replace `y0' = (1-exp(-`alpha'*((`m0')^(1-`r'))))/`alpha' if `m0'>=0
		replace `y0' = -`lambda'*(-`m0')^(`beta') if `m0'<0
		
		generate double `y1' = .
		replace `y1' = (1-exp(-`alpha'*((`m1')^(1-`r'))))/`alpha' if `m1'>=0
		replace `y1' = -`lambda'*(-`m1')^(`beta') if `m1'<0

       * Right

		generate double `y2' = .
		replace `y2' = (1-exp(-`alpha'*((`m2')^(1-`r'))))/`alpha' if `m2'>=0
		replace `y2' = -`lambda'*(-`m2')^(`beta') if `m2'<0
		
		generate double `y3' = .
		replace `y3' = (1-exp(-`alpha'*((`m3')^(1-`r'))))/`alpha' if `m3'>=0
		replace `y3' = -`lambda'*(-`m3')^(`beta') if `m3'<0
		
	    
		* utility (L)
		
        generate double `euL' = (`prob_lefta'*`y0')+(`prob_leftb'*`y1')
		
		* utility (R)
		
        generate double `euR' = (`prob_righta'*`y2')+(`prob_rightb'*`y3')
	
		
		* utilities difference and noise specifications
		
        generate double `euDiff' = (`euR'^(1/`noise'))/((`euR'^(1/`noise'))+(`euL'^(1/`noise')))
        
		* likelhood
		
        replace `lnf' = ln(`euDiff') if $ML_y1==1
        replace `lnf' = ln(1-`euDiff') if $ML_y1==0

		
    }
end


* define globals

global cdf "normal"


/// ML_SPT_expo+luce

ml model lf ML_spt4_luce_expo (r: select_deep prob_lefta prob_leftb prob_righta prob_rightb prize_lefta prize_leftb prize_righta prize_rightb = ) (gamma: ) (lambda: ) (beta: ) (alpha: ) (noise: ) if select_deep~=., cluster(id) technique(nr) 
ml maximize, difficult
ml display


/// 7

program define ML_spt4_luce_cara


    args lnf r gamma lambda beta noise
    tempvar select_deep
	tempvar prob_lefta prob_leftb prob_righta prob_rightb
	tempvar prize_lefta prize_leftb prize_righta prize_rightb
	tempvar m0 m1 m2 m3
	tempvar y0 y1 y2 y3 
    tempvar euL euR euDiff
	tempvar tmp

    quietly {
	
	   * initial  
		
		gen int `select_deep' = $ML_y1
		
       ** setup
	   
	    ** setup
	   
	   * weighting function (L)
	   
	    generate double `tmp' = (($ML_y2^`gamma')+($ML_y3^`gamma'))^(1/`gamma')

        generate double `prob_lefta' = ($ML_y2^`gamma')/`tmp'
        generate double `prob_leftb' = ($ML_y3^`gamma')/`tmp'
		
		* weighting function (R)
	    
	    replace `tmp' = (($ML_y4^`gamma')+($ML_y5^`gamma'))^(1/`gamma')

        generate double `prob_righta' = ($ML_y4^`gamma')/`tmp'
		generate double `prob_rightb' = ($ML_y5^`gamma')/`tmp'
		
		* monetary prizes (L)
	    
		generate double `m0' = $ML_y6
		generate double `m1' = $ML_y7
		
		* monetary prizes (R)
		
		generate double `m2' = $ML_y8
		generate double `m3' = $ML_y9
	   
       * Left
	   
		generate double `y0' = .
		replace `y0' = (1-exp(-`r'*`m0'))/`r' if `m0'>=0
		replace `y0' = -`lambda'*(-`m0')^(`beta') if `m0'<0
		
		generate double `y1' = .
		replace `y1' = (1-exp(-`r'*`m1'))/`r' if `m1'>=0
		replace `y1' = -`lambda'*(-`m1')^(`beta') if `m1'<0

       * Right

		generate double `y2' = .
		replace `y2' = (1-exp(-`r'*`m2'))/`r' if `m2'>=0
		replace `y2' = -`lambda'*(-`m2')^(`beta') if `m2'<0
		
		generate double `y3' = .
		replace `y3' = (1-exp(-`r'*`m3'))/`r' if `m3'>=0
		replace `y3' = -`lambda'*(-`m3')^(`beta') if `m3'<0
	    
		* utility (L)
		
        generate double `euL' = (`prob_lefta'*`y0')+(`prob_leftb'*`y1')
		
		* utility (R)
		
        generate double `euR' = (`prob_righta'*`y2')+(`prob_rightb'*`y3')
	
		
		* utilities difference and noise specifications
		
        generate double `euDiff' = (`euR'^(1/`noise'))/((`euR'^(1/`noise'))+(`euL'^(1/`noise')))
        
		* likelhood
		
        replace `lnf' = ln(`euDiff') if $ML_y1==1
        replace `lnf' = ln(1-`euDiff') if $ML_y1==0

		
    }
end


* define globals

global cdf "normal"


/// ML_SPT_cara+luce

ml model lf ML_spt4_luce_cara (r: select_deep prob_lefta prob_leftb prob_righta prob_rightb prize_lefta prize_leftb prize_righta prize_rightb = ) (gamma: ) (lambda: ) (beta: ) (noise: ) if select_deep~=., cluster(id) technique(nr) 
ml maximize, difficult
ml display


/// 8

program define ML_spt4_luce_crra


    args lnf r gamma lambda beta noise
    tempvar select_deep
	tempvar prob_lefta prob_leftb prob_righta prob_rightb
	tempvar prize_lefta prize_leftb prize_righta prize_rightb
	tempvar m0 m1 m2 m3
	tempvar y0 y1 y2 y3 
    tempvar euL euR euDiff
	tempvar tmp

    quietly {
	
	   * initial  
		
		gen int `select_deep' = $ML_y1
		
       ** setup
	   
	    ** setup
	   
	   * weighting function (L)
	   
	    generate double `tmp' = (($ML_y2^`gamma')+($ML_y3^`gamma'))^(1/`gamma')

        generate double `prob_lefta' = ($ML_y2^`gamma')/`tmp'
        generate double `prob_leftb' = ($ML_y3^`gamma')/`tmp'
		
		* weighting function (R)
	    
	    replace `tmp' = (($ML_y4^`gamma')+($ML_y5^`gamma'))^(1/`gamma')

        generate double `prob_righta' = ($ML_y4^`gamma')/`tmp'
		generate double `prob_rightb' = ($ML_y5^`gamma')/`tmp'
		
		* monetary prizes (L)
	    
		generate double `m0' = $ML_y6
		generate double `m1' = $ML_y7
		
		* monetary prizes (R)
		
		generate double `m2' = $ML_y8
		generate double `m3' = $ML_y9
	   
       * Left
	   
		generate double `y0' = .
		replace `y0' = (`m0'^(1-`r'))/(1-`r') if `m0'>=0
		replace `y0' = -`lambda'*(-`m0')^(`beta') if `m0'<0
		
		generate double `y1' = .
		replace `y1' = (`m1'^(1-`r'))/(1-`r') if `m1'>=0
		replace `y1' = -`lambda'*(-`m1')^(`beta') if `m1'<0

       * Right

		generate double `y2' = .
		replace `y2' = (`m2'^(1-`r'))/(1-`r') if `m2'>=0
		replace `y2' = -`lambda'*(-`m2')^(`beta') if `m2'<0
		
		generate double `y3' = .
		replace `y3' = (`m3'^(1-`r'))/(1-`r') if `m3'>=0
		replace `y3' = -`lambda'*(-`m3')^(`beta') if `m3'<0
	    
		* utility (L)
		
        generate double `euL' = (`prob_lefta'*`y0')+(`prob_leftb'*`y1')
		
		* utility (R)
		
        generate double `euR' = (`prob_righta'*`y2')+(`prob_rightb'*`y3')
	
		
		* utilities difference and noise specifications
		
        generate double `euDiff' = (`euR'^(1/`noise'))/((`euR'^(1/`noise'))+(`euL'^(1/`noise')))
        
		* likelhood
		
        replace `lnf' = ln(`euDiff') if $ML_y1==1
        replace `lnf' = ln(1-`euDiff') if $ML_y1==0

		
    }
end


* define globals

global cdf "normal"


/// ML_SPT_crra+luce

ml model lf ML_spt4_luce_crra (r: select_deep prob_lefta prob_leftb prob_righta prob_rightb prize_lefta prize_leftb prize_righta prize_rightb = ) (gamma: ) (lambda: ) (beta: ) (noise: ) if select_deep~=., cluster(id) technique(nr) 
ml maximize, difficult
ml display


/// 9

program define ML_spt4_fechner_power


    args lnf r gamma lambda beta noise
    tempvar select_deep
	tempvar prob_lefta prob_leftb prob_righta prob_rightb
	tempvar prize_lefta prize_leftb prize_righta prize_rightb
	tempvar m0 m1 m2 m3
	tempvar y0 y1 y2 y3 
    tempvar euL euR euDiff
	tempvar tmp

    quietly {
	
	   * initial  
		
		gen int `select_deep' = $ML_y1
		
       ** setup
	   
	    ** setup
	   
	   * weighting function (L)
	   
	    generate double `tmp' = (($ML_y2^`gamma')+($ML_y3^`gamma'))^(1/`gamma')

        generate double `prob_lefta' = ($ML_y2^`gamma')/`tmp'
        generate double `prob_leftb' = ($ML_y3^`gamma')/`tmp'
		
		* weighting function (R)
	    
	    replace `tmp' = (($ML_y4^`gamma')+($ML_y5^`gamma'))^(1/`gamma')

        generate double `prob_righta' = ($ML_y4^`gamma')/`tmp'
		generate double `prob_rightb' = ($ML_y5^`gamma')/`tmp'
		
		* monetary prizes (L)
	    
		generate double `m0' = $ML_y6
		generate double `m1' = $ML_y7
		
		* monetary prizes (R)
		
		generate double `m2' = $ML_y8
		generate double `m3' = $ML_y9
	   
       * Left
	   
		generate double `y0' = .
		replace `y0' = (`m0')^(`r') if `m0'>=0
		replace `y0' = -`lambda'*(-`m0')^(`beta') if `m0'<0
		
		generate double `y1' = .
		replace `y1' = (`m1')^(`r') if `m1'>=0
		replace `y1' = -`lambda'*(-`m1')^(`beta') if `m1'<0

       * Right

		generate double `y2' = .
		replace `y2' = (`m2')^(`r') if `m2'>=0
		replace `y2' = -`lambda'*(-`m2')^(`beta') if `m2'<0
		
		generate double `y3' = .
		replace `y3' = (`m3')^(`r') if `m3'>=0
		replace `y3' = -`lambda'*(-`m3')^(`beta') if `m3'<0
	    
		* utility (L)
		
        generate double `euL' = (`prob_lefta'*`y0')+(`prob_leftb'*`y1')
		
		* utility (R)
		
        generate double `euR' = (`prob_righta'*`y2')+(`prob_rightb'*`y3')
	
		
		* utilities difference and noise specifications
		
        generate double `euDiff' = (`euR'-`euL')/(`noise')
		
        
		* likelhood
		
        replace `lnf' = ln($cdf( `euDiff')) if $ML_y1==1
        replace `lnf' = ln($cdf(-`euDiff')) if $ML_y1==0

		
    }
end


* define globals

global cdf "normal"


/// ML_SPT_power+fechner

ml model lf ML_spt4_fechner_power (r: select_deep prob_lefta prob_leftb prob_righta prob_rightb prize_lefta prize_leftb prize_righta prize_rightb = ) (gamma: ) (lambda: ) (beta: ) (noise: ) if select_deep~=., cluster(id) technique(nr) 
ml maximize, difficult
ml display


/// 10

program define ML_spt4_fechner_expo


    args lnf r gamma lambda beta alpha noise
    tempvar select_deep
	tempvar prob_lefta prob_leftb prob_righta prob_rightb
	tempvar prize_lefta prize_leftb prize_righta prize_rightb
	tempvar m0 m1 m2 m3
	tempvar y0 y1 y2 y3 
    tempvar euL euR euDiff
	tempvar tmp

    quietly {
	
	   * initial  
		
		gen int `select_deep' = $ML_y1
		
       ** setup
	   
	    ** setup
	   
	   * weighting function (L)
	   
	    generate double `tmp' = (($ML_y2^`gamma')+($ML_y3^`gamma'))^(1/`gamma')

        generate double `prob_lefta' = ($ML_y2^`gamma')/`tmp'
        generate double `prob_leftb' = ($ML_y3^`gamma')/`tmp'
		
		* weighting function (R)
	    
	    replace `tmp' = (($ML_y4^`gamma')+($ML_y5^`gamma'))^(1/`gamma')

        generate double `prob_righta' = ($ML_y4^`gamma')/`tmp'
		generate double `prob_rightb' = ($ML_y5^`gamma')/`tmp'
		
		* monetary prizes (L)
	    
		generate double `m0' = $ML_y6
		generate double `m1' = $ML_y7
		
		* monetary prizes (R)
		
		generate double `m2' = $ML_y8
		generate double `m3' = $ML_y9
		
	   
	   * Left
	   
		generate double `y0' = .
		replace `y0' = (1-exp(-`alpha'*((`m0')^(1-`r'))))/`alpha' if `m0'>=0
		replace `y0' = -`lambda'*(-`m0')^(`beta') if `m0'<0
		
		generate double `y1' = .
		replace `y1' = (1-exp(-`alpha'*((`m1')^(1-`r'))))/`alpha' if `m1'>=0
		replace `y1' = -`lambda'*(-`m1')^(`beta') if `m1'<0

       * Right

		generate double `y2' = .
		replace `y2' = (1-exp(-`alpha'*((`m2')^(1-`r'))))/`alpha' if `m2'>=0
		replace `y2' = -`lambda'*(-`m2')^(`beta') if `m2'<0
		
		generate double `y3' = .
		replace `y3' = (1-exp(-`alpha'*((`m3')^(1-`r'))))/`alpha' if `m3'>=0
		replace `y3' = -`lambda'*(-`m3')^(`beta') if `m3'<0
		
	    
		* utility (L)
		
        generate double `euL' = (`prob_lefta'*`y0')+(`prob_leftb'*`y1')
		
		* utility (R)
		
        generate double `euR' = (`prob_righta'*`y2')+(`prob_rightb'*`y3')
	
		
		* utilities difference and noise specifications
		
        generate double `euDiff' = (`euR'-`euL')/(`noise')
		
        
		* likelhood
		
        replace `lnf' = ln($cdf( `euDiff')) if $ML_y1==1
        replace `lnf' = ln($cdf(-`euDiff')) if $ML_y1==0

		
    }
end


* define globals

global cdf "normal"


/// ML_SPT_expo+fechner

ml model lf ML_spt4_fechner_expo (r: select_deep prob_lefta prob_leftb prob_righta prob_rightb prize_lefta prize_leftb prize_righta prize_rightb = ) (gamma: ) (lambda: ) (beta: ) (alpha: ) (noise: ) if select_deep~=., cluster(id) technique(nr) 
ml maximize, difficult
ml display


/// 11

program define ML_spt4_fechner_cara


    args lnf r gamma lambda beta noise
    tempvar select_deep
	tempvar prob_lefta prob_leftb prob_righta prob_rightb
	tempvar prize_lefta prize_leftb prize_righta prize_rightb
	tempvar m0 m1 m2 m3
	tempvar y0 y1 y2 y3 
    tempvar euL euR euDiff
	tempvar tmp

    quietly {
	
	   * initial  
		
		gen int `select_deep' = $ML_y1
		
       ** setup
	   
	    ** setup
	   
	   * weighting function (L)
	   
	    generate double `tmp' = (($ML_y2^`gamma')+($ML_y3^`gamma'))^(1/`gamma')

        generate double `prob_lefta' = ($ML_y2^`gamma')/`tmp'
        generate double `prob_leftb' = ($ML_y3^`gamma')/`tmp'
		
		* weighting function (R)
	    
	    replace `tmp' = (($ML_y4^`gamma')+($ML_y5^`gamma'))^(1/`gamma')

        generate double `prob_righta' = ($ML_y4^`gamma')/`tmp'
		generate double `prob_rightb' = ($ML_y5^`gamma')/`tmp'
		
		* monetary prizes (L)
	    
		generate double `m0' = $ML_y6
		generate double `m1' = $ML_y7
		
		* monetary prizes (R)
		
		generate double `m2' = $ML_y8
		generate double `m3' = $ML_y9
	   
       * Left
	   
		generate double `y0' = .
		replace `y0' = (1-exp(-`r'*`m0'))/`r' if `m0'>=0
		replace `y0' = -`lambda'*(-`m0')^(`beta') if `m0'<0
		
		generate double `y1' = .
		replace `y1' = (1-exp(-`r'*`m1'))/`r' if `m1'>=0
		replace `y1' = -`lambda'*(-`m1')^(`beta') if `m1'<0

       * Right

		generate double `y2' = .
		replace `y2' = (1-exp(-`r'*`m2'))/`r' if `m2'>=0
		replace `y2' = -`lambda'*(-`m2')^(`beta') if `m2'<0
		
		generate double `y3' = .
		replace `y3' = (1-exp(-`r'*`m3'))/`r' if `m3'>=0
		replace `y3' = -`lambda'*(-`m3')^(`beta') if `m3'<0
	    
		* utility (L)
		
        generate double `euL' = (`prob_lefta'*`y0')+(`prob_leftb'*`y1')
		
		* utility (R)
		
        generate double `euR' = (`prob_righta'*`y2')+(`prob_rightb'*`y3')
	
		
		* utilities difference and noise specifications
		
        generate double `euDiff' = (`euR'-`euL')/(`noise')
		
        
		* likelhood
		
        replace `lnf' = ln($cdf( `euDiff')) if $ML_y1==1
        replace `lnf' = ln($cdf(-`euDiff')) if $ML_y1==0

		
    }
end


* define globals

global cdf "normal"


/// ML_SPT_cara+fechner

ml model lf ML_spt4_fechner_cara (r: select_deep prob_lefta prob_leftb prob_righta prob_rightb prize_lefta prize_leftb prize_righta prize_rightb = ) (gamma: ) (lambda: ) (beta: ) (noise: ) if select_deep~=., cluster(id) technique(nr) 
ml maximize, difficult
ml display


/// 12

program define ML_spt4_fechner_crra


    args lnf r gamma lambda beta noise
    tempvar select_deep
	tempvar prob_lefta prob_leftb prob_righta prob_rightb
	tempvar prize_lefta prize_leftb prize_righta prize_rightb
	tempvar m0 m1 m2 m3
	tempvar y0 y1 y2 y3 
    tempvar euL euR euDiff
	tempvar tmp

    quietly {
	
	   * initial  
		
		gen int `select_deep' = $ML_y1
		
       ** setup
	   
	    ** setup
	   
	   * weighting function (L)
	   
	    generate double `tmp' = (($ML_y2^`gamma')+($ML_y3^`gamma'))^(1/`gamma')

        generate double `prob_lefta' = ($ML_y2^`gamma')/`tmp'
        generate double `prob_leftb' = ($ML_y3^`gamma')/`tmp'
		
		* weighting function (R)
	    
	    replace `tmp' = (($ML_y4^`gamma')+($ML_y5^`gamma'))^(1/`gamma')

        generate double `prob_righta' = ($ML_y4^`gamma')/`tmp'
		generate double `prob_rightb' = ($ML_y5^`gamma')/`tmp'
		
		* monetary prizes (L)
	    
		generate double `m0' = $ML_y6
		generate double `m1' = $ML_y7
		
		* monetary prizes (R)
		
		generate double `m2' = $ML_y8
		generate double `m3' = $ML_y9
	   
       * Left
	   
		generate double `y0' = .
		replace `y0' = (`m0'^(1-`r'))/(1-`r') if `m0'>=0
		replace `y0' = -`lambda'*(-`m0')^(`beta') if `m0'<0
		
		generate double `y1' = .
		replace `y1' = (`m1'^(1-`r'))/(1-`r') if `m1'>=0
		replace `y1' = -`lambda'*(-`m1')^(`beta') if `m1'<0

       * Right

		generate double `y2' = .
		replace `y2' = (`m2'^(1-`r'))/(1-`r') if `m2'>=0
		replace `y2' = -`lambda'*(-`m2')^(`beta') if `m2'<0
		
		generate double `y3' = .
		replace `y3' = (`m3'^(1-`r'))/(1-`r') if `m3'>=0
		replace `y3' = -`lambda'*(-`m3')^(`beta') if `m3'<0
	    
		* utility (L)
		
        generate double `euL' = (`prob_lefta'*`y0')+(`prob_leftb'*`y1')
		
		* utility (R)
		
        generate double `euR' = (`prob_righta'*`y2')+(`prob_rightb'*`y3')
	
		
		* utilities difference and noise specifications
		
        generate double `euDiff' = (`euR'-`euL')/(`noise')
		
        
		* likelhood
		
        replace `lnf' = ln($cdf( `euDiff')) if $ML_y1==1
        replace `lnf' = ln($cdf(-`euDiff')) if $ML_y1==0

		
    }
end


* define globals

global cdf "normal"


/// ML_SPT_crra+fechner

ml model lf ML_spt4_fechner_crra (r: select_deep prob_lefta prob_leftb prob_righta prob_rightb prize_lefta prize_leftb prize_righta prize_rightb = ) (gamma: ) (lambda: ) (beta: ) (noise: ) if select_deep~=., cluster(id) technique(nr) 
ml maximize, difficult
ml display



*** RDEU

/// 1

program define ML_rdu4_noerror_quiqqin_power

    args lnf r gamma
    tempvar select_deep
	tempvar prob_lefta prob_leftb prob_righta prob_rightb
	tempvar prize_lefta prize_leftb prize_righta prize_rightb
	tempvar y0 y1 y2 y3 
	tempvar wp1 wp2 wp3 wp4
    tempvar euL euR euDiff 

    quietly {
	
        * initial  
		
		gen int `select_deep' = $ML_y1
		
       * setup
	   
	   * probabilities (L)
	   
        generate double `prob_lefta' = $ML_y2
        generate double `prob_leftb' = $ML_y3
		
	   * probabilities (R)
	   
        generate double `prob_righta' = $ML_y4
        generate double `prob_rightb' = $ML_y5
		
		
		* weighted probabilities 
		
		
		if $ML_y6 > $ML_y7 {
			generate double `wp1'= (`prob_lefta'^`gamma') 				
			generate double `wp2'= 1-`wp1' 
			
			}
		
		if $ML_y7 > $ML_y6 {
			generate double `wp2'= (`prob_leftb'^`gamma') 				
			generate double `wp1'= 1-`wp2' 
			
			}
				* weighted probabilities 
		
		
		if $ML_y8 > $ML_y9 {
			generate double `wp3'= (`prob_righta'^`gamma') 				
			generate double `wp4'= 1-`wp3' 
			
			}
		
		if $ML_y9 > $ML_y8 {
			generate double `wp4'= (`prob_rightb'^`gamma') 				
			generate double `wp3'= 1-`wp4' 
			
			}	

			
		* arguments of the utility function
		
        
		* Left 
		
		generate double `y0' = (abs($ML_y6))^`r'
        generate double `y1' = (abs($ML_y7))^`r'
		
		* Right
		
        generate double `y2' = (abs($ML_y8))^`r'
        generate double `y3' = (abs($ML_y9))^`r'
		
		
		replace `y0' = -`y0' if $ML_y6 < 0
        replace `y1' = -`y1' if $ML_y7 < 0
        replace `y2' = -`y2' if $ML_y8 < 0
		replace `y3' = -`y3' if $ML_y9 < 0
		
		
        *  utility (L)
		
        generate double `euL' = (`wp1'*`y0')+(`wp2'*`y1')
		
		*  utility (R)
		
        generate double `euR' = (`wp3'*`y2')+(`wp4'*`y3')
		
		
		* utilities difference and noise specifications
		
        generate double `euDiff' = `euR' - `euL'
        
		* likelhood
		
        replace `lnf' = ln($cdf( `euDiff')) if $ML_y1==1
        replace `lnf' = ln($cdf(-`euDiff')) if $ML_y1==0

		
    }
end


* define globals

global cdf "normal"


/// ML_RDT_quiggin+power+no error

ml model lf ML_rdu4_noerror_quiqqin_power (r: select_deep prob_lefta prob_leftb prob_righta prob_rightb prize_lefta prize_leftb prize_righta prize_rightb = ) (gamma: ) if select_deep~=., cluster(id) technique(nr) 
ml maximize, difficult
ml display

estimates store deep1, title (RDU)


/// 2

program define ML_rdu4_noerror_tk_power

    args lnf r gamma
    tempvar select_deep
	tempvar prob_lefta prob_leftb prob_righta prob_rightb
	tempvar prize_lefta prize_leftb prize_righta prize_rightb
	tempvar y0 y1 y2 y3 
	tempvar wp1 wp2 wp3 wp4
    tempvar euL euR euDiff 

    quietly {
	
        * initial  
		
		gen int `select_deep' = $ML_y1
		
       * setup
	   
	   * probabilities (L)
	   
        generate double `prob_lefta' = $ML_y2
        generate double `prob_leftb' = $ML_y3
		
	   * probabilities (R)
	   
        generate double `prob_righta' = $ML_y4
        generate double `prob_rightb' = $ML_y5
		
		
		* weighted probabilities 
		
		
		if $ML_y6 > $ML_y7 {
			generate double `wp1'= (`prob_lefta'^`gamma')/(`prob_lefta'^`gamma' + (1-`prob_lefta')^`gamma')^(1/`gamma')				
			generate double `wp2'= 1-`wp1' 
			
			}
		
		if $ML_y7 > $ML_y6 {
			generate double `wp2'= (`prob_leftb'^`gamma')/(`prob_leftb'^`gamma' + (1-`prob_leftb')^`gamma')^(1/`gamma') 				
			generate double `wp1'= 1-`wp2' 
			
			}
				* weighted probabilities 
		
		
		if $ML_y8 > $ML_y9 {
			generate double `wp3'= (`prob_righta'^`gamma')/(`prob_righta'^`gamma' + (1-`prob_righta')^`gamma')^(1/`gamma') 				
			generate double `wp4'= 1-`wp3' 
			
			}
		
		if $ML_y9 > $ML_y8 {
			generate double `wp4'= (`prob_rightb'^`gamma')/(`prob_rightb'^`gamma' + (1-`prob_rightb')^`gamma')^(1/`gamma') 				
			generate double `wp3'= 1-`wp4' 
			
			}	

			
		* arguments of the utility function
		
        
		* Left 
		
		generate double `y0' = (abs($ML_y6))^`r'
        generate double `y1' = (abs($ML_y7))^`r'
		
		* Right
		
        generate double `y2' = (abs($ML_y8))^`r'
        generate double `y3' = (abs($ML_y9))^`r'
		
		
		replace `y0' = -`y0' if $ML_y6 < 0
        replace `y1' = -`y1' if $ML_y7 < 0
        replace `y2' = -`y2' if $ML_y8 < 0
		replace `y3' = -`y3' if $ML_y9 < 0
		
		
        *  utility (L)
		
        generate double `euL' = (`wp1'*`y0')+(`wp2'*`y1')
		
		*  utility (R)
		
        generate double `euR' = (`wp3'*`y2')+(`wp4'*`y3')
		
		
		* utilities difference and noise specifications
		
        generate double `euDiff' = `euR' - `euL'
        
		* likelhood
		
        replace `lnf' = ln($cdf( `euDiff')) if $ML_y1==1
        replace `lnf' = ln($cdf(-`euDiff')) if $ML_y1==0

		
    }
end


* define globals

global cdf "normal"


/// ML_RDT_tk+power+no error

ml model lf ML_rdu4_noerror_tk_power (r: select_deep prob_lefta prob_leftb prob_righta prob_rightb prize_lefta prize_leftb prize_righta prize_rightb = ) (gamma: ) if select_deep~=., cluster(id) technique(nr) 
ml maximize, difficult
ml display

estimates store deep2, title (RDU)


/// 3

program define ML_rdu4_noerror_prelec1_power

    args lnf r gamma
    tempvar select_deep
	tempvar prob_lefta prob_leftb prob_righta prob_rightb
	tempvar prize_lefta prize_leftb prize_righta prize_rightb
	tempvar y0 y1 y2 y3 
	tempvar wp1 wp2 wp3 wp4
    tempvar euL euR euDiff 

    quietly {
	
        * initial  
		
		gen int `select_deep' = $ML_y1
		
       * setup
	   
	   * probabilities (L)
	   
        generate double `prob_lefta' = $ML_y2
        generate double `prob_leftb' = $ML_y3
		
	   * probabilities (R)
	   
        generate double `prob_righta' = $ML_y4
        generate double `prob_rightb' = $ML_y5
		
		
		* weighted probabilities 
		
		
		if $ML_y6 > $ML_y7 {
			generate double `wp1'= exp(-((-ln(`prob_lefta'))^`gamma')) if `prob_lefta' > 0 & `prob_lefta' < 1				
			generate double `wp2'= 1-`wp1' 
			
			}
		
		if $ML_y7 > $ML_y6 {
			generate double `wp2'= exp(-((-ln(`prob_leftb'))^`gamma')) if `prob_leftb' > 0 & `prob_leftb' < 1 				
			generate double `wp1'= 1-`wp2' 
			
			}
				* weighted probabilities 
		
		
		if $ML_y8 > $ML_y9 {
			generate double `wp3'= exp(-((-ln(`prob_righta'))^`gamma')) if `prob_righta' > 0 & `prob_righta' < 1 				
			generate double `wp4'= 1-`wp3' 
			
			}
		
		if $ML_y9 > $ML_y8 {
			generate double `wp4'= exp(-((-ln(`prob_rightb'))^`gamma')) if `prob_rightb' > 0 & `prob_rightb' < 1 				
			generate double `wp3'= 1-`wp4' 
			
			}	

			
		* arguments of the utility function
		
        
		* Left 
		
		generate double `y0' = (abs($ML_y6))^`r'
        generate double `y1' = (abs($ML_y7))^`r'
		
		* Right
		
        generate double `y2' = (abs($ML_y8))^`r'
        generate double `y3' = (abs($ML_y9))^`r'
		
		
		replace `y0' = -`y0' if $ML_y6 < 0
        replace `y1' = -`y1' if $ML_y7 < 0
        replace `y2' = -`y2' if $ML_y8 < 0
		replace `y3' = -`y3' if $ML_y9 < 0
		
		
        *  utility (L)
		
        generate double `euL' = (`wp1'*`y0')+(`wp2'*`y1')
		
		*  utility (R)
		
        generate double `euR' = (`wp3'*`y2')+(`wp4'*`y3')
		
		
		* utilities difference and noise specifications
		
        generate double `euDiff' = `euR' - `euL'
        
		* likelhood
		
        replace `lnf' = ln($cdf( `euDiff')) if $ML_y1==1
        replace `lnf' = ln($cdf(-`euDiff')) if $ML_y1==0

		
    }
end


* define globals

global cdf "normal"


/// ML_RDT_prelec1+power+no error

ml model lf ML_rdu4_noerror_prelec1_power (r: select_deep prob_lefta prob_leftb prob_righta prob_rightb prize_lefta prize_leftb prize_righta prize_rightb = ) (gamma: ) if select_deep~=., cluster(id) technique(nr) 
ml maximize, difficult
ml display

estimates store deep3, title (RDU)


/// 4

program define ML_rdu4_noerror_prelec2_power

    args lnf r eta phi
    tempvar select_deep
	tempvar prob_lefta prob_leftb prob_righta prob_rightb
	tempvar prize_lefta prize_leftb prize_righta prize_rightb
	tempvar y0 y1 y2 y3 
	tempvar wp1 wp2 wp3 wp4
    tempvar euL euR euDiff 

    quietly {
	
        * initial  
		
		gen int `select_deep' = $ML_y1
		
       * setup
	   
	   * probabilities (L)
	   
        generate double `prob_lefta' = $ML_y2
        generate double `prob_leftb' = $ML_y3
		
	   * probabilities (R)
	   
        generate double `prob_righta' = $ML_y4
        generate double `prob_rightb' = $ML_y5
		
		
		* weighted probabilities 
		
		
		if $ML_y6 > $ML_y7 {
			generate double `wp1'= exp((-`eta')*((-ln(`prob_lefta'))^`phi')) if `prob_lefta' > 0 & `prob_lefta' < 1				
			generate double `wp2'= 1-`wp1' 
			
			}
		
		if $ML_y7 > $ML_y6 {
			generate double `wp2'= exp((-`eta')*((-ln(`prob_leftb'))^`phi')) if `prob_leftb' > 0 & `prob_leftb' < 1 				
			generate double `wp1'= 1-`wp2' 
			
			}
				* weighted probabilities 
		
		
		if $ML_y8 > $ML_y9 {
			generate double `wp3'= exp((-`eta')*((-ln(`prob_righta'))^`phi')) if `prob_righta' > 0 & `prob_righta' < 1 				
			generate double `wp4'= 1-`wp3' 
			
			}
		
		if $ML_y9 > $ML_y8 {
			generate double `wp4'= exp((-`eta')*((-ln(`prob_rightb'))^`phi')) if `prob_rightb' > 0 & `prob_rightb' < 1 				
			generate double `wp3'= 1-`wp4' 
			
			}	

			
		* arguments of the utility function
		
        
		* Left 
		
		generate double `y0' = (abs($ML_y6))^`r'
        generate double `y1' = (abs($ML_y7))^`r'
		
		* Right
		
        generate double `y2' = (abs($ML_y8))^`r'
        generate double `y3' = (abs($ML_y9))^`r'
		
		
		replace `y0' = -`y0' if $ML_y6 < 0
        replace `y1' = -`y1' if $ML_y7 < 0
        replace `y2' = -`y2' if $ML_y8 < 0
		replace `y3' = -`y3' if $ML_y9 < 0
		
		
        *  utility (L)
		
        generate double `euL' = (`wp1'*`y0')+(`wp2'*`y1')
		
		*  utility (R)
		
        generate double `euR' = (`wp3'*`y2')+(`wp4'*`y3')
		
		
		* utilities difference and noise specifications
		
        generate double `euDiff' = `euR' - `euL'
        
		* likelhood
		
        replace `lnf' = ln($cdf( `euDiff')) if $ML_y1==1
        replace `lnf' = ln($cdf(-`euDiff')) if $ML_y1==0

		
    }
end


* define globals

global cdf "normal"


/// ML_RDT_prelec2+power+no error

ml model lf ML_rdu4_noerror_prelec2_power (r: select_deep prob_lefta prob_leftb prob_righta prob_rightb prize_lefta prize_leftb prize_righta prize_rightb = ) (eta: ) (phi: ) if select_deep~=., cluster(id) technique(nr) 
ml maximize, difficult
ml display

estimates store deep4, title (RDU)


/// 5

program define ML_rdu4_noerror_quiqqin_crra

    args lnf r gamma
    tempvar select_deep
	tempvar prob_lefta prob_leftb prob_righta prob_rightb
	tempvar prize_lefta prize_leftb prize_righta prize_rightb
	tempvar y0 y1 y2 y3 
	tempvar wp1 wp2 wp3 wp4
    tempvar euL euR euDiff 

    quietly {
	
        * initial  
		
		gen int `select_deep' = $ML_y1
		
       * setup
	   
	   * probabilities (L)
	   
        generate double `prob_lefta' = $ML_y2
        generate double `prob_leftb' = $ML_y3
		
	   * probabilities (R)
	   
        generate double `prob_righta' = $ML_y4
        generate double `prob_rightb' = $ML_y5
		
		
		* weighted probabilities 
		
		
		if $ML_y6 > $ML_y7 {
			generate double `wp1'= (`prob_lefta'^`gamma') 				
			generate double `wp2'= 1-`wp1' 
			
			}
		
		if $ML_y7 > $ML_y6 {
			generate double `wp2'= (`prob_leftb'^`gamma') 				
			generate double `wp1'= 1-`wp2' 
			
			}
				* weighted probabilities 
		
		
		if $ML_y8 > $ML_y9 {
			generate double `wp3'= (`prob_righta'^`gamma') 				
			generate double `wp4'= 1-`wp3' 
			
			}
		
		if $ML_y9 > $ML_y8 {
			generate double `wp4'= (`prob_rightb'^`gamma') 				
			generate double `wp3'= 1-`wp4' 
			
			}		

			
		* arguments of the utility function
		
        
		* Left 
		
		generate double `y0' = ((abs($ML_y6))^(1-`r'))/(1-`r')
        generate double `y1' = ((abs($ML_y7))^(1-`r'))/(1-`r')
		
		* Right
		
        generate double `y2' = ((abs($ML_y8))^(1-`r'))/(1-`r')
        generate double `y3' = ((abs($ML_y9))^(1-`r'))/(1-`r')
		
		
		replace `y0' = -`y0' if $ML_y6 < 0
        replace `y1' = -`y1' if $ML_y7 < 0
        replace `y2' = -`y2' if $ML_y8 < 0
		replace `y3' = -`y3' if $ML_y9 < 0
		
		
        *  utility (L)
		
        generate double `euL' = (`wp1'*`y0')+(`wp2'*`y1')
		
		*  utility (R)
		
        generate double `euR' = (`wp3'*`y2')+(`wp4'*`y3')
		
		
		* utilities difference and noise specifications
		
        generate double `euDiff' = `euR' - `euL'
        
		* likelhood
		
        replace `lnf' = ln($cdf( `euDiff')) if $ML_y1==1
        replace `lnf' = ln($cdf(-`euDiff')) if $ML_y1==0

		
    }
end


* define globals

global cdf "normal"


/// ML_RDT_quiggin+crra+no error

ml model lf ML_rdu4_noerror_quiqqin_crra (r: select_deep prob_lefta prob_leftb prob_righta prob_rightb prize_lefta prize_leftb prize_righta prize_rightb = ) (gamma: ) if select_deep~=., cluster(id) technique(nr) 
ml maximize, difficult
ml display

estimates store deep5, title (RDU)


/// 6

program define ML_rdu4_noerror_tk_crra

    args lnf r gamma
    tempvar select_deep
	tempvar prob_lefta prob_leftb prob_righta prob_rightb
	tempvar prize_lefta prize_leftb prize_righta prize_rightb
	tempvar y0 y1 y2 y3 
	tempvar wp1 wp2 wp3 wp4
    tempvar euL euR euDiff 

    quietly {
	
        * initial  
		
		gen int `select_deep' = $ML_y1
		
       * setup
	   
	   * probabilities (L)
	   
        generate double `prob_lefta' = $ML_y2
        generate double `prob_leftb' = $ML_y3
		
	   * probabilities (R)
	   
        generate double `prob_righta' = $ML_y4
        generate double `prob_rightb' = $ML_y5
		
		
		* weighted probabilities 
		
		
		if $ML_y6 > $ML_y7 {
			generate double `wp1'= (`prob_lefta'^`gamma')/(`prob_lefta'^`gamma' + (1-`prob_lefta')^`gamma')^(1/`gamma')				
			generate double `wp2'= 1-`wp1' 
			
			}
		
		if $ML_y7 > $ML_y6 {
			generate double `wp2'= (`prob_leftb'^`gamma')/(`prob_leftb'^`gamma' + (1-`prob_leftb')^`gamma')^(1/`gamma') 				
			generate double `wp1'= 1-`wp2' 
			
			}
				* weighted probabilities 
		
		
		if $ML_y8 > $ML_y9 {
			generate double `wp3'= (`prob_righta'^`gamma')/(`prob_righta'^`gamma' + (1-`prob_righta')^`gamma')^(1/`gamma') 				
			generate double `wp4'= 1-`wp3' 
			
			}
		
		if $ML_y9 > $ML_y8 {
			generate double `wp4'= (`prob_rightb'^`gamma')/(`prob_rightb'^`gamma' + (1-`prob_rightb')^`gamma')^(1/`gamma') 				
			generate double `wp3'= 1-`wp4' 
			
			}	

			
		* arguments of the utility function
		
        
		* Left 
		
		generate double `y0' = ((abs($ML_y6))^(1-`r'))/(1-`r')
        generate double `y1' = ((abs($ML_y7))^(1-`r'))/(1-`r')
		
		* Right
		
        generate double `y2' = ((abs($ML_y8))^(1-`r'))/(1-`r')
        generate double `y3' = ((abs($ML_y9))^(1-`r'))/(1-`r')
		
		
		replace `y0' = -`y0' if $ML_y6 < 0
        replace `y1' = -`y1' if $ML_y7 < 0
        replace `y2' = -`y2' if $ML_y8 < 0
		replace `y3' = -`y3' if $ML_y9 < 0
		
		
        *  utility (L)
		
        generate double `euL' = (`wp1'*`y0')+(`wp2'*`y1')
		
		*  utility (R)
		
        generate double `euR' = (`wp3'*`y2')+(`wp4'*`y3')
		
		
		* utilities difference and noise specifications
		
        generate double `euDiff' = `euR' - `euL'
        
		* likelhood
		
        replace `lnf' = ln($cdf( `euDiff')) if $ML_y1==1
        replace `lnf' = ln($cdf(-`euDiff')) if $ML_y1==0

		
    }
end


* define globals

global cdf "normal"


/// ML_RDT_tk+crra+no error

ml model lf ML_rdu4_noerror_tk_crra (r: select_deep prob_lefta prob_leftb prob_righta prob_rightb prize_lefta prize_leftb prize_righta prize_rightb = ) (gamma: ) if select_deep~=., cluster(id) technique(nr) 
ml maximize, difficult
ml display

estimates store deep6, title (RDU)


/// 7

program define ML_rdu4_noerror_prelec1_crra

    args lnf r gamma
    tempvar select_deep
	tempvar prob_lefta prob_leftb prob_righta prob_rightb
	tempvar prize_lefta prize_leftb prize_righta prize_rightb
	tempvar y0 y1 y2 y3 
	tempvar wp1 wp2 wp3 wp4
    tempvar euL euR euDiff 

    quietly {
	
        * initial  
		
		gen int `select_deep' = $ML_y1
		
       * setup
	   
	   * probabilities (L)
	   
        generate double `prob_lefta' = $ML_y2
        generate double `prob_leftb' = $ML_y3
		
	   * probabilities (R)
	   
        generate double `prob_righta' = $ML_y4
        generate double `prob_rightb' = $ML_y5
		
		
		* weighted probabilities 
		
		
		if $ML_y6 > $ML_y7 {
			generate double `wp1'= exp(-((-ln(`prob_lefta'))^`gamma')) if `prob_lefta' > 0 & `prob_lefta' < 1				
			generate double `wp2'= 1-`wp1' 
			
			}
		
		if $ML_y7 > $ML_y6 {
			generate double `wp2'= exp(-((-ln(`prob_leftb'))^`gamma')) if `prob_leftb' > 0 & `prob_leftb' < 1 				
			generate double `wp1'= 1-`wp2' 
			
			}
				* weighted probabilities 
		
		
		if $ML_y8 > $ML_y9 {
			generate double `wp3'= exp(-((-ln(`prob_righta'))^`gamma')) if `prob_righta' > 0 & `prob_righta' < 1 				
			generate double `wp4'= 1-`wp3' 
			
			}
		
		if $ML_y9 > $ML_y8 {
			generate double `wp4'= exp(-((-ln(`prob_rightb'))^`gamma')) if `prob_rightb' > 0 & `prob_rightb' < 1 				
			generate double `wp3'= 1-`wp4' 
			
			}	

			
		* arguments of the utility function
		
        
		* Left 
		
		generate double `y0' = ((abs($ML_y6))^(1-`r'))/(1-`r')
        generate double `y1' = ((abs($ML_y7))^(1-`r'))/(1-`r')
		
		* Right
		
        generate double `y2' = ((abs($ML_y8))^(1-`r'))/(1-`r')
        generate double `y3' = ((abs($ML_y9))^(1-`r'))/(1-`r')
		
		
		replace `y0' = -`y0' if $ML_y6 < 0
        replace `y1' = -`y1' if $ML_y7 < 0
        replace `y2' = -`y2' if $ML_y8 < 0
		replace `y3' = -`y3' if $ML_y9 < 0
		
		
        *  utility (L)
		
        generate double `euL' = (`wp1'*`y0')+(`wp2'*`y1')
		
		*  utility (R)
		
        generate double `euR' = (`wp3'*`y2')+(`wp4'*`y3')
		
		
		* utilities difference and noise specifications
		
        generate double `euDiff' = `euR' - `euL'
        
		* likelhood
		
        replace `lnf' = ln($cdf( `euDiff')) if $ML_y1==1
        replace `lnf' = ln($cdf(-`euDiff')) if $ML_y1==0

		
    }
end


* define globals

global cdf "normal"


/// ML_RDT_prelec1+crra+no error

ml model lf ML_rdu4_noerror_prelec1_crra (r: select_deep prob_lefta prob_leftb prob_righta prob_rightb prize_lefta prize_leftb prize_righta prize_rightb = ) (gamma: ) if select_deep~=., cluster(id) technique(nr) 
ml maximize, difficult
ml display

estimates store deep7, title (RDU)


/// 8

program define ML_rdu4_noerror_prelec2_crra

    args lnf r eta phi
    tempvar select_deep
	tempvar prob_lefta prob_leftb prob_righta prob_rightb
	tempvar prize_lefta prize_leftb prize_righta prize_rightb
	tempvar y0 y1 y2 y3 
	tempvar wp1 wp2 wp3 wp4
    tempvar euL euR euDiff 

    quietly {
	
        * initial  
		
		gen int `select_deep' = $ML_y1
		
       * setup
	   
	   * probabilities (L)
	   
        generate double `prob_lefta' = $ML_y2
        generate double `prob_leftb' = $ML_y3
		
	   * probabilities (R)
	   
        generate double `prob_righta' = $ML_y4
        generate double `prob_rightb' = $ML_y5
		
		
		* weighted probabilities 
		
		
		if $ML_y6 > $ML_y7 {
			generate double `wp1'= exp((-`eta')*((-ln(`prob_lefta'))^`phi')) if `prob_lefta' > 0 & `prob_lefta' < 1				
			generate double `wp2'= 1-`wp1' 
			
			}
		
		if $ML_y7 > $ML_y6 {
			generate double `wp2'= exp((-`eta')*((-ln(`prob_leftb'))^`phi')) if `prob_leftb' > 0 & `prob_leftb' < 1 				
			generate double `wp1'= 1-`wp2' 
			
			}
				* weighted probabilities 
		
		
		if $ML_y8 > $ML_y9 {
			generate double `wp3'= exp((-`eta')*((-ln(`prob_righta'))^`phi')) if `prob_righta' > 0 & `prob_righta' < 1 				
			generate double `wp4'= 1-`wp3' 
			
			}
		
		if $ML_y9 > $ML_y8 {
			generate double `wp4'= exp((-`eta')*((-ln(`prob_rightb'))^`phi')) if `prob_rightb' > 0 & `prob_rightb' < 1 				
			generate double `wp3'= 1-`wp4' 
			
			}		

			
		* arguments of the utility function
		
        
		* Left 
		
		generate double `y0' = ((abs($ML_y6))^(1-`r'))/(1-`r')
        generate double `y1' = ((abs($ML_y7))^(1-`r'))/(1-`r')
		
		* Right
		
        generate double `y2' = ((abs($ML_y8))^(1-`r'))/(1-`r')
        generate double `y3' = ((abs($ML_y9))^(1-`r'))/(1-`r')
		
		
		replace `y0' = -`y0' if $ML_y6 < 0
        replace `y1' = -`y1' if $ML_y7 < 0
        replace `y2' = -`y2' if $ML_y8 < 0
		replace `y3' = -`y3' if $ML_y9 < 0
		
		
        *  utility (L)
		
        generate double `euL' = (`wp1'*`y0')+(`wp2'*`y1')
		
		*  utility (R)
		
        generate double `euR' = (`wp3'*`y2')+(`wp4'*`y3')
		
		
		* utilities difference and noise specifications
		
        generate double `euDiff' = `euR' - `euL'
        
		* likelhood
		
        replace `lnf' = ln($cdf( `euDiff')) if $ML_y1==1
        replace `lnf' = ln($cdf(-`euDiff')) if $ML_y1==0

		
    }
end


* define globals

global cdf "normal"


/// ML_RDT_prelec2+crra+no error

ml model lf ML_rdu4_noerror_prelec2_crra (r: select_deep prob_lefta prob_leftb prob_righta prob_rightb prize_lefta prize_leftb prize_righta prize_rightb = ) (eta: ) (phi: ) if select_deep~=., cluster(id) technique(nr) 
ml maximize, difficult
ml display

estimates store deep8, title (RDU)


/// 9

program define ML_rdu4_noerror_quiqqin_cara

    args lnf r gamma
    tempvar select_deep
	tempvar prob_lefta prob_leftb prob_righta prob_rightb
	tempvar prize_lefta prize_leftb prize_righta prize_rightb
	tempvar y0 y1 y2 y3 
	tempvar wp1 wp2 wp3 wp4
    tempvar euL euR euDiff 

    quietly {
	
        * initial  
		
		gen int `select_deep' = $ML_y1
		
       * setup
	   
	   * probabilities (L)
	   
        generate double `prob_lefta' = $ML_y2
        generate double `prob_leftb' = $ML_y3
		
	   * probabilities (R)
	   
        generate double `prob_righta' = $ML_y4
        generate double `prob_rightb' = $ML_y5
		
		
		* weighted probabilities 
		
		
		if $ML_y6 > $ML_y7 {
			generate double `wp1'= (`prob_lefta'^`gamma') 				
			generate double `wp2'= 1-`wp1' 
			
			}
		
		if $ML_y7 > $ML_y6 {
			generate double `wp2'= (`prob_leftb'^`gamma') 				
			generate double `wp1'= 1-`wp2' 
			
			}
				* weighted probabilities 
		
		
		if $ML_y8 > $ML_y9 {
			generate double `wp3'= (`prob_righta'^`gamma') 				
			generate double `wp4'= 1-`wp3' 
			
			}
		
		if $ML_y9 > $ML_y8 {
			generate double `wp4'= (`prob_rightb'^`gamma') 				
			generate double `wp3'= 1-`wp4' 
			
			}	

			
		* arguments of the utility function
		
        
		* Left 
		
		generate double `y0' = (1-exp(-`r'*$ML_y6))/`r'
        generate double `y1' = (1-exp(-`r'*$ML_y7))/`r'
		
		* Right
		
        generate double `y2' = (1-exp(-`r'*$ML_y8))/`r'
        generate double `y3' = (1-exp(-`r'*$ML_y9))/`r'
		
		
		replace `y0' = -`y0' if $ML_y6 < 0
        replace `y1' = -`y1' if $ML_y7 < 0
        replace `y2' = -`y2' if $ML_y8 < 0
		replace `y3' = -`y3' if $ML_y9 < 0
		
		
        *  utility (L)
		
        generate double `euL' = (`wp1'*`y0')+(`wp2'*`y1')
		
		*  utility (R)
		
        generate double `euR' = (`wp3'*`y2')+(`wp4'*`y3')
		
		
		* utilities difference and noise specifications
		
        generate double `euDiff' = `euR' - `euL'
        
		* likelhood
		
        replace `lnf' = ln($cdf( `euDiff')) if $ML_y1==1
        replace `lnf' = ln($cdf(-`euDiff')) if $ML_y1==0

		
    }
end


* define globals

global cdf "normal"


/// ML_RDT_quiggin+cara+no error

ml model lf ML_rdu4_noerror_quiqqin_cara (r: select_deep prob_lefta prob_leftb prob_righta prob_rightb prize_lefta prize_leftb prize_righta prize_rightb = ) (gamma: ) if select_deep~=., cluster(id) technique(nr) 
ml maximize, difficult
ml display

estimates store deep9, title (RDU)


/// 10

program define ML_rdu4_noerror_tk_cara

    args lnf r gamma
    tempvar select_deep
	tempvar prob_lefta prob_leftb prob_righta prob_rightb
	tempvar prize_lefta prize_leftb prize_righta prize_rightb
	tempvar y0 y1 y2 y3 
	tempvar wp1 wp2 wp3 wp4
    tempvar euL euR euDiff 

    quietly {
	
        * initial  
		
		gen int `select_deep' = $ML_y1
		
       * setup
	   
	   * probabilities (L)
	   
        generate double `prob_lefta' = $ML_y2
        generate double `prob_leftb' = $ML_y3
		
	   * probabilities (R)
	   
        generate double `prob_righta' = $ML_y4
        generate double `prob_rightb' = $ML_y5
		
		
		* weighted probabilities 
		
		
		if $ML_y6 > $ML_y7 {
			generate double `wp1'= (`prob_lefta'^`gamma')/(`prob_lefta'^`gamma' + (1-`prob_lefta')^`gamma')^(1/`gamma')				
			generate double `wp2'= 1-`wp1' 
			
			}
		
		if $ML_y7 > $ML_y6 {
			generate double `wp2'= (`prob_leftb'^`gamma')/(`prob_leftb'^`gamma' + (1-`prob_leftb')^`gamma')^(1/`gamma') 				
			generate double `wp1'= 1-`wp2' 
			
			}
				* weighted probabilities 
		
		
		if $ML_y8 > $ML_y9 {
			generate double `wp3'= (`prob_righta'^`gamma')/(`prob_righta'^`gamma' + (1-`prob_righta')^`gamma')^(1/`gamma') 				
			generate double `wp4'= 1-`wp3' 
			
			}
		
		if $ML_y9 > $ML_y8 {
			generate double `wp4'= (`prob_rightb'^`gamma')/(`prob_rightb'^`gamma' + (1-`prob_rightb')^`gamma')^(1/`gamma') 				
			generate double `wp3'= 1-`wp4' 
			
			}	

			
		* arguments of the utility function
		
        
		* Left 
		
		generate double `y0' = (1-exp(-`r'*$ML_y6))/`r'
        generate double `y1' = (1-exp(-`r'*$ML_y7))/`r'
		
		* Right
		
        generate double `y2' = (1-exp(-`r'*$ML_y8))/`r'
        generate double `y3' = (1-exp(-`r'*$ML_y9))/`r'
		
		
		replace `y0' = -`y0' if $ML_y6 < 0
        replace `y1' = -`y1' if $ML_y7 < 0
        replace `y2' = -`y2' if $ML_y8 < 0
		replace `y3' = -`y3' if $ML_y9 < 0
		
		
        *  utility (L)
		
        generate double `euL' = (`wp1'*`y0')+(`wp2'*`y1')
		
		*  utility (R)
		
        generate double `euR' = (`wp3'*`y2')+(`wp4'*`y3')
		
		
		* utilities difference and noise specifications
		
        generate double `euDiff' = `euR' - `euL'
        
		* likelhood
		
        replace `lnf' = ln($cdf( `euDiff')) if $ML_y1==1
        replace `lnf' = ln($cdf(-`euDiff')) if $ML_y1==0

		
    }
end


* define globals

global cdf "normal"


/// ML_RDT_tk+cara+no error

ml model lf ML_rdu4_noerror_tk_cara (r: select_deep prob_lefta prob_leftb prob_righta prob_rightb prize_lefta prize_leftb prize_righta prize_rightb = ) (gamma: ) if select_deep~=., cluster(id) technique(nr) 
ml maximize, difficult
ml display

estimates store deep10, title (RDU)


/// 11

program define ML_rdu4_noerror_prelec1_cara

    args lnf r gamma
    tempvar select_deep
	tempvar prob_lefta prob_leftb prob_righta prob_rightb
	tempvar prize_lefta prize_leftb prize_righta prize_rightb
	tempvar y0 y1 y2 y3 
	tempvar wp1 wp2 wp3 wp4
    tempvar euL euR euDiff 

    quietly {
	
        * initial  
		
		gen int `select_deep' = $ML_y1
		
       * setup
	   
	   * probabilities (L)
	   
        generate double `prob_lefta' = $ML_y2
        generate double `prob_leftb' = $ML_y3
		
	   * probabilities (R)
	   
        generate double `prob_righta' = $ML_y4
        generate double `prob_rightb' = $ML_y5
		
		
		* weighted probabilities 
		
		
		if $ML_y6 > $ML_y7 {
			generate double `wp1'= exp(-((-ln(`prob_lefta'))^`gamma')) if `prob_lefta' > 0 & `prob_lefta' < 1				
			generate double `wp2'= 1-`wp1' 
			
			}
		
		if $ML_y7 > $ML_y6 {
			generate double `wp2'= exp(-((-ln(`prob_leftb'))^`gamma')) if `prob_leftb' > 0 & `prob_leftb' < 1 				
			generate double `wp1'= 1-`wp2' 
			
			}
				* weighted probabilities 
		
		
		if $ML_y8 > $ML_y9 {
			generate double `wp3'= exp(-((-ln(`prob_righta'))^`gamma')) if `prob_righta' > 0 & `prob_righta' < 1 				
			generate double `wp4'= 1-`wp3' 
			
			}
		
		if $ML_y9 > $ML_y8 {
			generate double `wp4'= exp(-((-ln(`prob_rightb'))^`gamma')) if `prob_rightb' > 0 & `prob_rightb' < 1 				
			generate double `wp3'= 1-`wp4' 
			
			}

			
		* arguments of the utility function
		
        
		* Left 
		
		generate double `y0' = (1-exp(-`r'*$ML_y6))/`r'
        generate double `y1' = (1-exp(-`r'*$ML_y7))/`r'
		
		* Right
		
        generate double `y2' = (1-exp(-`r'*$ML_y8))/`r'
        generate double `y3' = (1-exp(-`r'*$ML_y9))/`r'
		
		
		replace `y0' = -`y0' if $ML_y6 < 0
        replace `y1' = -`y1' if $ML_y7 < 0
        replace `y2' = -`y2' if $ML_y8 < 0
		replace `y3' = -`y3' if $ML_y9 < 0
		
		
        *  utility (L)
		
        generate double `euL' = (`wp1'*`y0')+(`wp2'*`y1')
		
		*  utility (R)
		
        generate double `euR' = (`wp3'*`y2')+(`wp4'*`y3')
		
		
		* utilities difference and noise specifications
		
        generate double `euDiff' = `euR' - `euL'
        
		* likelhood
		
        replace `lnf' = ln($cdf( `euDiff')) if $ML_y1==1
        replace `lnf' = ln($cdf(-`euDiff')) if $ML_y1==0

		
    }
end


* define globals

global cdf "normal"


/// ML_RDT_prelec1+cara+no error

ml model lf ML_rdu4_noerror_prelec1_cara (r: select_deep prob_lefta prob_leftb prob_righta prob_rightb prize_lefta prize_leftb prize_righta prize_rightb = ) (gamma: ) if select_deep~=., cluster(id) technique(nr) 
ml maximize, difficult
ml display

estimates store deep11, title (RDU)


/// 12

program define ML_rdu4_noerror_prelec2_cara

    args lnf r eta phi
    tempvar select_deep
	tempvar prob_lefta prob_leftb prob_righta prob_rightb
	tempvar prize_lefta prize_leftb prize_righta prize_rightb
	tempvar y0 y1 y2 y3 
	tempvar wp1 wp2 wp3 wp4
    tempvar euL euR euDiff 

    quietly {
	
        * initial  
		
		gen int `select_deep' = $ML_y1
		
       * setup
	   
	   * probabilities (L)
	   
        generate double `prob_lefta' = $ML_y2
        generate double `prob_leftb' = $ML_y3
		
	   * probabilities (R)
	   
        generate double `prob_righta' = $ML_y4
        generate double `prob_rightb' = $ML_y5
		
		
		* weighted probabilities 
		
		
		if $ML_y6 > $ML_y7 {
			generate double `wp1'= exp((-`eta')*((-ln(`prob_lefta'))^`phi')) if `prob_lefta' > 0 & `prob_lefta' < 1				
			generate double `wp2'= 1-`wp1' 
			
			}
		
		if $ML_y7 > $ML_y6 {
			generate double `wp2'= exp((-`eta')*((-ln(`prob_leftb'))^`phi')) if `prob_leftb' > 0 & `prob_leftb' < 1 				
			generate double `wp1'= 1-`wp2' 
			
			}
				* weighted probabilities 
		
		
		if $ML_y8 > $ML_y9 {
			generate double `wp3'= exp((-`eta')*((-ln(`prob_righta'))^`phi')) if `prob_righta' > 0 & `prob_righta' < 1 				
			generate double `wp4'= 1-`wp3' 
			
			}
		
		if $ML_y9 > $ML_y8 {
			generate double `wp4'= exp((-`eta')*((-ln(`prob_rightb'))^`phi')) if `prob_rightb' > 0 & `prob_rightb' < 1 				
			generate double `wp3'= 1-`wp4' 
			
			}		

			
		* arguments of the utility function
		
        
		* Left 
		
		generate double `y0' = (1-exp(-`r'*$ML_y6))/`r'
        generate double `y1' = (1-exp(-`r'*$ML_y7))/`r'
		
		* Right
		
        generate double `y2' = (1-exp(-`r'*$ML_y8))/`r'
        generate double `y3' = (1-exp(-`r'*$ML_y9))/`r'
		
		
		replace `y0' = -`y0' if $ML_y6 < 0
        replace `y1' = -`y1' if $ML_y7 < 0
        replace `y2' = -`y2' if $ML_y8 < 0
		replace `y3' = -`y3' if $ML_y9 < 0
		
		
        *  utility (L)
		
        generate double `euL' = (`wp1'*`y0')+(`wp2'*`y1')
		
		*  utility (R)
		
        generate double `euR' = (`wp3'*`y2')+(`wp4'*`y3')
		
		
		* utilities difference and noise specifications
		
        generate double `euDiff' = `euR' - `euL'
        
		* likelhood
		
        replace `lnf' = ln($cdf( `euDiff')) if $ML_y1==1
        replace `lnf' = ln($cdf(-`euDiff')) if $ML_y1==0

		
    }
end


* define globals

global cdf "normal"


/// ML_RDT_prelec2+cara+no error

ml model lf ML_rdu4_noerror_prelec2_cara (r: select_deep prob_lefta prob_leftb prob_righta prob_rightb prize_lefta prize_leftb prize_righta prize_rightb = )(eta: ) (phi: ) if select_deep~=., cluster(id) technique(nr) 
ml maximize, difficult
ml display

estimates store deep12, title (RDU)


/// 13

program define ML_rdu4_noerror_quiqqin_expo

    args lnf r gamma alpha
    tempvar select_deep
	tempvar prob_lefta prob_leftb prob_righta prob_rightb
	tempvar prize_lefta prize_leftb prize_righta prize_rightb
	tempvar y0 y1 y2 y3 
	tempvar wp1 wp2 wp3 wp4
    tempvar euL euR euDiff 

    quietly {
	
        * initial  
		
		gen int `select_deep' = $ML_y1
		
       * setup
	   
	   * probabilities (L)
	   
        generate double `prob_lefta' = $ML_y2
        generate double `prob_leftb' = $ML_y3
		
	   * probabilities (R)
	   
        generate double `prob_righta' = $ML_y4
        generate double `prob_rightb' = $ML_y5
		
		
		* weighted probabilities 
		
		
		if $ML_y6 > $ML_y7 {
			generate double `wp1'= (`prob_lefta'^`gamma') 				
			generate double `wp2'= 1-`wp1' 
			
			}
		
		if $ML_y7 > $ML_y6 {
			generate double `wp2'= (`prob_leftb'^`gamma') 				
			generate double `wp1'= 1-`wp2' 
			
			}
				* weighted probabilities 
		
		
		if $ML_y8 > $ML_y9 {
			generate double `wp3'= (`prob_righta'^`gamma') 				
			generate double `wp4'= 1-`wp3' 
			
			}
		
		if $ML_y9 > $ML_y8 {
			generate double `wp4'= (`prob_rightb'^`gamma') 				
			generate double `wp3'= 1-`wp4' 
			
			}	

			
		* arguments of the utility function
		
        
		* Left 
		
		generate double `y0' = (1-exp(-`alpha'*(($ML_y6)^(1-`r'))))/`alpha'
        generate double `y1' = (1-exp(-`alpha'*(($ML_y7)^(1-`r'))))/`alpha'
		
		* Right
		
        generate double `y2' = (1-exp(-`alpha'*(($ML_y8)^(1-`r'))))/`alpha'
        generate double `y3' = (1-exp(-`alpha'*(($ML_y9)^(1-`r'))))/`alpha'
		
		
		replace `y0' = -`y0' if $ML_y6 < 0
        replace `y1' = -`y1' if $ML_y7 < 0
        replace `y2' = -`y2' if $ML_y8 < 0
		replace `y3' = -`y3' if $ML_y9 < 0
		
		
        *  utility (L)
		
        generate double `euL' = (`wp1'*`y0')+(`wp2'*`y1')
		
		*  utility (R)
		
        generate double `euR' = (`wp3'*`y2')+(`wp4'*`y3')
		
		
		* utilities difference and noise specifications
		
        generate double `euDiff' = `euR' - `euL'
        
		* likelhood
		
        replace `lnf' = ln($cdf( `euDiff')) if $ML_y1==1
        replace `lnf' = ln($cdf(-`euDiff')) if $ML_y1==0

		
    }
end


* define globals

global cdf "normal"


/// ML_RDT_quiggin+expo+no error

ml model lf ML_rdu4_noerror_quiqqin_expo (r: select_deep prob_lefta prob_leftb prob_righta prob_rightb prize_lefta prize_leftb prize_righta prize_rightb = ) (gamma: ) (alpha: ) if select_deep~=., cluster(id) technique(nr) 
ml maximize, difficult
ml display

estimates store deep13, title (RDU)


/// 14

program define ML_rdu4_noerror_tk_expo

    args lnf r gamma alpha
    tempvar select_deep
	tempvar prob_lefta prob_leftb prob_righta prob_rightb
	tempvar prize_lefta prize_leftb prize_righta prize_rightb
	tempvar y0 y1 y2 y3 
	tempvar wp1 wp2 wp3 wp4
    tempvar euL euR euDiff 

    quietly {
	
        * initial  
		
		gen int `select_deep' = $ML_y1
		
       * setup
	   
	   * probabilities (L)
	   
        generate double `prob_lefta' = $ML_y2
        generate double `prob_leftb' = $ML_y3
		
	   * probabilities (R)
	   
        generate double `prob_righta' = $ML_y4
        generate double `prob_rightb' = $ML_y5
		
		
		* weighted probabilities 
		
		
		if $ML_y6 > $ML_y7 {
			generate double `wp1'= (`prob_lefta'^`gamma')/(`prob_lefta'^`gamma' + (1-`prob_lefta')^`gamma')^(1/`gamma')				
			generate double `wp2'= 1-`wp1' 
			
			}
		
		if $ML_y7 > $ML_y6 {
			generate double `wp2'= (`prob_leftb'^`gamma')/(`prob_leftb'^`gamma' + (1-`prob_leftb')^`gamma')^(1/`gamma') 				
			generate double `wp1'= 1-`wp2' 
			
			}
				* weighted probabilities 
		
		
		if $ML_y8 > $ML_y9 {
			generate double `wp3'= (`prob_righta'^`gamma')/(`prob_righta'^`gamma' + (1-`prob_righta')^`gamma')^(1/`gamma') 				
			generate double `wp4'= 1-`wp3' 
			
			}
		
		if $ML_y9 > $ML_y8 {
			generate double `wp4'= (`prob_rightb'^`gamma')/(`prob_rightb'^`gamma' + (1-`prob_rightb')^`gamma')^(1/`gamma') 				
			generate double `wp3'= 1-`wp4' 
			
			}	

			
		* arguments of the utility function
		
        
		* Left 
		
		generate double `y0' = (1-exp(-`alpha'*(($ML_y6)^(1-`r'))))/`alpha'
        generate double `y1' = (1-exp(-`alpha'*(($ML_y7)^(1-`r'))))/`alpha'
		
		* Right
		
        generate double `y2' = (1-exp(-`alpha'*(($ML_y8)^(1-`r'))))/`alpha'
        generate double `y3' = (1-exp(-`alpha'*(($ML_y9)^(1-`r'))))/`alpha'
		
		
		replace `y0' = -`y0' if $ML_y6 < 0
        replace `y1' = -`y1' if $ML_y7 < 0
        replace `y2' = -`y2' if $ML_y8 < 0
		replace `y3' = -`y3' if $ML_y9 < 0
		
		
        *  utility (L)
		
        generate double `euL' = (`wp1'*`y0')+(`wp2'*`y1')
		
		*  utility (R)
		
        generate double `euR' = (`wp3'*`y2')+(`wp4'*`y3')
		
		
		* utilities difference and noise specifications
		
        generate double `euDiff' = `euR' - `euL'
        
		* likelhood
		
        replace `lnf' = ln($cdf( `euDiff')) if $ML_y1==1
        replace `lnf' = ln($cdf(-`euDiff')) if $ML_y1==0

		
    }
end


* define globals

global cdf "normal"


/// ML_RDT_tk+expo+no error

ml model lf ML_rdu4_noerror_tk_expo (r: select_deep prob_lefta prob_leftb prob_righta prob_rightb prize_lefta prize_leftb prize_righta prize_rightb = ) (gamma: ) (alpha: ) if select_deep~=., cluster(id) technique(nr) 
ml maximize, difficult
ml display

estimates store deep14, title (RDU)


/// 15

program define ML_rdu4_noerror_prelec1_expo

    args lnf r gamma alpha
    tempvar select_deep
	tempvar prob_lefta prob_leftb prob_righta prob_rightb
	tempvar prize_lefta prize_leftb prize_righta prize_rightb
	tempvar y0 y1 y2 y3 
	tempvar wp1 wp2 wp3 wp4
    tempvar euL euR euDiff 

    quietly {
	
        * initial  
		
		gen int `select_deep' = $ML_y1
		
       * setup
	   
	   * probabilities (L)
	   
        generate double `prob_lefta' = $ML_y2
        generate double `prob_leftb' = $ML_y3
		
	   * probabilities (R)
	   
        generate double `prob_righta' = $ML_y4
        generate double `prob_rightb' = $ML_y5
		
		
		* weighted probabilities 
		
		
		if $ML_y6 > $ML_y7 {
			generate double `wp1'= exp(-((-ln(`prob_lefta'))^`gamma')) if `prob_lefta' > 0 & `prob_lefta' < 1				
			generate double `wp2'= 1-`wp1' 
			
			}
		
		if $ML_y7 > $ML_y6 {
			generate double `wp2'= exp(-((-ln(`prob_leftb'))^`gamma')) if `prob_leftb' > 0 & `prob_leftb' < 1 				
			generate double `wp1'= 1-`wp2' 
			
			}
				* weighted probabilities 
		
		
		if $ML_y8 > $ML_y9 {
			generate double `wp3'= exp(-((-ln(`prob_righta'))^`gamma')) if `prob_righta' > 0 & `prob_righta' < 1 				
			generate double `wp4'= 1-`wp3' 
			
			}
		
		if $ML_y9 > $ML_y8 {
			generate double `wp4'= exp(-((-ln(`prob_rightb'))^`gamma')) if `prob_rightb' > 0 & `prob_rightb' < 1 				
			generate double `wp3'= 1-`wp4' 
			
			}	

			
		* arguments of the utility function
		
        
		* Left 
		
		generate double `y0' = (1-exp(-`alpha'*(($ML_y6)^(1-`r'))))/`alpha'
        generate double `y1' = (1-exp(-`alpha'*(($ML_y7)^(1-`r'))))/`alpha'
		
		* Right
		
        generate double `y2' = (1-exp(-`alpha'*(($ML_y8)^(1-`r'))))/`alpha'
        generate double `y3' = (1-exp(-`alpha'*(($ML_y9)^(1-`r'))))/`alpha'
		
		
		replace `y0' = -`y0' if $ML_y6 < 0
        replace `y1' = -`y1' if $ML_y7 < 0
        replace `y2' = -`y2' if $ML_y8 < 0
		replace `y3' = -`y3' if $ML_y9 < 0
		
		
        *  utility (L)
		
        generate double `euL' = (`wp1'*`y0')+(`wp2'*`y1')
		
		*  utility (R)
		
        generate double `euR' = (`wp3'*`y2')+(`wp4'*`y3')
		
		
		* utilities difference and noise specifications
		
        generate double `euDiff' = `euR' - `euL'
        
		* likelhood
		
        replace `lnf' = ln($cdf( `euDiff')) if $ML_y1==1
        replace `lnf' = ln($cdf(-`euDiff')) if $ML_y1==0

		
    }
end


* define globals

global cdf "normal"


/// ML_RDT_prelec1+expo+no error

ml model lf ML_rdu4_noerror_prelec1_expo (r: select_deep prob_lefta prob_leftb prob_righta prob_rightb prize_lefta prize_leftb prize_righta prize_rightb = ) (gamma: ) (alpha: ) if select_deep~=., cluster(id) technique(nr) 
ml maximize, difficult
ml display

estimates store deep15, title (RDU)


/// 16

program define ML_rdu4_noerror_prelec2_expo

    args lnf r eta phi alpha
    tempvar select_deep
	tempvar prob_lefta prob_leftb prob_righta prob_rightb
	tempvar prize_lefta prize_leftb prize_righta prize_rightb
	tempvar y0 y1 y2 y3 
	tempvar wp1 wp2 wp3 wp4
    tempvar euL euR euDiff 

    quietly {
	
        * initial  
		
		gen int `select_deep' = $ML_y1
		
       * setup
	   
	   * probabilities (L)
	   
        generate double `prob_lefta' = $ML_y2
        generate double `prob_leftb' = $ML_y3
		
	   * probabilities (R)
	   
        generate double `prob_righta' = $ML_y4
        generate double `prob_rightb' = $ML_y5
		
		
		* weighted probabilities 
		
		
		if $ML_y6 > $ML_y7 {
			generate double `wp1'= exp((-`eta')*((-ln(`prob_lefta'))^`phi')) if `prob_lefta' > 0 & `prob_lefta' < 1				
			generate double `wp2'= 1-`wp1' 
			
			}
		
		if $ML_y7 > $ML_y6 {
			generate double `wp2'= exp((-`eta')*((-ln(`prob_leftb'))^`phi')) if `prob_leftb' > 0 & `prob_leftb' < 1 				
			generate double `wp1'= 1-`wp2' 
			
			}
				* weighted probabilities 
		
		
		if $ML_y8 > $ML_y9 {
			generate double `wp3'= exp((-`eta')*((-ln(`prob_righta'))^`phi')) if `prob_righta' > 0 & `prob_righta' < 1 				
			generate double `wp4'= 1-`wp3' 
			
			}
		
		if $ML_y9 > $ML_y8 {
			generate double `wp4'= exp((-`eta')*((-ln(`prob_rightb'))^`phi')) if `prob_rightb' > 0 & `prob_rightb' < 1 				
			generate double `wp3'= 1-`wp4' 
			
			}		

			
		* arguments of the utility function
		
        
		* Left 
		
		generate double `y0' = (1-exp(-`alpha'*(($ML_y6)^(1-`r'))))/`alpha'
        generate double `y1' = (1-exp(-`alpha'*(($ML_y7)^(1-`r'))))/`alpha'
		
		* Right
		
        generate double `y2' = (1-exp(-`alpha'*(($ML_y8)^(1-`r'))))/`alpha'
        generate double `y3' = (1-exp(-`alpha'*(($ML_y9)^(1-`r'))))/`alpha'
		
		
		replace `y0' = -`y0' if $ML_y6 < 0
        replace `y1' = -`y1' if $ML_y7 < 0
        replace `y2' = -`y2' if $ML_y8 < 0
		replace `y3' = -`y3' if $ML_y9 < 0
		
		
        *  utility (L)
		
        generate double `euL' = (`wp1'*`y0')+(`wp2'*`y1')
		
		*  utility (R)
		
        generate double `euR' = (`wp3'*`y2')+(`wp4'*`y3')
		
		
		* utilities difference and noise specifications
		
        generate double `euDiff' = `euR' - `euL'
        
		* likelhood
		
        replace `lnf' = ln($cdf( `euDiff')) if $ML_y1==1
        replace `lnf' = ln($cdf(-`euDiff')) if $ML_y1==0

		
    }
end


* define globals

global cdf "normal"


/// ML_RDT_prelec2+expo+no error

ml model lf ML_rdu4_noerror_prelec2_expo (r: select_deep prob_lefta prob_leftb prob_righta prob_rightb prize_lefta prize_leftb prize_righta prize_rightb = ) (eta: ) (phi: ) (alpha: ) if select_deep~=., cluster(id) technique(nr) 
ml maximize, difficult
ml display

estimates store deep16, title (RDU)


/// 17

program define ML_rdu4_luce_quiqqin_power

    args lnf r gamma noise
    tempvar select_deep
	tempvar prob_lefta prob_leftb prob_righta prob_rightb
	tempvar prize_lefta prize_leftb prize_righta prize_rightb
	tempvar y0 y1 y2 y3 
	tempvar wp1 wp2 wp3 wp4
    tempvar euL euR euDiff 

    quietly {
	
        * initial  
		
		gen int `select_deep' = $ML_y1
		
       * setup
	   
	   * probabilities (L)
	   
        generate double `prob_lefta' = $ML_y2
        generate double `prob_leftb' = $ML_y3
		
	   * probabilities (R)
	   
        generate double `prob_righta' = $ML_y4
        generate double `prob_rightb' = $ML_y5
		
		
		* weighted probabilities 
		
		
		if $ML_y6 > $ML_y7 {
			generate double `wp1'= (`prob_lefta'^`gamma') 				
			generate double `wp2'= 1-`wp1' 
			
			}
		
		if $ML_y7 > $ML_y6 {
			generate double `wp2'= (`prob_leftb'^`gamma') 				
			generate double `wp1'= 1-`wp2' 
			
			}
				* weighted probabilities 
		
		
		if $ML_y8 > $ML_y9 {
			generate double `wp3'= (`prob_righta'^`gamma') 				
			generate double `wp4'= 1-`wp3' 
			
			}
		
		if $ML_y9 > $ML_y8 {
			generate double `wp4'= (`prob_rightb'^`gamma') 				
			generate double `wp3'= 1-`wp4' 
			
			}		

			
		* arguments of the utility function
		
        
		* Left 
		
		generate double `y0' = (abs($ML_y6))^`r'
        generate double `y1' = (abs($ML_y7))^`r'
		
		* Right
		
        generate double `y2' = (abs($ML_y8))^`r'
        generate double `y3' = (abs($ML_y9))^`r'
		
		
		replace `y0' = -`y0' if $ML_y6 < 0
        replace `y1' = -`y1' if $ML_y7 < 0
        replace `y2' = -`y2' if $ML_y8 < 0
		replace `y3' = -`y3' if $ML_y9 < 0
		
		
        *  utility (L)
		
        generate double `euL' = (`wp1'*`y0')+(`wp2'*`y1')
		
		*  utility (R)
		
        generate double `euR' = (`wp3'*`y2')+(`wp4'*`y3')
		
		
		* utilities difference and noise specifications
		
        generate double `euDiff' = (`euR'^(1/`noise'))/((`euR'^(1/`noise'))+(`euL'^(1/`noise')))
        
		* likelhood
		
        replace `lnf' = ln(`euDiff') if $ML_y1==1
        replace `lnf' = ln(1-`euDiff') if $ML_y1==0

		
    }
end


* define globals



/// ML_RDT_quiggin+power+luce

ml model lf ML_rdu4_luce_quiqqin_power (r: select_deep prob_lefta prob_leftb prob_righta prob_rightb prize_lefta prize_leftb prize_righta prize_rightb = ) (gamma: ) (noise: ) if select_deep~=., cluster(id) technique(nr) 
ml maximize, difficult
ml display

estimates store deep17, title (RDU)


/// 18

program define ML_rdu4_luce_tk_power

    args lnf r gamma noise
    tempvar select_deep
	tempvar prob_lefta prob_leftb prob_righta prob_rightb
	tempvar prize_lefta prize_leftb prize_righta prize_rightb
	tempvar y0 y1 y2 y3 
	tempvar wp1 wp2 wp3 wp4
    tempvar euL euR euDiff 

    quietly {
	
        * initial  
		
		gen int `select_deep' = $ML_y1
		
       * setup
	   
	   * probabilities (L)
	   
        generate double `prob_lefta' = $ML_y2
        generate double `prob_leftb' = $ML_y3
		
	   * probabilities (R)
	   
        generate double `prob_righta' = $ML_y4
        generate double `prob_rightb' = $ML_y5
		
		
		* weighted probabilities 
		
		
		if $ML_y6 > $ML_y7 {
			generate double `wp1'= (`prob_lefta'^`gamma')/(`prob_lefta'^`gamma' + (1-`prob_lefta')^`gamma')^(1/`gamma')				
			generate double `wp2'= 1-`wp1' 
			
			}
		
		if $ML_y7 > $ML_y6 {
			generate double `wp2'= (`prob_leftb'^`gamma')/(`prob_leftb'^`gamma' + (1-`prob_leftb')^`gamma')^(1/`gamma') 				
			generate double `wp1'= 1-`wp2' 
			
			}
				* weighted probabilities 
		
		
		if $ML_y8 > $ML_y9 {
			generate double `wp3'= (`prob_righta'^`gamma')/(`prob_righta'^`gamma' + (1-`prob_righta')^`gamma')^(1/`gamma') 				
			generate double `wp4'= 1-`wp3' 
			
			}
		
		if $ML_y9 > $ML_y8 {
			generate double `wp4'= (`prob_rightb'^`gamma')/(`prob_rightb'^`gamma' + (1-`prob_rightb')^`gamma')^(1/`gamma') 				
			generate double `wp3'= 1-`wp4' 
			
			}	

			
		* arguments of the utility function
		
        
		* Left 
		
		generate double `y0' = (abs($ML_y6))^`r'
        generate double `y1' = (abs($ML_y7))^`r'
		
		* Right
		
        generate double `y2' = (abs($ML_y8))^`r'
        generate double `y3' = (abs($ML_y9))^`r'
		
		
		replace `y0' = -`y0' if $ML_y6 < 0
        replace `y1' = -`y1' if $ML_y7 < 0
        replace `y2' = -`y2' if $ML_y8 < 0
		replace `y3' = -`y3' if $ML_y9 < 0
		
		
        *  utility (L)
		
        generate double `euL' = (`wp1'*`y0')+(`wp2'*`y1')
		
		*  utility (R)
		
        generate double `euR' = (`wp3'*`y2')+(`wp4'*`y3')
		
		
		* utilities difference and noise specifications
		
        generate double `euDiff' = (`euR'^(1/`noise'))/((`euR'^(1/`noise'))+(`euL'^(1/`noise')))
        
		* likelhood
		
        replace `lnf' = ln(`euDiff') if $ML_y1==1
        replace `lnf' = ln(1-`euDiff') if $ML_y1==0

		
    }
end


* define globals



/// ML_RDT_tk+power+luce

ml model lf ML_rdu4_luce_tk_power (r: select_deep prob_lefta prob_leftb prob_righta prob_rightb prize_lefta prize_leftb prize_righta prize_rightb = ) (gamma: ) (noise: ) if select_deep~=., cluster(id) technique(nr) 
ml maximize, difficult
ml display

estimates store deep18, title (RDU)


/// 19

program define ML_rdu4_luce_prelec1_power

    args lnf r gamma noise
    tempvar select_deep
	tempvar prob_lefta prob_leftb prob_righta prob_rightb
	tempvar prize_lefta prize_leftb prize_righta prize_rightb
	tempvar y0 y1 y2 y3 
	tempvar wp1 wp2 wp3 wp4
    tempvar euL euR euDiff 

    quietly {
	
        * initial  
		
		gen int `select_deep' = $ML_y1
		
       * setup
	   
	   * probabilities (L)
	   
        generate double `prob_lefta' = $ML_y2
        generate double `prob_leftb' = $ML_y3
		
	   * probabilities (R)
	   
        generate double `prob_righta' = $ML_y4
        generate double `prob_rightb' = $ML_y5
		
		
		* weighted probabilities 
		
		
		if $ML_y6 > $ML_y7 {
			generate double `wp1'= exp(-((-ln(`prob_lefta'))^`gamma')) if `prob_lefta' > 0 & `prob_lefta' < 1				
			generate double `wp2'= 1-`wp1' 
			
			}
		
		if $ML_y7 > $ML_y6 {
			generate double `wp2'= exp(-((-ln(`prob_leftb'))^`gamma')) if `prob_leftb' > 0 & `prob_leftb' < 1 				
			generate double `wp1'= 1-`wp2' 
			
			}
				* weighted probabilities 
		
		
		if $ML_y8 > $ML_y9 {
			generate double `wp3'= exp(-((-ln(`prob_righta'))^`gamma')) if `prob_righta' > 0 & `prob_righta' < 1 				
			generate double `wp4'= 1-`wp3' 
			
			}
		
		if $ML_y9 > $ML_y8 {
			generate double `wp4'= exp(-((-ln(`prob_rightb'))^`gamma')) if `prob_rightb' > 0 & `prob_rightb' < 1 				
			generate double `wp3'= 1-`wp4' 
			
			}	

			
		* arguments of the utility function
		
        
		* Left 
		
		generate double `y0' = (abs($ML_y6))^`r'
        generate double `y1' = (abs($ML_y7))^`r'
		
		* Right
		
        generate double `y2' = (abs($ML_y8))^`r'
        generate double `y3' = (abs($ML_y9))^`r'
		
		
		replace `y0' = -`y0' if $ML_y6 < 0
        replace `y1' = -`y1' if $ML_y7 < 0
        replace `y2' = -`y2' if $ML_y8 < 0
		replace `y3' = -`y3' if $ML_y9 < 0
		
		
        *  utility (L)
		
        generate double `euL' = (`wp1'*`y0')+(`wp2'*`y1')
		
		*  utility (R)
		
        generate double `euR' = (`wp3'*`y2')+(`wp4'*`y3')
		
		
		* utilities difference and noise specifications
		
        generate double `euDiff' = (`euR'^(1/`noise'))/((`euR'^(1/`noise'))+(`euL'^(1/`noise')))
        
		* likelhood
		
        replace `lnf' = ln(`euDiff') if $ML_y1==1
        replace `lnf' = ln(1-`euDiff') if $ML_y1==0

		
    }
end


* define globals


/// ML_RDT_prelec1+power+luce

ml model lf ML_rdu4_luce_prelec1_power (r: select_deep prob_lefta prob_leftb prob_righta prob_rightb prize_lefta prize_leftb prize_righta prize_rightb = ) (gamma: ) (noise: ) if select_deep~=., cluster(id) technique(nr) 
ml maximize, difficult
ml display

estimates store deep19, title (RDU)


/// 20

program define ML_rdu4_luce_prelec2_power

    args lnf r eta phi noise
    tempvar select_deep
	tempvar prob_lefta prob_leftb prob_righta prob_rightb
	tempvar prize_lefta prize_leftb prize_righta prize_rightb
	tempvar y0 y1 y2 y3 
	tempvar wp1 wp2 wp3 wp4
    tempvar euL euR euDiff 

    quietly {
	
        * initial  
		
		gen int `select_deep' = $ML_y1
		
       * setup
	   
	   * probabilities (L)
	   
        generate double `prob_lefta' = $ML_y2
        generate double `prob_leftb' = $ML_y3
		
	   * probabilities (R)
	   
        generate double `prob_righta' = $ML_y4
        generate double `prob_rightb' = $ML_y5
		
		
		* weighted probabilities 
		
		
		if $ML_y6 > $ML_y7 {
			generate double `wp1'= exp((-`eta')*((-ln(`prob_lefta'))^`phi')) if `prob_lefta' > 0 & `prob_lefta' < 1				
			generate double `wp2'= 1-`wp1' 
			
			}
		
		if $ML_y7 > $ML_y6 {
			generate double `wp2'= exp((-`eta')*((-ln(`prob_leftb'))^`phi')) if `prob_leftb' > 0 & `prob_leftb' < 1 				
			generate double `wp1'= 1-`wp2' 
			
			}
				* weighted probabilities 
		
		
		if $ML_y8 > $ML_y9 {
			generate double `wp3'= exp((-`eta')*((-ln(`prob_righta'))^`phi')) if `prob_righta' > 0 & `prob_righta' < 1 				
			generate double `wp4'= 1-`wp3' 
			
			}
		
		if $ML_y9 > $ML_y8 {
			generate double `wp4'= exp((-`eta')*((-ln(`prob_rightb'))^`phi')) if `prob_rightb' > 0 & `prob_rightb' < 1 				
			generate double `wp3'= 1-`wp4' 
			
			}		

			
		* arguments of the utility function
		
        
		* Left 
		
		generate double `y0' = (abs($ML_y6))^`r'
        generate double `y1' = (abs($ML_y7))^`r'
		
		* Right
		
        generate double `y2' = (abs($ML_y8))^`r'
        generate double `y3' = (abs($ML_y9))^`r'
		
		
		replace `y0' = -`y0' if $ML_y6 < 0
        replace `y1' = -`y1' if $ML_y7 < 0
        replace `y2' = -`y2' if $ML_y8 < 0
		replace `y3' = -`y3' if $ML_y9 < 0
		
		
        *  utility (L)
		
        generate double `euL' = (`wp1'*`y0')+(`wp2'*`y1')
		
		*  utility (R)
		
        generate double `euR' = (`wp3'*`y2')+(`wp4'*`y3')
		
		
		* utilities difference and noise specifications
		
        generate double `euDiff' = (`euR'^(1/`noise'))/((`euR'^(1/`noise'))+(`euL'^(1/`noise')))
        
		* likelhood
		
        replace `lnf' = ln(`euDiff') if $ML_y1==1
        replace `lnf' = ln(1-`euDiff') if $ML_y1==0

		
    }
end


* define globals



/// ML_RDT_prelec2+power+luce

ml model lf ML_rdu4_luce_prelec2_power (r: select_deep prob_lefta prob_leftb prob_righta prob_rightb prize_lefta prize_leftb prize_righta prize_rightb = ) (eta: ) (phi: ) (noise: ) if select_deep~=., cluster(id) technique(nr) 
ml maximize, difficult
ml display

estimates store deep20, title (RDU)


/// 21

program define ML_rdu4_luce_quiqqin_crra

    args lnf r gamma noise
    tempvar select_deep
	tempvar prob_lefta prob_leftb prob_righta prob_rightb
	tempvar prize_lefta prize_leftb prize_righta prize_rightb
	tempvar y0 y1 y2 y3 
	tempvar wp1 wp2 wp3 wp4
    tempvar euL euR euDiff 

    quietly {
	
        * initial  
		
		gen int `select_deep' = $ML_y1
		
       * setup
	   
	   * probabilities (L)
	   
        generate double `prob_lefta' = $ML_y2
        generate double `prob_leftb' = $ML_y3
		
	   * probabilities (R)
	   
        generate double `prob_righta' = $ML_y4
        generate double `prob_rightb' = $ML_y5
		
		
		* weighted probabilities 
		
		
		if $ML_y6 > $ML_y7 {
			generate double `wp1'= (`prob_lefta'^`gamma') 				
			generate double `wp2'= 1-`wp1' 
			
			}
		
		if $ML_y7 > $ML_y6 {
			generate double `wp2'= (`prob_leftb'^`gamma') 				
			generate double `wp1'= 1-`wp2' 
			
			}
				* weighted probabilities 
		
		
		if $ML_y8 > $ML_y9 {
			generate double `wp3'= (`prob_righta'^`gamma') 				
			generate double `wp4'= 1-`wp3' 
			
			}
		
		if $ML_y9 > $ML_y8 {
			generate double `wp4'= (`prob_rightb'^`gamma') 				
			generate double `wp3'= 1-`wp4' 
			
			}		

			
		* arguments of the utility function
		
        
		* Left 
		
		generate double `y0' = ((abs($ML_y6))^(1-`r'))/(1-`r')
        generate double `y1' = ((abs($ML_y7))^(1-`r'))/(1-`r')
		
		* Right
		
        generate double `y2' = ((abs($ML_y8))^(1-`r'))/(1-`r')
        generate double `y3' = ((abs($ML_y9))^(1-`r'))/(1-`r')
		
		
		replace `y0' = -`y0' if $ML_y6 < 0
        replace `y1' = -`y1' if $ML_y7 < 0
        replace `y2' = -`y2' if $ML_y8 < 0
		replace `y3' = -`y3' if $ML_y9 < 0
		
		
        *  utility (L)
		
        generate double `euL' = (`wp1'*`y0')+(`wp2'*`y1')
		
		*  utility (R)
		
        generate double `euR' = (`wp3'*`y2')+(`wp4'*`y3')
		
		
		* utilities difference and noise specifications
		
        generate double `euDiff' = (`euR'^(1/`noise'))/((`euR'^(1/`noise'))+(`euL'^(1/`noise')))
        
		* likelhood
		
        replace `lnf' = ln(`euDiff') if $ML_y1==1
        replace `lnf' = ln(1-`euDiff') if $ML_y1==0

		
    }
end


* define globals



/// ML_RDT_quiggin+crra+luce

ml model lf ML_rdu4_luce_quiqqin_crra (r: select_deep prob_lefta prob_leftb prob_righta prob_rightb prize_lefta prize_leftb prize_righta prize_rightb = ) (gamma: ) (noise: ) if select_deep~=., cluster(id) technique(nr) 
ml maximize, difficult
ml display

estimates store deep21, title (RDU)


/// 22

program define ML_rdu4_luce_tk_crra

    args lnf r gamma noise
    tempvar select_deep
	tempvar prob_lefta prob_leftb prob_righta prob_rightb
	tempvar prize_lefta prize_leftb prize_righta prize_rightb
	tempvar y0 y1 y2 y3 
	tempvar wp1 wp2 wp3 wp4
    tempvar euL euR euDiff 

    quietly {
	
        * initial  
		
		gen int `select_deep' = $ML_y1
		
       * setup
	   
	   * probabilities (L)
	   
        generate double `prob_lefta' = $ML_y2
        generate double `prob_leftb' = $ML_y3
		
	   * probabilities (R)
	   
        generate double `prob_righta' = $ML_y4
        generate double `prob_rightb' = $ML_y5
		
		
		* weighted probabilities 
		
		
		if $ML_y6 > $ML_y7 {
			generate double `wp1'= (`prob_lefta'^`gamma')/(`prob_lefta'^`gamma' + (1-`prob_lefta')^`gamma')^(1/`gamma')				
			generate double `wp2'= 1-`wp1' 
			
			}
		
		if $ML_y7 > $ML_y6 {
			generate double `wp2'= (`prob_leftb'^`gamma')/(`prob_leftb'^`gamma' + (1-`prob_leftb')^`gamma')^(1/`gamma') 				
			generate double `wp1'= 1-`wp2' 
			
			}
				* weighted probabilities 
		
		
		if $ML_y8 > $ML_y9 {
			generate double `wp3'= (`prob_righta'^`gamma')/(`prob_righta'^`gamma' + (1-`prob_righta')^`gamma')^(1/`gamma') 				
			generate double `wp4'= 1-`wp3' 
			
			}
		
		if $ML_y9 > $ML_y8 {
			generate double `wp4'= (`prob_rightb'^`gamma')/(`prob_rightb'^`gamma' + (1-`prob_rightb')^`gamma')^(1/`gamma') 				
			generate double `wp3'= 1-`wp4' 
			
			}

			
		* arguments of the utility function
		
        
		* Left 
		
		generate double `y0' = ((abs($ML_y6))^(1-`r'))/(1-`r')
        generate double `y1' = ((abs($ML_y7))^(1-`r'))/(1-`r')
		
		* Right
		
        generate double `y2' = ((abs($ML_y8))^(1-`r'))/(1-`r')
        generate double `y3' = ((abs($ML_y9))^(1-`r'))/(1-`r')
		
		
		replace `y0' = -`y0' if $ML_y6 < 0
        replace `y1' = -`y1' if $ML_y7 < 0
        replace `y2' = -`y2' if $ML_y8 < 0
		replace `y3' = -`y3' if $ML_y9 < 0
		
		
        *  utility (L)
		
        generate double `euL' = (`wp1'*`y0')+(`wp2'*`y1')
		
		*  utility (R)
		
        generate double `euR' = (`wp3'*`y2')+(`wp4'*`y3')
		
		
		* utilities difference and noise specifications
		
        generate double `euDiff' = (`euR'^(1/`noise'))/((`euR'^(1/`noise'))+(`euL'^(1/`noise')))
        
		* likelhood
		
        replace `lnf' = ln(`euDiff') if $ML_y1==1
        replace `lnf' = ln(1-`euDiff') if $ML_y1==0

		
    }
end


* define globals



/// ML_RDT_tk+crra+luce

ml model lf ML_rdu4_luce_tk_crra (r: select_deep prob_lefta prob_leftb prob_righta prob_rightb prize_lefta prize_leftb prize_righta prize_rightb = ) (gamma: ) (noise: ) if select_deep~=., cluster(id) technique(nr) 
ml maximize, difficult
ml display

estimates store deep22, title (RDU)


/// 23

program define ML_rdu4_luce_prelec1_crra

    args lnf r gamma noise
    tempvar select_deep
	tempvar prob_lefta prob_leftb prob_righta prob_rightb
	tempvar prize_lefta prize_leftb prize_righta prize_rightb
	tempvar y0 y1 y2 y3 
	tempvar wp1 wp2 wp3 wp4
    tempvar euL euR euDiff 

    quietly {
	
        * initial  
		
		gen int `select_deep' = $ML_y1
		
       * setup
	   
	   * probabilities (L)
	   
        generate double `prob_lefta' = $ML_y2
        generate double `prob_leftb' = $ML_y3
		
	   * probabilities (R)
	   
        generate double `prob_righta' = $ML_y4
        generate double `prob_rightb' = $ML_y5
		
		
		* weighted probabilities 
		
		
		if $ML_y6 > $ML_y7 {
			generate double `wp1'= exp(-((-ln(`prob_lefta'))^`gamma')) if `prob_lefta' > 0 & `prob_lefta' < 1				
			generate double `wp2'= 1-`wp1' 
			
			}
		
		if $ML_y7 > $ML_y6 {
			generate double `wp2'= exp(-((-ln(`prob_leftb'))^`gamma')) if `prob_leftb' > 0 & `prob_leftb' < 1 				
			generate double `wp1'= 1-`wp2' 
			
			}
				* weighted probabilities 
		
		
		if $ML_y8 > $ML_y9 {
			generate double `wp3'= exp(-((-ln(`prob_righta'))^`gamma')) if `prob_righta' > 0 & `prob_righta' < 1 				
			generate double `wp4'= 1-`wp3' 
			
			}
		
		if $ML_y9 > $ML_y8 {
			generate double `wp4'= exp(-((-ln(`prob_rightb'))^`gamma')) if `prob_rightb' > 0 & `prob_rightb' < 1 				
			generate double `wp3'= 1-`wp4' 
			
			}	

			
		* arguments of the utility function
		
        
		* Left 
		
		generate double `y0' = ((abs($ML_y6))^(1-`r'))/(1-`r')
        generate double `y1' = ((abs($ML_y7))^(1-`r'))/(1-`r')
		
		* Right
		
        generate double `y2' = ((abs($ML_y8))^(1-`r'))/(1-`r')
        generate double `y3' = ((abs($ML_y9))^(1-`r'))/(1-`r')
		
		
		replace `y0' = -`y0' if $ML_y6 < 0
        replace `y1' = -`y1' if $ML_y7 < 0
        replace `y2' = -`y2' if $ML_y8 < 0
		replace `y3' = -`y3' if $ML_y9 < 0
		
		
        *  utility (L)
		
        generate double `euL' = (`wp1'*`y0')+(`wp2'*`y1')
		
		*  utility (R)
		
        generate double `euR' = (`wp3'*`y2')+(`wp4'*`y3')
		
		
		* utilities difference and noise specifications
		
        generate double `euDiff' = (`euR'^(1/`noise'))/((`euR'^(1/`noise'))+(`euL'^(1/`noise')))
        
		* likelhood
		
        replace `lnf' = ln(`euDiff') if $ML_y1==1
        replace `lnf' = ln(1-`euDiff') if $ML_y1==0

		
    }
end


* define globals



/// ML_RDT_prelec1+crra+luce

ml model lf ML_rdu4_luce_prelec1_crra (r: select_deep prob_lefta prob_leftb prob_righta prob_rightb prize_lefta prize_leftb prize_righta prize_rightb = ) (gamma: ) (noise: ) if select_deep~=., cluster(id) technique(nr) 
ml maximize, difficult
ml display

estimates store deep23, title (RDU)


/// 24

program define ML_rdu4_luce_prelec2_crra

    args lnf r eta phi noise
    tempvar select_deep
	tempvar prob_lefta prob_leftb prob_righta prob_rightb
	tempvar prize_lefta prize_leftb prize_righta prize_rightb
	tempvar y0 y1 y2 y3 
	tempvar wp1 wp2 wp3 wp4
    tempvar euL euR euDiff 

    quietly {
	
        * initial  
		
		gen int `select_deep' = $ML_y1
		
       * setup
	   
	   * probabilities (L)
	   
        generate double `prob_lefta' = $ML_y2
        generate double `prob_leftb' = $ML_y3
		
	   * probabilities (R)
	   
        generate double `prob_righta' = $ML_y4
        generate double `prob_rightb' = $ML_y5
		
		
		* weighted probabilities 
		
		
		if $ML_y6 > $ML_y7 {
			generate double `wp1'= exp((-`eta')*((-ln(`prob_lefta'))^`phi')) if `prob_lefta' > 0 & `prob_lefta' < 1				
			generate double `wp2'= 1-`wp1' 
			
			}
		
		if $ML_y7 > $ML_y6 {
			generate double `wp2'= exp((-`eta')*((-ln(`prob_leftb'))^`phi')) if `prob_leftb' > 0 & `prob_leftb' < 1 				
			generate double `wp1'= 1-`wp2' 
			
			}
				* weighted probabilities 
		
		
		if $ML_y8 > $ML_y9 {
			generate double `wp3'= exp((-`eta')*((-ln(`prob_righta'))^`phi')) if `prob_righta' > 0 & `prob_righta' < 1 				
			generate double `wp4'= 1-`wp3' 
			
			}
		
		if $ML_y9 > $ML_y8 {
			generate double `wp4'= exp((-`eta')*((-ln(`prob_rightb'))^`phi')) if `prob_rightb' > 0 & `prob_rightb' < 1 				
			generate double `wp3'= 1-`wp4' 
			
			}		

			
		* arguments of the utility function
		
        
		* Left 
		
		generate double `y0' = ((abs($ML_y6))^(1-`r'))/(1-`r')
        generate double `y1' = ((abs($ML_y7))^(1-`r'))/(1-`r')
		
		* Right
		
        generate double `y2' = ((abs($ML_y8))^(1-`r'))/(1-`r')
        generate double `y3' = ((abs($ML_y9))^(1-`r'))/(1-`r')
		
		
		replace `y0' = -`y0' if $ML_y6 < 0
        replace `y1' = -`y1' if $ML_y7 < 0
        replace `y2' = -`y2' if $ML_y8 < 0
		replace `y3' = -`y3' if $ML_y9 < 0
		
		
        *  utility (L)
		
        generate double `euL' = (`wp1'*`y0')+(`wp2'*`y1')
		
		*  utility (R)
		
        generate double `euR' = (`wp3'*`y2')+(`wp4'*`y3')
		
		
		* utilities difference and noise specifications
		
        generate double `euDiff' = (`euR'^(1/`noise'))/((`euR'^(1/`noise'))+(`euL'^(1/`noise')))
        
		* likelhood
		
        replace `lnf' = ln(`euDiff') if $ML_y1==1
        replace `lnf' = ln(1-`euDiff') if $ML_y1==0

		
    }
end


* define globals



/// ML_RDT_prelec2+crra+luce

ml model lf ML_rdu4_luce_prelec2_crra (r: select_deep prob_lefta prob_leftb prob_righta prob_rightb prize_lefta prize_leftb prize_righta prize_rightb = ) (eta: ) (phi: ) (noise: ) if select_deep~=., cluster(id) technique(nr) 
ml maximize, difficult
ml display

estimates store deep24, title (RDU)


/// 25

program define ML_rdu4_luce_quiqqin_cara

    args lnf r gamma noise
    tempvar select_deep
	tempvar prob_lefta prob_leftb prob_righta prob_rightb
	tempvar prize_lefta prize_leftb prize_righta prize_rightb
	tempvar y0 y1 y2 y3 
	tempvar wp1 wp2 wp3 wp4
    tempvar euL euR euDiff 

    quietly {
	
        * initial  
		
		gen int `select_deep' = $ML_y1
		
       * setup
	   
	   * probabilities (L)
	   
        generate double `prob_lefta' = $ML_y2
        generate double `prob_leftb' = $ML_y3
		
	   * probabilities (R)
	   
        generate double `prob_righta' = $ML_y4
        generate double `prob_rightb' = $ML_y5
		
		
		* weighted probabilities 
		
		
		if $ML_y6 > $ML_y7 {
			generate double `wp1'= (`prob_lefta'^`gamma') 				
			generate double `wp2'= 1-`wp1' 
			
			}
		
		if $ML_y7 > $ML_y6 {
			generate double `wp2'= (`prob_leftb'^`gamma') 				
			generate double `wp1'= 1-`wp2' 
			
			}
				* weighted probabilities 
		
		
		if $ML_y8 > $ML_y9 {
			generate double `wp3'= (`prob_righta'^`gamma') 				
			generate double `wp4'= 1-`wp3' 
			
			}
		
		if $ML_y9 > $ML_y8 {
			generate double `wp4'= (`prob_rightb'^`gamma') 				
			generate double `wp3'= 1-`wp4' 
			
			}		

			
		* arguments of the utility function
		
        
		* Left 
		
		generate double `y0' = (1-exp(-`r'*$ML_y6))/`r'
        generate double `y1' = (1-exp(-`r'*$ML_y7))/`r'
		
		* Right
		
        generate double `y2' = (1-exp(-`r'*$ML_y8))/`r'
        generate double `y3' = (1-exp(-`r'*$ML_y9))/`r'
		
		
		replace `y0' = -`y0' if $ML_y6 < 0
        replace `y1' = -`y1' if $ML_y7 < 0
        replace `y2' = -`y2' if $ML_y8 < 0
		replace `y3' = -`y3' if $ML_y9 < 0
		
		
        *  utility (L)
		
        generate double `euL' = (`wp1'*`y0')+(`wp2'*`y1')
		
		*  utility (R)
		
        generate double `euR' = (`wp3'*`y2')+(`wp4'*`y3')
		
		
		* utilities difference and noise specifications
		
        generate double `euDiff' = (`euR'^(1/`noise'))/((`euR'^(1/`noise'))+(`euL'^(1/`noise')))
        
		* likelhood
		
        replace `lnf' = ln(`euDiff') if $ML_y1==1
        replace `lnf' = ln(1-`euDiff') if $ML_y1==0

		
    }
end


* define globals



/// ML_RDT_quiggin+cara+luce

ml model lf ML_rdu4_luce_quiqqin_cara (r: select_deep prob_lefta prob_leftb prob_righta prob_rightb prize_lefta prize_leftb prize_righta prize_rightb = ) (gamma: ) (noise: ) if select_deep~=., cluster(id) technique(nr) 
ml maximize, difficult
ml display

estimates store deep25, title (RDU)


/// 26

program define ML_rdu4_luce_tk_cara

    args lnf r gamma noise
    tempvar select_deep
	tempvar prob_lefta prob_leftb prob_righta prob_rightb
	tempvar prize_lefta prize_leftb prize_righta prize_rightb
	tempvar y0 y1 y2 y3 
	tempvar wp1 wp2 wp3 wp4
    tempvar euL euR euDiff 

    quietly {
	
        * initial  
		
		gen int `select_deep' = $ML_y1
		
       * setup
	   
	   * probabilities (L)
	   
        generate double `prob_lefta' = $ML_y2
        generate double `prob_leftb' = $ML_y3
		
	   * probabilities (R)
	   
        generate double `prob_righta' = $ML_y4
        generate double `prob_rightb' = $ML_y5
		
		
		* weighted probabilities 
		
		
		if $ML_y6 > $ML_y7 {
			generate double `wp1'= (`prob_lefta'^`gamma')/(`prob_lefta'^`gamma' + (1-`prob_lefta')^`gamma')^(1/`gamma')				
			generate double `wp2'= 1-`wp1' 
			
			}
		
		if $ML_y7 > $ML_y6 {
			generate double `wp2'= (`prob_leftb'^`gamma')/(`prob_leftb'^`gamma' + (1-`prob_leftb')^`gamma')^(1/`gamma') 				
			generate double `wp1'= 1-`wp2' 
			
			}
				* weighted probabilities 
		
		
		if $ML_y8 > $ML_y9 {
			generate double `wp3'= (`prob_righta'^`gamma')/(`prob_righta'^`gamma' + (1-`prob_righta')^`gamma')^(1/`gamma') 				
			generate double `wp4'= 1-`wp3' 
			
			}
		
		if $ML_y9 > $ML_y8 {
			generate double `wp4'= (`prob_rightb'^`gamma')/(`prob_rightb'^`gamma' + (1-`prob_rightb')^`gamma')^(1/`gamma') 				
			generate double `wp3'= 1-`wp4' 
			
			}	

			
		* arguments of the utility function
		
        
		* Left 
		
		generate double `y0' = (1-exp(-`r'*$ML_y6))/`r'
        generate double `y1' = (1-exp(-`r'*$ML_y7))/`r'
		
		* Right
		
        generate double `y2' = (1-exp(-`r'*$ML_y8))/`r'
        generate double `y3' = (1-exp(-`r'*$ML_y9))/`r'
		
		
		replace `y0' = -`y0' if $ML_y6 < 0
        replace `y1' = -`y1' if $ML_y7 < 0
        replace `y2' = -`y2' if $ML_y8 < 0
		replace `y3' = -`y3' if $ML_y9 < 0
		
		
        *  utility (L)
		
        generate double `euL' = (`wp1'*`y0')+(`wp2'*`y1')
		
		*  utility (R)
		
        generate double `euR' = (`wp3'*`y2')+(`wp4'*`y3')
		
		
		* utilities difference and noise specifications
		
        generate double `euDiff' = (`euR'^(1/`noise'))/((`euR'^(1/`noise'))+(`euL'^(1/`noise')))
        
		* likelhood
		
        replace `lnf' = ln(`euDiff') if $ML_y1==1
        replace `lnf' = ln(1-`euDiff') if $ML_y1==0

		
    }
end


* define globals



/// ML_RDT_tk+cara+luce

ml model lf ML_rdu4_luce_tk_cara (r: select_deep prob_lefta prob_leftb prob_righta prob_rightb prize_lefta prize_leftb prize_righta prize_rightb = ) (gamma: ) (noise: ) if select_deep~=., cluster(id) technique(nr) 
ml maximize, difficult
ml display

estimates store deep26, title (RDU)


/// 27

program define ML_rdu4_luce_prelec1_cara

    args lnf r gamma noise
    tempvar select_deep
	tempvar prob_lefta prob_leftb prob_righta prob_rightb
	tempvar prize_lefta prize_leftb prize_righta prize_rightb
	tempvar y0 y1 y2 y3 
	tempvar wp1 wp2 wp3 wp4
    tempvar euL euR euDiff 

    quietly {
	
        * initial  
		
		gen int `select_deep' = $ML_y1
		
       * setup
	   
	   * probabilities (L)
	   
        generate double `prob_lefta' = $ML_y2
        generate double `prob_leftb' = $ML_y3
		
	   * probabilities (R)
	   
        generate double `prob_righta' = $ML_y4
        generate double `prob_rightb' = $ML_y5
		
		
		* weighted probabilities 
		
		
		if $ML_y6 > $ML_y7 {
			generate double `wp1'= exp(-((-ln(`prob_lefta'))^`gamma')) if `prob_lefta' > 0 & `prob_lefta' < 1				
			generate double `wp2'= 1-`wp1' 
			
			}
		
		if $ML_y7 > $ML_y6 {
			generate double `wp2'= exp(-((-ln(`prob_leftb'))^`gamma')) if `prob_leftb' > 0 & `prob_leftb' < 1 				
			generate double `wp1'= 1-`wp2' 
			
			}
				* weighted probabilities 
		
		
		if $ML_y8 > $ML_y9 {
			generate double `wp3'= exp(-((-ln(`prob_righta'))^`gamma')) if `prob_righta' > 0 & `prob_righta' < 1 				
			generate double `wp4'= 1-`wp3' 
			
			}
		
		if $ML_y9 > $ML_y8 {
			generate double `wp4'= exp(-((-ln(`prob_rightb'))^`gamma')) if `prob_rightb' > 0 & `prob_rightb' < 1 				
			generate double `wp3'= 1-`wp4' 
			
			}	

			
		* arguments of the utility function
		
        
		* Left 
		
		generate double `y0' = (1-exp(-`r'*$ML_y6))/`r'
        generate double `y1' = (1-exp(-`r'*$ML_y7))/`r'
		
		* Right
		
        generate double `y2' = (1-exp(-`r'*$ML_y8))/`r'
        generate double `y3' = (1-exp(-`r'*$ML_y9))/`r'
		
		
		replace `y0' = -`y0' if $ML_y6 < 0
        replace `y1' = -`y1' if $ML_y7 < 0
        replace `y2' = -`y2' if $ML_y8 < 0
		replace `y3' = -`y3' if $ML_y9 < 0
		
		
        *  utility (L)
		
        generate double `euL' = (`wp1'*`y0')+(`wp2'*`y1')
		
		*  utility (R)
		
        generate double `euR' = (`wp3'*`y2')+(`wp4'*`y3')
		
		
		* utilities difference and noise specifications
		
        generate double `euDiff' = (`euR'^(1/`noise'))/((`euR'^(1/`noise'))+(`euL'^(1/`noise')))
        
		* likelhood
		
        replace `lnf' = ln(`euDiff') if $ML_y1==1
        replace `lnf' = ln(1-`euDiff') if $ML_y1==0

		
    }
end


* define globals




/// ML_RDT_prelec1+cara+luce

ml model lf ML_rdu4_luce_prelec1_cara (r: select_deep prob_lefta prob_leftb prob_righta prob_rightb prize_lefta prize_leftb prize_righta prize_rightb = ) (gamma: ) (noise: ) if select_deep~=., cluster(id) technique(nr) 
ml maximize, difficult
ml display

estimates store deep27, title (RDU)


/// 28

program define ML_rdu4_luce_prelec2_cara

    args lnf r eta phi noise
    tempvar select_deep
	tempvar prob_lefta prob_leftb prob_righta prob_rightb
	tempvar prize_lefta prize_leftb prize_righta prize_rightb
	tempvar y0 y1 y2 y3 
	tempvar wp1 wp2 wp3 wp4
    tempvar euL euR euDiff 

    quietly {
	
        * initial  
		
		gen int `select_deep' = $ML_y1
		
       * setup
	   
	   * probabilities (L)
	   
        generate double `prob_lefta' = $ML_y2
        generate double `prob_leftb' = $ML_y3
		
	   * probabilities (R)
	   
        generate double `prob_righta' = $ML_y4
        generate double `prob_rightb' = $ML_y5
		
		
		* weighted probabilities 
		
		
		if $ML_y6 > $ML_y7 {
			generate double `wp1'= exp((-`eta')*((-ln(`prob_lefta'))^`phi')) if `prob_lefta' > 0 & `prob_lefta' < 1				
			generate double `wp2'= 1-`wp1' 
			
			}
		
		if $ML_y7 > $ML_y6 {
			generate double `wp2'= exp((-`eta')*((-ln(`prob_leftb'))^`phi')) if `prob_leftb' > 0 & `prob_leftb' < 1 				
			generate double `wp1'= 1-`wp2' 
			
			}
				* weighted probabilities 
		
		
		if $ML_y8 > $ML_y9 {
			generate double `wp3'= exp((-`eta')*((-ln(`prob_righta'))^`phi')) if `prob_righta' > 0 & `prob_righta' < 1 				
			generate double `wp4'= 1-`wp3' 
			
			}
		
		if $ML_y9 > $ML_y8 {
			generate double `wp4'= exp((-`eta')*((-ln(`prob_rightb'))^`phi')) if `prob_rightb' > 0 & `prob_rightb' < 1 				
			generate double `wp3'= 1-`wp4' 
			
			}		

			
		* arguments of the utility function
		
        
		* Left 
		
		generate double `y0' = (1-exp(-`r'*$ML_y6))/`r'
        generate double `y1' = (1-exp(-`r'*$ML_y7))/`r'
		
		* Right
		
        generate double `y2' = (1-exp(-`r'*$ML_y8))/`r'
        generate double `y3' = (1-exp(-`r'*$ML_y9))/`r'
		
		
		replace `y0' = -`y0' if $ML_y6 < 0
        replace `y1' = -`y1' if $ML_y7 < 0
        replace `y2' = -`y2' if $ML_y8 < 0
		replace `y3' = -`y3' if $ML_y9 < 0
		
		
        *  utility (L)
		
        generate double `euL' = (`wp1'*`y0')+(`wp2'*`y1')
		
		*  utility (R)
		
        generate double `euR' = (`wp3'*`y2')+(`wp4'*`y3')
		
		
		* utilities difference and noise specifications
		
        generate double `euDiff' = (`euR'^(1/`noise'))/((`euR'^(1/`noise'))+(`euL'^(1/`noise')))
        
		* likelhood
		
        replace `lnf' = ln(`euDiff') if $ML_y1==1
        replace `lnf' = ln(1-`euDiff') if $ML_y1==0

		
    }
end


* define globals



/// ML_RDT_prelec2+cara+luce

ml model lf ML_rdu4_luce_prelec2_cara (r: select_deep prob_lefta prob_leftb prob_righta prob_rightb prize_lefta prize_leftb prize_righta prize_rightb = )(eta: ) (phi: ) (noise: ) if select_deep~=., cluster(id) technique(nr) 
ml maximize, difficult
ml display

estimates store deep28, title (RDU)


/// 29

program define ML_rdu4_luce_quiqqin_expo

    args lnf r gamma alpha noise
    tempvar select_deep
	tempvar prob_lefta prob_leftb prob_righta prob_rightb
	tempvar prize_lefta prize_leftb prize_righta prize_rightb
	tempvar y0 y1 y2 y3 
	tempvar wp1 wp2 wp3 wp4
    tempvar euL euR euDiff 

    quietly {
	
        * initial  
		
		gen int `select_deep' = $ML_y1
		
       * setup
	   
	   * probabilities (L)
	   
        generate double `prob_lefta' = $ML_y2
        generate double `prob_leftb' = $ML_y3
		
	   * probabilities (R)
	   
        generate double `prob_righta' = $ML_y4
        generate double `prob_rightb' = $ML_y5
		
		
		* weighted probabilities 
		
		
		if $ML_y6 > $ML_y7 {
			generate double `wp1'= (`prob_lefta'^`gamma') 				
			generate double `wp2'= 1-`wp1' 
			
			}
		
		if $ML_y7 > $ML_y6 {
			generate double `wp2'= (`prob_leftb'^`gamma') 				
			generate double `wp1'= 1-`wp2' 
			
			}
				* weighted probabilities 
		
		
		if $ML_y8 > $ML_y9 {
			generate double `wp3'= (`prob_righta'^`gamma') 				
			generate double `wp4'= 1-`wp3' 
			
			}
		
		if $ML_y9 > $ML_y8 {
			generate double `wp4'= (`prob_rightb'^`gamma') 				
			generate double `wp3'= 1-`wp4' 
			
			}		

			
		* arguments of the utility function
		
        
		* Left 
		
		generate double `y0' = (1-exp(-`alpha'*(($ML_y6)^(1-`r'))))/`alpha'
        generate double `y1' = (1-exp(-`alpha'*(($ML_y7)^(1-`r'))))/`alpha'
		
		* Right
		
        generate double `y2' = (1-exp(-`alpha'*(($ML_y8)^(1-`r'))))/`alpha'
        generate double `y3' = (1-exp(-`alpha'*(($ML_y9)^(1-`r'))))/`alpha'
		
		
		replace `y0' = -`y0' if $ML_y6 < 0
        replace `y1' = -`y1' if $ML_y7 < 0
        replace `y2' = -`y2' if $ML_y8 < 0
		replace `y3' = -`y3' if $ML_y9 < 0
		
		
        *  utility (L)
		
        generate double `euL' = (`wp1'*`y0')+(`wp2'*`y1')
		
		*  utility (R)
		
        generate double `euR' = (`wp3'*`y2')+(`wp4'*`y3')
		
		
		* utilities difference and noise specifications
		
        generate double `euDiff' = (`euR'^(1/`noise'))/((`euR'^(1/`noise'))+(`euL'^(1/`noise')))
        
		* likelhood
		
        replace `lnf' = ln(`euDiff') if $ML_y1==1
        replace `lnf' = ln(1-`euDiff') if $ML_y1==0

		
    }
end


* define globals



/// ML_RDT_quiggin+expo+luce

ml model lf ML_rdu4_luce_quiqqin_expo (r: select_deep prob_lefta prob_leftb prob_righta prob_rightb prize_lefta prize_leftb prize_righta prize_rightb = ) (gamma: ) (alpha: ) (noise: ) if select_deep~=., cluster(id) technique(nr) 
ml maximize, difficult
ml display

estimates store deep29, title (RDU)


/// 30

program define ML_rdu4_luce_tk_expo

    args lnf r gamma alpha noise
    tempvar select_deep
	tempvar prob_lefta prob_leftb prob_righta prob_rightb
	tempvar prize_lefta prize_leftb prize_righta prize_rightb
	tempvar y0 y1 y2 y3 
	tempvar wp1 wp2 wp3 wp4
    tempvar euL euR euDiff 

    quietly {
	
        * initial  
		
		gen int `select_deep' = $ML_y1
		
       * setup
	   
	   * probabilities (L)
	   
        generate double `prob_lefta' = $ML_y2
        generate double `prob_leftb' = $ML_y3
		
	   * probabilities (R)
	   
        generate double `prob_righta' = $ML_y4
        generate double `prob_rightb' = $ML_y5
		
		
		* weighted probabilities 
		
		
		if $ML_y6 > $ML_y7 {
			generate double `wp1'= (`prob_lefta'^`gamma')/(`prob_lefta'^`gamma' + (1-`prob_lefta')^`gamma')^(1/`gamma')				
			generate double `wp2'= 1-`wp1' 
			
			}
		
		if $ML_y7 > $ML_y6 {
			generate double `wp2'= (`prob_leftb'^`gamma')/(`prob_leftb'^`gamma' + (1-`prob_leftb')^`gamma')^(1/`gamma') 				
			generate double `wp1'= 1-`wp2' 
			
			}
				* weighted probabilities 
		
		
		if $ML_y8 > $ML_y9 {
			generate double `wp3'= (`prob_righta'^`gamma')/(`prob_righta'^`gamma' + (1-`prob_righta')^`gamma')^(1/`gamma') 				
			generate double `wp4'= 1-`wp3' 
			
			}
		
		if $ML_y9 > $ML_y8 {
			generate double `wp4'= (`prob_rightb'^`gamma')/(`prob_rightb'^`gamma' + (1-`prob_rightb')^`gamma')^(1/`gamma') 				
			generate double `wp3'= 1-`wp4' 
			
			}	

			
		* arguments of the utility function
		
        
		* Left 
		
		generate double `y0' = (1-exp(-`alpha'*(($ML_y6)^(1-`r'))))/`alpha'
        generate double `y1' = (1-exp(-`alpha'*(($ML_y7)^(1-`r'))))/`alpha'
		
		* Right
		
        generate double `y2' = (1-exp(-`alpha'*(($ML_y8)^(1-`r'))))/`alpha'
        generate double `y3' = (1-exp(-`alpha'*(($ML_y9)^(1-`r'))))/`alpha'
		
		
		replace `y0' = -`y0' if $ML_y6 < 0
        replace `y1' = -`y1' if $ML_y7 < 0
        replace `y2' = -`y2' if $ML_y8 < 0
		replace `y3' = -`y3' if $ML_y9 < 0
		
		
        *  utility (L)
		
        generate double `euL' = (`wp1'*`y0')+(`wp2'*`y1')
		
		*  utility (R)
		
        generate double `euR' = (`wp3'*`y2')+(`wp4'*`y3')
		
		
		* utilities difference and noise specifications
		
        generate double `euDiff' = (`euR'^(1/`noise'))/((`euR'^(1/`noise'))+(`euL'^(1/`noise')))
        
		* likelhood
		
        replace `lnf' = ln(`euDiff') if $ML_y1==1
        replace `lnf' = ln(1-`euDiff') if $ML_y1==0

		
    }
end


* define globals



/// ML_RDT_tk+expo+luce

ml model lf ML_rdu4_luce_tk_expo (r: select_deep prob_lefta prob_leftb prob_righta prob_rightb prize_lefta prize_leftb prize_righta prize_rightb = ) (gamma: ) (alpha: ) (noise: ) if select_deep~=., cluster(id) technique(nr) 
ml maximize, difficult
ml display

estimates store deep30, title (RDU)


/// 31

program define ML_rdu4_luce_prelec1_expo

    args lnf r gamma alpha noise
    tempvar select_deep
	tempvar prob_lefta prob_leftb prob_righta prob_rightb
	tempvar prize_lefta prize_leftb prize_righta prize_rightb
	tempvar y0 y1 y2 y3 
	tempvar wp1 wp2 wp3 wp4
    tempvar euL euR euDiff 

    quietly {
	
        * initial  
		
		gen int `select_deep' = $ML_y1
		
       * setup
	   
	   * probabilities (L)
	   
        generate double `prob_lefta' = $ML_y2
        generate double `prob_leftb' = $ML_y3
		
	   * probabilities (R)
	   
        generate double `prob_righta' = $ML_y4
        generate double `prob_rightb' = $ML_y5
		
		
		* weighted probabilities 
		
		
		if $ML_y6 > $ML_y7 {
			generate double `wp1'= exp(-((-ln(`prob_lefta'))^`gamma')) if `prob_lefta' > 0 & `prob_lefta' < 1				
			generate double `wp2'= 1-`wp1' 
			
			}
		
		if $ML_y7 > $ML_y6 {
			generate double `wp2'= exp(-((-ln(`prob_leftb'))^`gamma')) if `prob_leftb' > 0 & `prob_leftb' < 1 				
			generate double `wp1'= 1-`wp2' 
			
			}
				* weighted probabilities 
		
		
		if $ML_y8 > $ML_y9 {
			generate double `wp3'= exp(-((-ln(`prob_righta'))^`gamma')) if `prob_righta' > 0 & `prob_righta' < 1 				
			generate double `wp4'= 1-`wp3' 
			
			}
		
		if $ML_y9 > $ML_y8 {
			generate double `wp4'= exp(-((-ln(`prob_rightb'))^`gamma')) if `prob_rightb' > 0 & `prob_rightb' < 1 				
			generate double `wp3'= 1-`wp4' 
			
			}	

			
		* arguments of the utility function
		
        
		* Left 
		
		generate double `y0' = (1-exp(-`alpha'*(($ML_y6)^(1-`r'))))/`alpha'
        generate double `y1' = (1-exp(-`alpha'*(($ML_y7)^(1-`r'))))/`alpha'
		
		* Right
		
        generate double `y2' = (1-exp(-`alpha'*(($ML_y8)^(1-`r'))))/`alpha'
        generate double `y3' = (1-exp(-`alpha'*(($ML_y9)^(1-`r'))))/`alpha'
		
		
		replace `y0' = -`y0' if $ML_y6 < 0
        replace `y1' = -`y1' if $ML_y7 < 0
        replace `y2' = -`y2' if $ML_y8 < 0
		replace `y3' = -`y3' if $ML_y9 < 0
		
		
        *  utility (L)
		
        generate double `euL' = (`wp1'*`y0')+(`wp2'*`y1')
		
		*  utility (R)
		
        generate double `euR' = (`wp3'*`y2')+(`wp4'*`y3')
		
		
		* utilities difference and noise specifications
		
        generate double `euDiff' = (`euR'^(1/`noise'))/((`euR'^(1/`noise'))+(`euL'^(1/`noise')))
        
		* likelhood
		
        replace `lnf' = ln(`euDiff') if $ML_y1==1
        replace `lnf' = ln(1-`euDiff') if $ML_y1==0

		
    }
end


* define globals



/// ML_RDT_prelec1+expo+luce

ml model lf ML_rdu4_luce_prelec1_expo (r: select_deep prob_lefta prob_leftb prob_righta prob_rightb prize_lefta prize_leftb prize_righta prize_rightb = ) (gamma: ) (alpha: ) (noise: ) if select_deep~=., cluster(id) technique(nr) 
ml maximize, difficult
ml display

estimates store deep31, title (RDU)


/// 32

program define ML_rdu4_luce_prelec2_expo

    args lnf r eta phi alpha noise
    tempvar select_deep
	tempvar prob_lefta prob_leftb prob_righta prob_rightb
	tempvar prize_lefta prize_leftb prize_righta prize_rightb
	tempvar y0 y1 y2 y3 
	tempvar wp1 wp2 wp3 wp4
    tempvar euL euR euDiff 

    quietly {
	
        * initial  
		
		gen int `select_deep' = $ML_y1
		
       * setup
	   
	   * probabilities (L)
	   
        generate double `prob_lefta' = $ML_y2
        generate double `prob_leftb' = $ML_y3
		
	   * probabilities (R)
	   
        generate double `prob_righta' = $ML_y4
        generate double `prob_rightb' = $ML_y5
		
		
		* weighted probabilities 
		
		
		if $ML_y6 > $ML_y7 {
			generate double `wp1'= exp((-`eta')*((-ln(`prob_lefta'))^`phi')) if `prob_lefta' > 0 & `prob_lefta' < 1				
			generate double `wp2'= 1-`wp1' 
			
			}
		
		if $ML_y7 > $ML_y6 {
			generate double `wp2'= exp((-`eta')*((-ln(`prob_leftb'))^`phi')) if `prob_leftb' > 0 & `prob_leftb' < 1 				
			generate double `wp1'= 1-`wp2' 
			
			}
				* weighted probabilities 
		
		
		if $ML_y8 > $ML_y9 {
			generate double `wp3'= exp((-`eta')*((-ln(`prob_righta'))^`phi')) if `prob_righta' > 0 & `prob_righta' < 1 				
			generate double `wp4'= 1-`wp3' 
			
			}
		
		if $ML_y9 > $ML_y8 {
			generate double `wp4'= exp((-`eta')*((-ln(`prob_rightb'))^`phi')) if `prob_rightb' > 0 & `prob_rightb' < 1 				
			generate double `wp3'= 1-`wp4' 
			
			}		

			
		* arguments of the utility function
		
        
		* Left 
		
		generate double `y0' = (1-exp(-`alpha'*(($ML_y6)^(1-`r'))))/`alpha'
        generate double `y1' = (1-exp(-`alpha'*(($ML_y7)^(1-`r'))))/`alpha'
		
		* Right
		
        generate double `y2' = (1-exp(-`alpha'*(($ML_y8)^(1-`r'))))/`alpha'
        generate double `y3' = (1-exp(-`alpha'*(($ML_y9)^(1-`r'))))/`alpha'
		
		
		replace `y0' = -`y0' if $ML_y6 < 0
        replace `y1' = -`y1' if $ML_y7 < 0
        replace `y2' = -`y2' if $ML_y8 < 0
		replace `y3' = -`y3' if $ML_y9 < 0
		
		
        *  utility (L)
		
        generate double `euL' = (`wp1'*`y0')+(`wp2'*`y1')
		
		*  utility (R)
		
        generate double `euR' = (`wp3'*`y2')+(`wp4'*`y3')
		
		
		* utilities difference and noise specifications
		
        generate double `euDiff' = (`euR'^(1/`noise'))/((`euR'^(1/`noise'))+(`euL'^(1/`noise')))
        
		* likelhood
		
        replace `lnf' = ln(`euDiff') if $ML_y1==1
        replace `lnf' = ln(1-`euDiff') if $ML_y1==0

		
    }
end


* define globals



/// ML_RDT_prelec2+expo+luce

ml model lf ML_rdu4_luce_prelec2_expo (r: select_deep prob_lefta prob_leftb prob_righta prob_rightb prize_lefta prize_leftb prize_righta prize_rightb = ) (eta: ) (phi: ) (alpha: ) (noise: ) if select_deep~=., cluster(id) technique(nr) 
ml maximize, difficult
ml display

estimates store deep32, title (RDU)


/// 33

program define ML_rdu4_fechner_quiqqin_power

    args lnf r gamma noise
    tempvar select_deep
	tempvar prob_lefta prob_leftb prob_righta prob_rightb
	tempvar prize_lefta prize_leftb prize_righta prize_rightb
	tempvar y0 y1 y2 y3 
	tempvar wp1 wp2 wp3 wp4
    tempvar euL euR euDiff 

    quietly {
	
        * initial  
		
		gen int `select_deep' = $ML_y1
		
       * setup
	   
	   * probabilities (L)
	   
        generate double `prob_lefta' = $ML_y2
        generate double `prob_leftb' = $ML_y3
		
	   * probabilities (R)
	   
        generate double `prob_righta' = $ML_y4
        generate double `prob_rightb' = $ML_y5
		
		
		* weighted probabilities 
		
		
		if $ML_y6 > $ML_y7 {
			generate double `wp1'= (`prob_lefta'^`gamma') 				
			generate double `wp2'= 1-`wp1' 
			
			}
		
		if $ML_y7 > $ML_y6 {
			generate double `wp2'= (`prob_leftb'^`gamma') 				
			generate double `wp1'= 1-`wp2' 
			
			}
				* weighted probabilities 
		
		
		if $ML_y8 > $ML_y9 {
			generate double `wp3'= (`prob_righta'^`gamma') 				
			generate double `wp4'= 1-`wp3' 
			
			}
		
		if $ML_y9 > $ML_y8 {
			generate double `wp4'= (`prob_rightb'^`gamma') 				
			generate double `wp3'= 1-`wp4' 
			
			}		

			
		* arguments of the utility function
		
        
		* Left 
		
		generate double `y0' = (abs($ML_y6))^`r'
        generate double `y1' = (abs($ML_y7))^`r'
		
		* Right
		
        generate double `y2' = (abs($ML_y8))^`r'
        generate double `y3' = (abs($ML_y9))^`r'
		
		
		replace `y0' = -`y0' if $ML_y6 < 0
        replace `y1' = -`y1' if $ML_y7 < 0
        replace `y2' = -`y2' if $ML_y8 < 0
		replace `y3' = -`y3' if $ML_y9 < 0
		
		
        *  utility (L)
		
        generate double `euL' = (`wp1'*`y0')+(`wp2'*`y1')
		
		*  utility (R)
		
        generate double `euR' = (`wp3'*`y2')+(`wp4'*`y3')
		
		
		* utilities difference and noise specifications
		
        generate double `euDiff' = (`euR'-`euL')/(`noise')
        
		* likelhood
		
        replace `lnf' = ln($cdf( `euDiff')) if $ML_y1==1
        replace `lnf' = ln($cdf(-`euDiff')) if $ML_y1==0

		
    }
end


* define globals 

global cdf "normal"


/// ML_RDT_quiggin+power+fechner

ml model lf ML_rdu4_fechner_quiqqin_power (r: select_deep prob_lefta prob_leftb prob_righta prob_rightb prize_lefta prize_leftb prize_righta prize_rightb = ) (gamma: ) (noise: ) if select_deep~=., cluster(id) technique(nr) 
ml maximize, difficult
ml display

estimates store deep33, title (RDU)


/// 34

program define ML_rdu4_fechner_tk_power

    args lnf r gamma noise
    tempvar select_deep
	tempvar prob_lefta prob_leftb prob_righta prob_rightb
	tempvar prize_lefta prize_leftb prize_righta prize_rightb
	tempvar y0 y1 y2 y3 
	tempvar wp1 wp2 wp3 wp4
    tempvar euL euR euDiff 

    quietly {
	
        * initial  
		
		gen int `select_deep' = $ML_y1
		
       * setup
	   
	   * probabilities (L)
	   
        generate double `prob_lefta' = $ML_y2
        generate double `prob_leftb' = $ML_y3
		
	   * probabilities (R)
	   
        generate double `prob_righta' = $ML_y4
        generate double `prob_rightb' = $ML_y5
		
		
		* weighted probabilities 
		
		
		if $ML_y6 > $ML_y7 {
			generate double `wp1'= (`prob_lefta'^`gamma')/(`prob_lefta'^`gamma' + (1-`prob_lefta')^`gamma')^(1/`gamma')				
			generate double `wp2'= 1-`wp1' 
			
			}
		
		if $ML_y7 > $ML_y6 {
			generate double `wp2'= (`prob_leftb'^`gamma')/(`prob_leftb'^`gamma' + (1-`prob_leftb')^`gamma')^(1/`gamma') 				
			generate double `wp1'= 1-`wp2' 
			
			}
				* weighted probabilities 
		
		
		if $ML_y8 > $ML_y9 {
			generate double `wp3'= (`prob_righta'^`gamma')/(`prob_righta'^`gamma' + (1-`prob_righta')^`gamma')^(1/`gamma') 				
			generate double `wp4'= 1-`wp3' 
			
			}
		
		if $ML_y9 > $ML_y8 {
			generate double `wp4'= (`prob_rightb'^`gamma')/(`prob_rightb'^`gamma' + (1-`prob_rightb')^`gamma')^(1/`gamma') 				
			generate double `wp3'= 1-`wp4' 
			
			}	

			
		* arguments of the utility function
		
        
		* Left 
		
		generate double `y0' = (abs($ML_y6))^`r'
        generate double `y1' = (abs($ML_y7))^`r'
		
		* Right
		
        generate double `y2' = (abs($ML_y8))^`r'
        generate double `y3' = (abs($ML_y9))^`r'
		
		
		replace `y0' = -`y0' if $ML_y6 < 0
        replace `y1' = -`y1' if $ML_y7 < 0
        replace `y2' = -`y2' if $ML_y8 < 0
		replace `y3' = -`y3' if $ML_y9 < 0
		
		
        *  utility (L)
		
        generate double `euL' = (`wp1'*`y0')+(`wp2'*`y1')
		
		*  utility (R)
		
        generate double `euR' = (`wp3'*`y2')+(`wp4'*`y3')
		
		
		* utilities difference and noise specifications
		
        generate double `euDiff' = (`euR'-`euL')/(`noise')
        
		* likelhood
		
        replace `lnf' = ln($cdf( `euDiff')) if $ML_y1==1
        replace `lnf' = ln($cdf(-`euDiff')) if $ML_y1==0

		
    }
end


* define globals 

global cdf "normal"


/// ML_RDT_tk+power+fechner

ml model lf ML_rdu4_fechner_tk_power (r: select_deep prob_lefta prob_leftb prob_righta prob_rightb prize_lefta prize_leftb prize_righta prize_rightb = ) (gamma: ) (noise: ) if select_deep~=., cluster(id) technique(nr) 
ml maximize, difficult
ml display

estimates store deep34, title (RDU)


/// 35

program define ML_rdu4_fechner_prelec1_power

    args lnf r gamma noise
    tempvar select_deep
	tempvar prob_lefta prob_leftb prob_righta prob_rightb
	tempvar prize_lefta prize_leftb prize_righta prize_rightb
	tempvar y0 y1 y2 y3 
	tempvar wp1 wp2 wp3 wp4
    tempvar euL euR euDiff 

    quietly {
	
        * initial  
		
		gen int `select_deep' = $ML_y1
		
       * setup
	   
	   * probabilities (L)
	   
        generate double `prob_lefta' = $ML_y2
        generate double `prob_leftb' = $ML_y3
		
	   * probabilities (R)
	   
        generate double `prob_righta' = $ML_y4
        generate double `prob_rightb' = $ML_y5
		
		
		* weighted probabilities 
		
		
		if $ML_y6 > $ML_y7 {
			generate double `wp1'= exp(-((-ln(`prob_lefta'))^`gamma')) if `prob_lefta' > 0 & `prob_lefta' < 1				
			generate double `wp2'= 1-`wp1' 
			
			}
		
		if $ML_y7 > $ML_y6 {
			generate double `wp2'= exp(-((-ln(`prob_leftb'))^`gamma')) if `prob_leftb' > 0 & `prob_leftb' < 1 				
			generate double `wp1'= 1-`wp2' 
			
			}
				* weighted probabilities 
		
		
		if $ML_y8 > $ML_y9 {
			generate double `wp3'= exp(-((-ln(`prob_righta'))^`gamma')) if `prob_righta' > 0 & `prob_righta' < 1 				
			generate double `wp4'= 1-`wp3' 
			
			}
		
		if $ML_y9 > $ML_y8 {
			generate double `wp4'= exp(-((-ln(`prob_rightb'))^`gamma')) if `prob_rightb' > 0 & `prob_rightb' < 1 				
			generate double `wp3'= 1-`wp4' 
			
			}	

			
		* arguments of the utility function
		
        
		* Left 
		
		generate double `y0' = (abs($ML_y6))^`r'
        generate double `y1' = (abs($ML_y7))^`r'
		
		* Right
		
        generate double `y2' = (abs($ML_y8))^`r'
        generate double `y3' = (abs($ML_y9))^`r'
		
		
		replace `y0' = -`y0' if $ML_y6 < 0
        replace `y1' = -`y1' if $ML_y7 < 0
        replace `y2' = -`y2' if $ML_y8 < 0
		replace `y3' = -`y3' if $ML_y9 < 0
		
		
        *  utility (L)
		
        generate double `euL' = (`wp1'*`y0')+(`wp2'*`y1')
		
		*  utility (R)
		
        generate double `euR' = (`wp3'*`y2')+(`wp4'*`y3')
		
		
		* utilities difference and noise specifications
		
        generate double `euDiff' = (`euR'-`euL')/(`noise')
        
		* likelhood
		
        replace `lnf' = ln($cdf( `euDiff')) if $ML_y1==1
        replace `lnf' = ln($cdf(-`euDiff')) if $ML_y1==0

		
    }
end


* define globals 

global cdf "normal"


/// ML_RDT_prelec1+power+fechner

ml model lf ML_rdu4_fechner_prelec1_power (r: select_deep prob_lefta prob_leftb prob_righta prob_rightb prize_lefta prize_leftb prize_righta prize_rightb = ) (gamma: ) (noise: ) if select_deep~=., cluster(id) technique(nr) 
ml maximize, difficult
ml display

estimates store deep35, title (RDU)


/// 36

program define ML_rdu4_fechner_prelec2_power

    args lnf r eta phi noise
    tempvar select_deep
	tempvar prob_lefta prob_leftb prob_righta prob_rightb
	tempvar prize_lefta prize_leftb prize_righta prize_rightb
	tempvar y0 y1 y2 y3 
	tempvar wp1 wp2 wp3 wp4
    tempvar euL euR euDiff 

    quietly {
	
        * initial  
		
		gen int `select_deep' = $ML_y1
		
       * setup
	   
	   * probabilities (L)
	   
        generate double `prob_lefta' = $ML_y2
        generate double `prob_leftb' = $ML_y3
		
	   * probabilities (R)
	   
        generate double `prob_righta' = $ML_y4
        generate double `prob_rightb' = $ML_y5
		
		
		* weighted probabilities 
		
		
		if $ML_y6 > $ML_y7 {
			generate double `wp1'= exp((-`eta')*((-ln(`prob_lefta'))^`phi')) if `prob_lefta' > 0 & `prob_lefta' < 1				
			generate double `wp2'= 1-`wp1' 
			
			}
		
		if $ML_y7 > $ML_y6 {
			generate double `wp2'= exp((-`eta')*((-ln(`prob_leftb'))^`phi')) if `prob_leftb' > 0 & `prob_leftb' < 1 				
			generate double `wp1'= 1-`wp2' 
			
			}
				* weighted probabilities 
		
		
		if $ML_y8 > $ML_y9 {
			generate double `wp3'= exp((-`eta')*((-ln(`prob_righta'))^`phi')) if `prob_righta' > 0 & `prob_righta' < 1 				
			generate double `wp4'= 1-`wp3' 
			
			}
		
		if $ML_y9 > $ML_y8 {
			generate double `wp4'= exp((-`eta')*((-ln(`prob_rightb'))^`phi')) if `prob_rightb' > 0 & `prob_rightb' < 1 				
			generate double `wp3'= 1-`wp4' 
			
			}		

			
		* arguments of the utility function
		
        
		* Left 
		
		generate double `y0' = (abs($ML_y6))^`r'
        generate double `y1' = (abs($ML_y7))^`r'
		
		* Right
		
        generate double `y2' = (abs($ML_y8))^`r'
        generate double `y3' = (abs($ML_y9))^`r'
		
		
		replace `y0' = -`y0' if $ML_y6 < 0
        replace `y1' = -`y1' if $ML_y7 < 0
        replace `y2' = -`y2' if $ML_y8 < 0
		replace `y3' = -`y3' if $ML_y9 < 0
		
		
        *  utility (L)
		
        generate double `euL' = (`wp1'*`y0')+(`wp2'*`y1')
		
		*  utility (R)
		
        generate double `euR' = (`wp3'*`y2')+(`wp4'*`y3')
		
		
		* utilities difference and noise specifications
		
        generate double `euDiff' = (`euR'-`euL')/(`noise')
        
		* likelhood
		
        replace `lnf' = ln($cdf( `euDiff')) if $ML_y1==1
        replace `lnf' = ln($cdf(-`euDiff')) if $ML_y1==0

		
    }
end


* define globals

global cdf "normal"


/// ML_RDT_prelec2+power+fechner

ml model lf ML_rdu4_fechner_prelec2_power (r: select_deep prob_lefta prob_leftb prob_righta prob_rightb prize_lefta prize_leftb prize_righta prize_rightb = ) (eta: ) (phi: ) (noise: ) if select_deep~=., cluster(id) technique(nr) 
ml maximize, difficult
ml display

estimates store deep36, title (RDU)


/// 37

program define ML_rdu4_fechner_quiqqin_crra

    args lnf r gamma noise
    tempvar select_deep
	tempvar prob_lefta prob_leftb prob_righta prob_rightb
	tempvar prize_lefta prize_leftb prize_righta prize_rightb
	tempvar y0 y1 y2 y3 
	tempvar wp1 wp2 wp3 wp4
    tempvar euL euR euDiff 

    quietly {
	
        * initial  
		
		gen int `select_deep' = $ML_y1
		
       * setup
	   
	   * probabilities (L)
	   
        generate double `prob_lefta' = $ML_y2
        generate double `prob_leftb' = $ML_y3
		
	   * probabilities (R)
	   
        generate double `prob_righta' = $ML_y4
        generate double `prob_rightb' = $ML_y5
		
		
		* weighted probabilities 
		
		
		if $ML_y6 > $ML_y7 {
			generate double `wp1'= (`prob_lefta'^`gamma') 				
			generate double `wp2'= 1-`wp1' 
			
			}
		
		if $ML_y7 > $ML_y6 {
			generate double `wp2'= (`prob_leftb'^`gamma') 				
			generate double `wp1'= 1-`wp2' 
			
			}
				* weighted probabilities 
		
		
		if $ML_y8 > $ML_y9 {
			generate double `wp3'= (`prob_righta'^`gamma') 				
			generate double `wp4'= 1-`wp3' 
			
			}
		
		if $ML_y9 > $ML_y8 {
			generate double `wp4'= (`prob_rightb'^`gamma') 				
			generate double `wp3'= 1-`wp4' 
			
			}		

			
		* arguments of the utility function
		
        
		* Left 
		
		generate double `y0' = ((abs($ML_y6))^(1-`r'))/(1-`r')
        generate double `y1' = ((abs($ML_y7))^(1-`r'))/(1-`r')
		
		* Right
		
        generate double `y2' = ((abs($ML_y8))^(1-`r'))/(1-`r')
        generate double `y3' = ((abs($ML_y9))^(1-`r'))/(1-`r')
		
		
		replace `y0' = -`y0' if $ML_y6 < 0
        replace `y1' = -`y1' if $ML_y7 < 0
        replace `y2' = -`y2' if $ML_y8 < 0
		replace `y3' = -`y3' if $ML_y9 < 0
		
		
        *  utility (L)
		
        generate double `euL' = (`wp1'*`y0')+(`wp2'*`y1')
		
		*  utility (R)
		
        generate double `euR' = (`wp3'*`y2')+(`wp4'*`y3')
		
		
		* utilities difference and noise specifications
		
        generate double `euDiff' = (`euR'-`euL')/(`noise')
        
		* likelhood
		
        replace `lnf' = ln($cdf( `euDiff')) if $ML_y1==1
        replace `lnf' = ln($cdf(-`euDiff')) if $ML_y1==0

		
    }
end


* define globals 

global cdf "normal"


/// ML_RDT_quiggin+crra+fechner

ml model lf ML_rdu4_fechner_quiqqin_crra (r: select_deep prob_lefta prob_leftb prob_righta prob_rightb prize_lefta prize_leftb prize_righta prize_rightb = ) (gamma: ) (noise: ) if select_deep~=., cluster(id) technique(nr) 
ml maximize, difficult
ml display

estimates store deep37, title (RDU)


/// 38

program define ML_rdu4_fechner_tk_crra

    args lnf r gamma noise
    tempvar select_deep
	tempvar prob_lefta prob_leftb prob_righta prob_rightb
	tempvar prize_lefta prize_leftb prize_righta prize_rightb
	tempvar y0 y1 y2 y3 
	tempvar wp1 wp2 wp3 wp4
    tempvar euL euR euDiff 

    quietly {
	
        * initial  
		
		gen int `select_deep' = $ML_y1
		
       * setup
	   
	   * probabilities (L)
	   
        generate double `prob_lefta' = $ML_y2
        generate double `prob_leftb' = $ML_y3
		
	   * probabilities (R)
	   
        generate double `prob_righta' = $ML_y4
        generate double `prob_rightb' = $ML_y5
		
		
		* weighted probabilities 
		
		
		if $ML_y6 > $ML_y7 {
			generate double `wp1'= (`prob_lefta'^`gamma')/(`prob_lefta'^`gamma' + (1-`prob_lefta')^`gamma')^(1/`gamma')				
			generate double `wp2'= 1-`wp1' 
			
			}
		
		if $ML_y7 > $ML_y6 {
			generate double `wp2'= (`prob_leftb'^`gamma')/(`prob_leftb'^`gamma' + (1-`prob_leftb')^`gamma')^(1/`gamma') 				
			generate double `wp1'= 1-`wp2' 
			
			}
				* weighted probabilities 
		
		
		if $ML_y8 > $ML_y9 {
			generate double `wp3'= (`prob_righta'^`gamma')/(`prob_righta'^`gamma' + (1-`prob_righta')^`gamma')^(1/`gamma') 				
			generate double `wp4'= 1-`wp3' 
			
			}
		
		if $ML_y9 > $ML_y8 {
			generate double `wp4'= (`prob_rightb'^`gamma')/(`prob_rightb'^`gamma' + (1-`prob_rightb')^`gamma')^(1/`gamma') 				
			generate double `wp3'= 1-`wp4' 
			
			}	

			
		* arguments of the utility function
		
        
		* Left 
		
		generate double `y0' = ((abs($ML_y6))^(1-`r'))/(1-`r')
        generate double `y1' = ((abs($ML_y7))^(1-`r'))/(1-`r')
		
		* Right
		
        generate double `y2' = ((abs($ML_y8))^(1-`r'))/(1-`r')
        generate double `y3' = ((abs($ML_y9))^(1-`r'))/(1-`r')
		
		
		replace `y0' = -`y0' if $ML_y6 < 0
        replace `y1' = -`y1' if $ML_y7 < 0
        replace `y2' = -`y2' if $ML_y8 < 0
		replace `y3' = -`y3' if $ML_y9 < 0
		
		
        *  utility (L)
		
        generate double `euL' = (`wp1'*`y0')+(`wp2'*`y1')
		
		*  utility (R)
		
        generate double `euR' = (`wp3'*`y2')+(`wp4'*`y3')
		
		
		* utilities difference and noise specifications
		
        generate double `euDiff' = (`euR'-`euL')/(`noise')
        
		* likelhood
		
        replace `lnf' = ln($cdf( `euDiff')) if $ML_y1==1
        replace `lnf' = ln($cdf(-`euDiff')) if $ML_y1==0

		
    }
end


* define globals 

global cdf "normal"


/// ML_RDT_tk+crra+fechner

ml model lf ML_rdu4_fechner_tk_crra (r: select_deep prob_lefta prob_leftb prob_righta prob_rightb prize_lefta prize_leftb prize_righta prize_rightb = ) (gamma: ) (noise: ) if select_deep~=., cluster(id) technique(nr) 
ml maximize, difficult
ml display

estimates store deep38, title (RDU)


/// 39

program define ML_rdu4_fechner_prelec1_crra

    args lnf r gamma noise
    tempvar select_deep
	tempvar prob_lefta prob_leftb prob_righta prob_rightb
	tempvar prize_lefta prize_leftb prize_righta prize_rightb
	tempvar y0 y1 y2 y3 
	tempvar wp1 wp2 wp3 wp4
    tempvar euL euR euDiff 

    quietly {
	
        * initial  
		
		gen int `select_deep' = $ML_y1
		
       * setup
	   
	   * probabilities (L)
	   
        generate double `prob_lefta' = $ML_y2
        generate double `prob_leftb' = $ML_y3
		
	   * probabilities (R)
	   
        generate double `prob_righta' = $ML_y4
        generate double `prob_rightb' = $ML_y5
		
		
		* weighted probabilities 
		
		
		if $ML_y6 > $ML_y7 {
			generate double `wp1'= exp(-((-ln(`prob_lefta'))^`gamma')) if `prob_lefta' > 0 & `prob_lefta' < 1				
			generate double `wp2'= 1-`wp1' 
			
			}
		
		if $ML_y7 > $ML_y6 {
			generate double `wp2'= exp(-((-ln(`prob_leftb'))^`gamma')) if `prob_leftb' > 0 & `prob_leftb' < 1 				
			generate double `wp1'= 1-`wp2' 
			
			}
				* weighted probabilities 
		
		
		if $ML_y8 > $ML_y9 {
			generate double `wp3'= exp(-((-ln(`prob_righta'))^`gamma')) if `prob_righta' > 0 & `prob_righta' < 1 				
			generate double `wp4'= 1-`wp3' 
			
			}
		
		if $ML_y9 > $ML_y8 {
			generate double `wp4'= exp(-((-ln(`prob_rightb'))^`gamma')) if `prob_rightb' > 0 & `prob_rightb' < 1 				
			generate double `wp3'= 1-`wp4' 
			
			}	

			
		* arguments of the utility function
		
        
		* Left 
		
		generate double `y0' = ((abs($ML_y6))^(1-`r'))/(1-`r')
        generate double `y1' = ((abs($ML_y7))^(1-`r'))/(1-`r')
		
		* Right
		
        generate double `y2' = ((abs($ML_y8))^(1-`r'))/(1-`r')
        generate double `y3' = ((abs($ML_y9))^(1-`r'))/(1-`r')
		
		
		replace `y0' = -`y0' if $ML_y6 < 0
        replace `y1' = -`y1' if $ML_y7 < 0
        replace `y2' = -`y2' if $ML_y8 < 0
		replace `y3' = -`y3' if $ML_y9 < 0
		
		
        *  utility (L)
		
        generate double `euL' = (`wp1'*`y0')+(`wp2'*`y1')
		
		*  utility (R)
		
        generate double `euR' = (`wp3'*`y2')+(`wp4'*`y3')
		
		
		* utilities difference and noise specifications
		
        generate double `euDiff' = (`euR'-`euL')/(`noise')
        
		* likelhood
		
        replace `lnf' = ln($cdf( `euDiff')) if $ML_y1==1
        replace `lnf' = ln($cdf(-`euDiff')) if $ML_y1==0

		
    }
end


* define globals 

global cdf "normal"


/// ML_RDT_prelec1+crra+fechner

ml model lf ML_rdu4_fechner_prelec1_crra (r: select_deep prob_lefta prob_leftb prob_righta prob_rightb prize_lefta prize_leftb prize_righta prize_rightb = ) (gamma: ) (noise: ) if select_deep~=., cluster(id) technique(nr) 
ml maximize, difficult
ml display

estimates store deep39, title (RDU)


/// 40

program define ML_rdu4_fechner_prelec2_crra

    args lnf r eta phi noise
    tempvar select_deep
	tempvar prob_lefta prob_leftb prob_righta prob_rightb
	tempvar prize_lefta prize_leftb prize_righta prize_rightb
	tempvar y0 y1 y2 y3 
	tempvar wp1 wp2 wp3 wp4
    tempvar euL euR euDiff 

    quietly {
	
        * initial  
		
		gen int `select_deep' = $ML_y1
		
       * setup
	   
	   * probabilities (L)
	   
        generate double `prob_lefta' = $ML_y2
        generate double `prob_leftb' = $ML_y3
		
	   * probabilities (R)
	   
        generate double `prob_righta' = $ML_y4
        generate double `prob_rightb' = $ML_y5
		
		
		* weighted probabilities 
		
		
		if $ML_y6 > $ML_y7 {
			generate double `wp1'= exp((-`eta')*((-ln(`prob_lefta'))^`phi')) if `prob_lefta' > 0 & `prob_lefta' < 1				
			generate double `wp2'= 1-`wp1' 
			
			}
		
		if $ML_y7 > $ML_y6 {
			generate double `wp2'= exp((-`eta')*((-ln(`prob_leftb'))^`phi')) if `prob_leftb' > 0 & `prob_leftb' < 1 				
			generate double `wp1'= 1-`wp2' 
			
			}
				* weighted probabilities 
		
		
		if $ML_y8 > $ML_y9 {
			generate double `wp3'= exp((-`eta')*((-ln(`prob_righta'))^`phi')) if `prob_righta' > 0 & `prob_righta' < 1 				
			generate double `wp4'= 1-`wp3' 
			
			}
		
		if $ML_y9 > $ML_y8 {
			generate double `wp4'= exp((-`eta')*((-ln(`prob_rightb'))^`phi')) if `prob_rightb' > 0 & `prob_rightb' < 1 				
			generate double `wp3'= 1-`wp4' 
			
			}		

			
		* arguments of the utility function
		
        
		* Left 
		
		generate double `y0' = ((abs($ML_y6))^(1-`r'))/(1-`r')
        generate double `y1' = ((abs($ML_y7))^(1-`r'))/(1-`r')
		
		* Right
		
        generate double `y2' = ((abs($ML_y8))^(1-`r'))/(1-`r')
        generate double `y3' = ((abs($ML_y9))^(1-`r'))/(1-`r')
		
		
		replace `y0' = -`y0' if $ML_y6 < 0
        replace `y1' = -`y1' if $ML_y7 < 0
        replace `y2' = -`y2' if $ML_y8 < 0
		replace `y3' = -`y3' if $ML_y9 < 0
		
		
        *  utility (L)
		
        generate double `euL' = (`wp1'*`y0')+(`wp2'*`y1')
		
		*  utility (R)
		
        generate double `euR' = (`wp3'*`y2')+(`wp4'*`y3')
		
		
		* utilities difference and noise specifications
		
        generate double `euDiff' = (`euR'-`euL')/(`noise')
        
		* likelhood
		
        replace `lnf' = ln($cdf( `euDiff')) if $ML_y1==1
        replace `lnf' = ln($cdf(-`euDiff')) if $ML_y1==0

		
    }
end


* define globals 

global cdf "normal"


/// ML_RDT_prelec2+crra+fechner

ml model lf ML_rdu4_fechner_prelec2_crra (r: select_deep prob_lefta prob_leftb prob_righta prob_rightb prize_lefta prize_leftb prize_righta prize_rightb = ) (eta: ) (phi: ) (noise: ) if select_deep~=., cluster(id) technique(nr) 
ml maximize, difficult
ml display

estimates store deep40, title (RDU)


/// 41

program define ML_rdu4_fechner_quiqqin_cara

    args lnf r gamma noise
    tempvar select_deep
	tempvar prob_lefta prob_leftb prob_righta prob_rightb
	tempvar prize_lefta prize_leftb prize_righta prize_rightb
	tempvar y0 y1 y2 y3 
	tempvar wp1 wp2 wp3 wp4
    tempvar euL euR euDiff 

    quietly {
	
        * initial  
		
		gen int `select_deep' = $ML_y1
		
       * setup
	   
	   * probabilities (L)
	   
        generate double `prob_lefta' = $ML_y2
        generate double `prob_leftb' = $ML_y3
		
	   * probabilities (R)
	   
        generate double `prob_righta' = $ML_y4
        generate double `prob_rightb' = $ML_y5
		
		
		* weighted probabilities 
		
		
		if $ML_y6 > $ML_y7 {
			generate double `wp1'= (`prob_lefta'^`gamma') 				
			generate double `wp2'= 1-`wp1' 
			
			}
		
		if $ML_y7 > $ML_y6 {
			generate double `wp2'= (`prob_leftb'^`gamma') 				
			generate double `wp1'= 1-`wp2' 
			
			}
				* weighted probabilities 
		
		
		if $ML_y8 > $ML_y9 {
			generate double `wp3'= (`prob_righta'^`gamma') 				
			generate double `wp4'= 1-`wp3' 
			
			}
		
		if $ML_y9 > $ML_y8 {
			generate double `wp4'= (`prob_rightb'^`gamma') 				
			generate double `wp3'= 1-`wp4' 
			
			}	

			
		* arguments of the utility function
		
        
		* Left 
		
		generate double `y0' = (1-exp(-`r'*$ML_y6))/`r'
        generate double `y1' = (1-exp(-`r'*$ML_y7))/`r'
		
		* Right
		
        generate double `y2' = (1-exp(-`r'*$ML_y8))/`r'
        generate double `y3' = (1-exp(-`r'*$ML_y9))/`r'
		
		
		replace `y0' = -`y0' if $ML_y6 < 0
        replace `y1' = -`y1' if $ML_y7 < 0
        replace `y2' = -`y2' if $ML_y8 < 0
		replace `y3' = -`y3' if $ML_y9 < 0
		
		
        *  utility (L)
		
        generate double `euL' = (`wp1'*`y0')+(`wp2'*`y1')
		
		*  utility (R)
		
        generate double `euR' = (`wp3'*`y2')+(`wp4'*`y3')
		
		
		* utilities difference and noise specifications
		
        generate double `euDiff' = (`euR'-`euL')/(`noise')
        
		* likelhood
		
        replace `lnf' = ln($cdf( `euDiff')) if $ML_y1==1
        replace `lnf' = ln($cdf(-`euDiff')) if $ML_y1==0

		
    }
end


* define globals 

global cdf "normal"


/// ML_RDT_quiggin+cara+fechner

ml model lf ML_rdu4_fechner_quiqqin_cara (r: select_deep prob_lefta prob_leftb prob_righta prob_rightb prize_lefta prize_leftb prize_righta prize_rightb = ) (gamma: ) (noise: ) if select_deep~=., cluster(id) technique(nr) 
ml maximize, difficult
ml display

estimates store deep41, title (RDU)


/// 42

program define ML_rdu4_fechner_tk_cara

    args lnf r gamma noise
    tempvar select_deep
	tempvar prob_lefta prob_leftb prob_righta prob_rightb
	tempvar prize_lefta prize_leftb prize_righta prize_rightb
	tempvar y0 y1 y2 y3 
	tempvar wp1 wp2 wp3 wp4
    tempvar euL euR euDiff 

    quietly {
	
        * initial  
		
		gen int `select_deep' = $ML_y1
		
       * setup
	   
	   * probabilities (L)
	   
        generate double `prob_lefta' = $ML_y2
        generate double `prob_leftb' = $ML_y3
		
	   * probabilities (R)
	   
        generate double `prob_righta' = $ML_y4
        generate double `prob_rightb' = $ML_y5
		
		
		* weighted probabilities 
		
		
		if $ML_y6 > $ML_y7 {
			generate double `wp1'= (`prob_lefta'^`gamma')/(`prob_lefta'^`gamma' + (1-`prob_lefta')^`gamma')^(1/`gamma')				
			generate double `wp2'= 1-`wp1' 
			
			}
		
		if $ML_y7 > $ML_y6 {
			generate double `wp2'= (`prob_leftb'^`gamma')/(`prob_leftb'^`gamma' + (1-`prob_leftb')^`gamma')^(1/`gamma') 				
			generate double `wp1'= 1-`wp2' 
			
			}
				* weighted probabilities 
		
		
		if $ML_y8 > $ML_y9 {
			generate double `wp3'= (`prob_righta'^`gamma')/(`prob_righta'^`gamma' + (1-`prob_righta')^`gamma')^(1/`gamma') 				
			generate double `wp4'= 1-`wp3' 
			
			}
		
		if $ML_y9 > $ML_y8 {
			generate double `wp4'= (`prob_rightb'^`gamma')/(`prob_rightb'^`gamma' + (1-`prob_rightb')^`gamma')^(1/`gamma') 				
			generate double `wp3'= 1-`wp4' 
			
			}	

			
		* arguments of the utility function
		
        
		* Left 
		
		generate double `y0' = (1-exp(-`r'*$ML_y6))/`r'
        generate double `y1' = (1-exp(-`r'*$ML_y7))/`r'
		
		* Right
		
        generate double `y2' = (1-exp(-`r'*$ML_y8))/`r'
        generate double `y3' = (1-exp(-`r'*$ML_y9))/`r'
		
		
		replace `y0' = -`y0' if $ML_y6 < 0
        replace `y1' = -`y1' if $ML_y7 < 0
        replace `y2' = -`y2' if $ML_y8 < 0
		replace `y3' = -`y3' if $ML_y9 < 0
		
		
        *  utility (L)
		
        generate double `euL' = (`wp1'*`y0')+(`wp2'*`y1')
		
		*  utility (R)
		
        generate double `euR' = (`wp3'*`y2')+(`wp4'*`y3')
		
		
		* utilities difference and noise specifications
		
        generate double `euDiff' = (`euR'-`euL')/(`noise')
        
		* likelhood
		
        replace `lnf' = ln($cdf( `euDiff')) if $ML_y1==1
        replace `lnf' = ln($cdf(-`euDiff')) if $ML_y1==0

		
    }
end


* define globals 

global cdf "normal"


/// ML_RDT_tk+cara+fechner

ml model lf ML_rdu4_fechner_tk_cara (r: select_deep prob_lefta prob_leftb prob_righta prob_rightb prize_lefta prize_leftb prize_righta prize_rightb = ) (gamma: ) (noise: ) if select_deep~=., cluster(id) technique(nr) 
ml maximize, difficult
ml display

estimates store deep42, title (RDU)


/// 43

program define ML_rdu4_fechner_prelec1_cara

    args lnf r gamma noise
    tempvar select_deep
	tempvar prob_lefta prob_leftb prob_righta prob_rightb
	tempvar prize_lefta prize_leftb prize_righta prize_rightb
	tempvar y0 y1 y2 y3 
	tempvar wp1 wp2 wp3 wp4
    tempvar euL euR euDiff 

    quietly {
	
        * initial  
		
		gen int `select_deep' = $ML_y1
		
       * setup
	   
	   * probabilities (L)
	   
        generate double `prob_lefta' = $ML_y2
        generate double `prob_leftb' = $ML_y3
		
	   * probabilities (R)
	   
        generate double `prob_righta' = $ML_y4
        generate double `prob_rightb' = $ML_y5
		
		
		* weighted probabilities 
		
		
		if $ML_y6 > $ML_y7 {
			generate double `wp1'= exp(-((-ln(`prob_lefta'))^`gamma')) if `prob_lefta' > 0 & `prob_lefta' < 1				
			generate double `wp2'= 1-`wp1' 
			
			}
		
		if $ML_y7 > $ML_y6 {
			generate double `wp2'= exp(-((-ln(`prob_leftb'))^`gamma')) if `prob_leftb' > 0 & `prob_leftb' < 1 				
			generate double `wp1'= 1-`wp2' 
			
			}
				* weighted probabilities 
		
		
		if $ML_y8 > $ML_y9 {
			generate double `wp3'= exp(-((-ln(`prob_righta'))^`gamma')) if `prob_righta' > 0 & `prob_righta' < 1 				
			generate double `wp4'= 1-`wp3' 
			
			}
		
		if $ML_y9 > $ML_y8 {
			generate double `wp4'= exp(-((-ln(`prob_rightb'))^`gamma')) if `prob_rightb' > 0 & `prob_rightb' < 1 				
			generate double `wp3'= 1-`wp4' 
			
			}	

			
		* arguments of the utility function
		
        
		* Left 
		
		generate double `y0' = (1-exp(-`r'*$ML_y6))/`r'
        generate double `y1' = (1-exp(-`r'*$ML_y7))/`r'
		
		* Right
		
        generate double `y2' = (1-exp(-`r'*$ML_y8))/`r'
        generate double `y3' = (1-exp(-`r'*$ML_y9))/`r'
		
		
		replace `y0' = -`y0' if $ML_y6 < 0
        replace `y1' = -`y1' if $ML_y7 < 0
        replace `y2' = -`y2' if $ML_y8 < 0
		replace `y3' = -`y3' if $ML_y9 < 0
		
		
        *  utility (L)
		
        generate double `euL' = (`wp1'*`y0')+(`wp2'*`y1')
		
		*  utility (R)
		
        generate double `euR' = (`wp3'*`y2')+(`wp4'*`y3')
		
		
		* utilities difference and noise specifications
		
        generate double `euDiff' = (`euR'-`euL')/(`noise')
        
		* likelhood
		
        replace `lnf' = ln($cdf( `euDiff')) if $ML_y1==1
        replace `lnf' = ln($cdf(-`euDiff')) if $ML_y1==0

		
    }
end


* define globals

global cdf "normal"


/// ML_RDT_prelec1+cara+fechner

ml model lf ML_rdu4_fechner_prelec1_cara (r: select_deep prob_lefta prob_leftb prob_righta prob_rightb prize_lefta prize_leftb prize_righta prize_rightb = ) (gamma: ) (noise: ) if select_deep~=., cluster(id) technique(nr) 
ml maximize, difficult
ml display

estimates store deep43, title (RDU)


/// 44

program define ML_rdu4_fechner_prelec2_cara

    args lnf r eta phi noise
    tempvar select_deep
	tempvar prob_lefta prob_leftb prob_righta prob_rightb
	tempvar prize_lefta prize_leftb prize_righta prize_rightb
	tempvar y0 y1 y2 y3 
	tempvar wp1 wp2 wp3 wp4
    tempvar euL euR euDiff 

    quietly {
	
        * initial  
		
		gen int `select_deep' = $ML_y1
		
       * setup
	   
	   * probabilities (L)
	   
        generate double `prob_lefta' = $ML_y2
        generate double `prob_leftb' = $ML_y3
		
	   * probabilities (R)
	   
        generate double `prob_righta' = $ML_y4
        generate double `prob_rightb' = $ML_y5
		
		
		* weighted probabilities 
		
		
		if $ML_y6 > $ML_y7 {
			generate double `wp1'= exp((-`eta')*((-ln(`prob_lefta'))^`phi')) if `prob_lefta' > 0 & `prob_lefta' < 1				
			generate double `wp2'= 1-`wp1' 
			
			}
		
		if $ML_y7 > $ML_y6 {
			generate double `wp2'= exp((-`eta')*((-ln(`prob_leftb'))^`phi')) if `prob_leftb' > 0 & `prob_leftb' < 1 				
			generate double `wp1'= 1-`wp2' 
			
			}
				* weighted probabilities 
		
		
		if $ML_y8 > $ML_y9 {
			generate double `wp3'= exp((-`eta')*((-ln(`prob_righta'))^`phi')) if `prob_righta' > 0 & `prob_righta' < 1 				
			generate double `wp4'= 1-`wp3' 
			
			}
		
		if $ML_y9 > $ML_y8 {
			generate double `wp4'= exp((-`eta')*((-ln(`prob_rightb'))^`phi')) if `prob_rightb' > 0 & `prob_rightb' < 1 				
			generate double `wp3'= 1-`wp4' 
			
			}		

			
		* arguments of the utility function
		
        
		* Left 
		
		generate double `y0' = (1-exp(-`r'*$ML_y6))/`r'
        generate double `y1' = (1-exp(-`r'*$ML_y7))/`r'
		
		* Right
		
        generate double `y2' = (1-exp(-`r'*$ML_y8))/`r'
        generate double `y3' = (1-exp(-`r'*$ML_y9))/`r'
		
		
		replace `y0' = -`y0' if $ML_y6 < 0
        replace `y1' = -`y1' if $ML_y7 < 0
        replace `y2' = -`y2' if $ML_y8 < 0
		replace `y3' = -`y3' if $ML_y9 < 0
		
		
        *  utility (L)
		
        generate double `euL' = (`wp1'*`y0')+(`wp2'*`y1')
		
		*  utility (R)
		
        generate double `euR' = (`wp3'*`y2')+(`wp4'*`y3')
		
		
		* utilities difference and noise specifications
		
        generate double `euDiff' = (`euR'-`euL')/(`noise')
        
		* likelhood
		
        replace `lnf' = ln($cdf( `euDiff')) if $ML_y1==1
        replace `lnf' = ln($cdf(-`euDiff')) if $ML_y1==0

		
    }
end


* define globals 

global cdf "normal"


/// ML_RDT_prelec2+cara+fechner

ml model lf ML_rdu4_fechner_prelec2_cara (r: select_deep prob_lefta prob_leftb prob_righta prob_rightb prize_lefta prize_leftb prize_righta prize_rightb = )(eta: ) (phi: ) (noise: ) if select_deep~=., cluster(id) technique(nr) 
ml maximize, difficult
ml display

estimates store deep44, title (RDU)


/// 45

program define ML_rdu4_fechner_quiqqin_expo

    args lnf r gamma alpha noise
    tempvar select_deep
	tempvar prob_lefta prob_leftb prob_righta prob_rightb
	tempvar prize_lefta prize_leftb prize_righta prize_rightb
	tempvar y0 y1 y2 y3 
	tempvar wp1 wp2 wp3 wp4
    tempvar euL euR euDiff 

    quietly {
	
        * initial  
		
		gen int `select_deep' = $ML_y1
		
       * setup
	   
	   * probabilities (L)
	   
        generate double `prob_lefta' = $ML_y2
        generate double `prob_leftb' = $ML_y3
		
	   * probabilities (R)
	   
        generate double `prob_righta' = $ML_y4
        generate double `prob_rightb' = $ML_y5
		
		
		* weighted probabilities 
		
		
		if $ML_y6 > $ML_y7 {
			generate double `wp1'= (`prob_lefta'^`gamma') 				
			generate double `wp2'= 1-`wp1' 
			
			}
		
		if $ML_y7 > $ML_y6 {
			generate double `wp2'= (`prob_leftb'^`gamma') 				
			generate double `wp1'= 1-`wp2' 
			
			}
				* weighted probabilities 
		
		
		if $ML_y8 > $ML_y9 {
			generate double `wp3'= (`prob_righta'^`gamma') 				
			generate double `wp4'= 1-`wp3' 
			
			}
		
		if $ML_y9 > $ML_y8 {
			generate double `wp4'= (`prob_rightb'^`gamma') 				
			generate double `wp3'= 1-`wp4' 
			
			}		

			
		* arguments of the utility function
		
        
		* Left 
		
		generate double `y0' = (1-exp(-`alpha'*(($ML_y6)^(1-`r'))))/`alpha'
        generate double `y1' = (1-exp(-`alpha'*(($ML_y7)^(1-`r'))))/`alpha'
		
		* Right
		
        generate double `y2' = (1-exp(-`alpha'*(($ML_y8)^(1-`r'))))/`alpha'
        generate double `y3' = (1-exp(-`alpha'*(($ML_y9)^(1-`r'))))/`alpha'
		
		
		replace `y0' = -`y0' if $ML_y6 < 0
        replace `y1' = -`y1' if $ML_y7 < 0
        replace `y2' = -`y2' if $ML_y8 < 0
		replace `y3' = -`y3' if $ML_y9 < 0
		
		
        *  utility (L)
		
        generate double `euL' = (`wp1'*`y0')+(`wp2'*`y1')
		
		*  utility (R)
		
        generate double `euR' = (`wp3'*`y2')+(`wp4'*`y3')
		
		
		* utilities difference and noise specifications
		
        generate double `euDiff' = (`euR'-`euL')/(`noise')
        
		* likelhood
		
        replace `lnf' = ln($cdf( `euDiff')) if $ML_y1==1
        replace `lnf' = ln($cdf(-`euDiff')) if $ML_y1==0

		
    }
end


* define globals 

global cdf "normal"


/// ML_RDT_quiggin+expo+fechner

ml model lf ML_rdu4_fechner_quiqqin_expo (r: select_deep prob_lefta prob_leftb prob_righta prob_rightb prize_lefta prize_leftb prize_righta prize_rightb = ) (gamma: ) (alpha: ) (noise: ) if select_deep~=., cluster(id) technique(nr) 
ml maximize, difficult
ml display

estimates store deep45, title (RDU)


/// 46

program define ML_rdu4_fechner_tk_expo

    args lnf r gamma alpha noise
    tempvar select_deep
	tempvar prob_lefta prob_leftb prob_righta prob_rightb
	tempvar prize_lefta prize_leftb prize_righta prize_rightb
	tempvar y0 y1 y2 y3 
	tempvar wp1 wp2 wp3 wp4
    tempvar euL euR euDiff 

    quietly {
	
        * initial  
		
		gen int `select_deep' = $ML_y1
		
       * setup
	   
	   * probabilities (L)
	   
        generate double `prob_lefta' = $ML_y2
        generate double `prob_leftb' = $ML_y3
		
	   * probabilities (R)
	   
        generate double `prob_righta' = $ML_y4
        generate double `prob_rightb' = $ML_y5
		
		
		* weighted probabilities 
		
		
		if $ML_y6 > $ML_y7 {
			generate double `wp1'= (`prob_lefta'^`gamma')/(`prob_lefta'^`gamma' + (1-`prob_lefta')^`gamma')^(1/`gamma')				
			generate double `wp2'= 1-`wp1' 
			
			}
		
		if $ML_y7 > $ML_y6 {
			generate double `wp2'= (`prob_leftb'^`gamma')/(`prob_leftb'^`gamma' + (1-`prob_leftb')^`gamma')^(1/`gamma') 				
			generate double `wp1'= 1-`wp2' 
			
			}
				* weighted probabilities 
		
		
		if $ML_y8 > $ML_y9 {
			generate double `wp3'= (`prob_righta'^`gamma')/(`prob_righta'^`gamma' + (1-`prob_righta')^`gamma')^(1/`gamma') 				
			generate double `wp4'= 1-`wp3' 
			
			}
		
		if $ML_y9 > $ML_y8 {
			generate double `wp4'= (`prob_rightb'^`gamma')/(`prob_rightb'^`gamma' + (1-`prob_rightb')^`gamma')^(1/`gamma') 				
			generate double `wp3'= 1-`wp4' 
			
			}	

			
		* arguments of the utility function
		
        
		* Left 
		
		generate double `y0' = (1-exp(-`alpha'*(($ML_y6)^(1-`r'))))/`alpha'
        generate double `y1' = (1-exp(-`alpha'*(($ML_y7)^(1-`r'))))/`alpha'
		
		* Right
		
        generate double `y2' = (1-exp(-`alpha'*(($ML_y8)^(1-`r'))))/`alpha'
        generate double `y3' = (1-exp(-`alpha'*(($ML_y9)^(1-`r'))))/`alpha'
		
		
		replace `y0' = -`y0' if $ML_y6 < 0
        replace `y1' = -`y1' if $ML_y7 < 0
        replace `y2' = -`y2' if $ML_y8 < 0
		replace `y3' = -`y3' if $ML_y9 < 0
		
		
        *  utility (L)
		
        generate double `euL' = (`wp1'*`y0')+(`wp2'*`y1')
		
		*  utility (R)
		
        generate double `euR' = (`wp3'*`y2')+(`wp4'*`y3')
		
		
		* utilities difference and noise specifications
		
        generate double `euDiff' = (`euR'-`euL')/(`noise')
        
		* likelhood
		
        replace `lnf' = ln($cdf( `euDiff')) if $ML_y1==1
        replace `lnf' = ln($cdf(-`euDiff')) if $ML_y1==0

		
    }
end


* define globals global cdf “normal”

global cdf "normal"


/// ML_RDT_tk+expo+fechner

ml model lf ML_rdu4_fechner_tk_expo (r: select_deep prob_lefta prob_leftb prob_righta prob_rightb prize_lefta prize_leftb prize_righta prize_rightb = ) (gamma: ) (alpha: ) (noise: ) if select_deep~=., cluster(id) technique(nr) 
ml maximize, difficult
ml display

estimates store deep46, title (RDU)


/// 47

program define ML_rdu4_fechner_prelec1_expo

    args lnf r gamma alpha noise
    tempvar select_deep
	tempvar prob_lefta prob_leftb prob_righta prob_rightb
	tempvar prize_lefta prize_leftb prize_righta prize_rightb
	tempvar y0 y1 y2 y3 
	tempvar wp1 wp2 wp3 wp4
    tempvar euL euR euDiff 

    quietly {
	
        * initial  
		
		gen int `select_deep' = $ML_y1
		
       * setup
	   
	   * probabilities (L)
	   
        generate double `prob_lefta' = $ML_y2
        generate double `prob_leftb' = $ML_y3
		
	   * probabilities (R)
	   
        generate double `prob_righta' = $ML_y4
        generate double `prob_rightb' = $ML_y5
		
		
		* weighted probabilities 
		
		
		if $ML_y6 > $ML_y7 {
			generate double `wp1'= exp(-((-ln(`prob_lefta'))^`gamma')) if `prob_lefta' > 0 & `prob_lefta' < 1				
			generate double `wp2'= 1-`wp1' 
			
			}
		
		if $ML_y7 > $ML_y6 {
			generate double `wp2'= exp(-((-ln(`prob_leftb'))^`gamma')) if `prob_leftb' > 0 & `prob_leftb' < 1 				
			generate double `wp1'= 1-`wp2' 
			
			}
				* weighted probabilities 
		
		
		if $ML_y8 > $ML_y9 {
			generate double `wp3'= exp(-((-ln(`prob_righta'))^`gamma')) if `prob_righta' > 0 & `prob_righta' < 1 				
			generate double `wp4'= 1-`wp3' 
			
			}
		
		if $ML_y9 > $ML_y8 {
			generate double `wp4'= exp(-((-ln(`prob_rightb'))^`gamma')) if `prob_rightb' > 0 & `prob_rightb' < 1 				
			generate double `wp3'= 1-`wp4' 
			
			}	

			
		* arguments of the utility function
		
        
		* Left 
		
		generate double `y0' = (1-exp(-`alpha'*(($ML_y6)^(1-`r'))))/`alpha'
        generate double `y1' = (1-exp(-`alpha'*(($ML_y7)^(1-`r'))))/`alpha'
		
		* Right
		
        generate double `y2' = (1-exp(-`alpha'*(($ML_y8)^(1-`r'))))/`alpha'
        generate double `y3' = (1-exp(-`alpha'*(($ML_y9)^(1-`r'))))/`alpha'
		
		
		replace `y0' = -`y0' if $ML_y6 < 0
        replace `y1' = -`y1' if $ML_y7 < 0
        replace `y2' = -`y2' if $ML_y8 < 0
		replace `y3' = -`y3' if $ML_y9 < 0
		
		
        *  utility (L)
		
        generate double `euL' = (`wp1'*`y0')+(`wp2'*`y1')
		
		*  utility (R)
		
        generate double `euR' = (`wp3'*`y2')+(`wp4'*`y3')
		
		
		* utilities difference and noise specifications
		
        generate double `euDiff' = (`euR'-`euL')/(`noise')
        
		* likelhood
		
        replace `lnf' = ln($cdf( `euDiff')) if $ML_y1==1
        replace `lnf' = ln($cdf(-`euDiff')) if $ML_y1==0

		
    }
end


* define globals 

global cdf "normal"


/// ML_RDT_prelec1+expo+fechner

ml model lf ML_rdu4_fechner_prelec1_expo (r: select_deep prob_lefta prob_leftb prob_righta prob_rightb prize_lefta prize_leftb prize_righta prize_rightb = ) (gamma: ) (alpha: ) (noise: ) if select_deep~=., cluster(id) technique(nr) 
ml maximize, difficult
ml display

estimates store deep47, title (RDU)


/// 48

program define ML_rdu4_fechner_prelec2_expo

    args lnf r eta phi alpha noise
    tempvar select_deep
	tempvar prob_lefta prob_leftb prob_righta prob_rightb
	tempvar prize_lefta prize_leftb prize_righta prize_rightb
	tempvar y0 y1 y2 y3 
	tempvar wp1 wp2 wp3 wp4
    tempvar euL euR euDiff 

    quietly {
	
        * initial  
		
		gen int `select_deep' = $ML_y1
		
       * setup
	   
	   * probabilities (L)
	   
        generate double `prob_lefta' = $ML_y2
        generate double `prob_leftb' = $ML_y3
		
	   * probabilities (R)
	   
        generate double `prob_righta' = $ML_y4
        generate double `prob_rightb' = $ML_y5
		
		
		* weighted probabilities 
		
		
		if $ML_y6 > $ML_y7 {
			generate double `wp1'= exp((-`eta')*((-ln(`prob_lefta'))^`phi')) if `prob_lefta' > 0 & `prob_lefta' < 1				
			generate double `wp2'= 1-`wp1' 
			
			}
		
		if $ML_y7 > $ML_y6 {
			generate double `wp2'= exp((-`eta')*((-ln(`prob_leftb'))^`phi')) if `prob_leftb' > 0 & `prob_leftb' < 1 				
			generate double `wp1'= 1-`wp2' 
			
			}
				* weighted probabilities 
		
		
		if $ML_y8 > $ML_y9 {
			generate double `wp3'= exp((-`eta')*((-ln(`prob_righta'))^`phi')) if `prob_righta' > 0 & `prob_righta' < 1 				
			generate double `wp4'= 1-`wp3' 
			
			}
		
		if $ML_y9 > $ML_y8 {
			generate double `wp4'= exp((-`eta')*((-ln(`prob_rightb'))^`phi')) if `prob_rightb' > 0 & `prob_rightb' < 1 				
			generate double `wp3'= 1-`wp4' 
			
			}		

			
		* arguments of the utility function
		
        
		* Left 
		
		generate double `y0' = (1-exp(-`alpha'*(($ML_y6)^(1-`r'))))/`alpha'
        generate double `y1' = (1-exp(-`alpha'*(($ML_y7)^(1-`r'))))/`alpha'
		
		* Right
		
        generate double `y2' = (1-exp(-`alpha'*(($ML_y8)^(1-`r'))))/`alpha'
        generate double `y3' = (1-exp(-`alpha'*(($ML_y9)^(1-`r'))))/`alpha'
		
		
		replace `y0' = -`y0' if $ML_y6 < 0
        replace `y1' = -`y1' if $ML_y7 < 0
        replace `y2' = -`y2' if $ML_y8 < 0
		replace `y3' = -`y3' if $ML_y9 < 0
		
		
        *  utility (L)
		
        generate double `euL' = (`wp1'*`y0')+(`wp2'*`y1')
		
		*  utility (R)
		
        generate double `euR' = (`wp3'*`y2')+(`wp4'*`y3')
		
		
		* utilities difference and noise specifications
		
        generate double `euDiff' = (`euR'-`euL')/(`noise')
        
		* likelhood
		
        replace `lnf' = ln($cdf( `euDiff')) if $ML_y1==1
        replace `lnf' = ln($cdf(-`euDiff')) if $ML_y1==0

		
    }
end


* define globals global cdf “normal”

global cdf "normal"


/// ML_RDT_prelec2+expo+fechner

ml model lf ML_rdu4_fechner_prelec2_expo (r: select_deep prob_lefta prob_leftb prob_righta prob_rightb prize_lefta prize_leftb prize_righta prize_rightb = ) (eta: ) (phi: ) (alpha: ) (noise: ) if select_deep~=., cluster(id) technique(nr) 
ml maximize, difficult
ml display

estimates store deep48, title (RDU)



*** MIXTURE

/// 1

program define ML_mixed_4

    args lnf alpha beta lambda gamma r kappa
    tempvar select_deep
    tempvar prize_lefta prize_leftb prize_righta prize_rightb 
    tempvar m0 m1 m2 m3 
	tempvar y0 y1 y2 y3
	tempvar prob_lefta prob_leftb prob_righta prob_rightb 
	tempvar euL euR euDiff
	tempvar tmp lnf_eut lnf_pt p1 p2 f1 f2
	
	quietly {

	* initial
			
	generate int `select_deep ' = $ML_y1
	
	
	* probabilities (L)
	
	generate double `prob_lefta' = $ML_y2
    generate double `prob_leftb' = $ML_y3
	
	* probabilities (R)
	
	generate double `prob_righta' = $ML_y4
    generate double `prob_rightb' = $ML_y5	
	
	* monetary prizes (L)
		
	generate double `m0' = $ML_y6
	generate double `m1' = $ML_y7
		
	* monetary right (R)
		
	generate double `m2' = $ML_y8
	generate double `m3' = $ML_y9
	
	
	
	* arguments of the utility function
		  
	* Left 
		
	generate double `y0' = `m0'^`r' 
	generate double `y1' = `m1'^`r' 
		
	* Right
		
	generate double `y2' = `m2'^`r'
	generate double `y3' = `m3'^`r' 
	

	* evaluation
	
	generate double `euL' = (`prob_lefta'*`y0')+(`prob_leftb'*`y1')
    generate double `euR' = (`prob_righta'*`y2')+(`prob_rightb'*`y3')
	
	generate double `euDiff' = `euR' - `euL'
	
	* likelihood
	
	generate double `lnf_eut' = .
    replace `lnf_eut' = ln($cdf( `euDiff')) if $ML_y1==1
    replace `lnf_eut' = ln($cdf(-`euDiff')) if $ML_y1==0
	
	* probability weighting - S function 
    
	generate double `tmp' = (($ML_y2^`gamma')+($ML_y3^`gamma'))
    replace `prob_lefta' = ($ML_y2^`gamma')/`tmp'
    replace `prob_leftb' = ($ML_y3^`gamma')/`tmp'
	
    replace `tmp' = (($ML_y4^`gamma')+($ML_y5^`gamma'))
    replace `prob_righta' = ($ML_y4^`gamma')/`tmp'
    replace `prob_rightb' = ($ML_y5^`gamma')/`tmp'
	
	
	* value function (L)
    
	replace `y0' = ( $ML_y6)^(`alpha') if `m0'>=0
    replace `y0' = -`lambda'*(-$ML_y6)^(`beta') if `m0'<0
	
    replace `y1' = ( $ML_y7)^(`alpha') if `m1'>=0
    replace `y1' = -`lambda'*(-$ML_y7)^(`beta') if `m1'<0
		
	
	* value function (R)
    
	replace `y2' = ( $ML_y8)^(`alpha') if `m2'>=0
    replace `y2' = -`lambda'*(-$ML_y8)^(`beta') if `m2'<0
	
    replace `y3' = ( $ML_y9)^(`alpha') if `m3'>=0
    replace `y3' = -`lambda'*(-$ML_y9)^(`beta') if `m3'<0
	
	* evaluation
	
	replace `euL' = (`prob_lefta'*`y0')+(`prob_leftb'*`y1')
	replace `euR' = (`prob_righta'*`y2')+(`prob_rightb'*`y3')
	
	replace `euDiff' = `euR' - `euL'
	
	
    * likelihood
    
	generate double `lnf_pt' = .
	replace `lnf_pt' = ln($cdf( `euDiff')) if $ML_y1==1
	replace `lnf_pt' = ln($cdf(-`euDiff')) if $ML_y1==0
	
	
	* transform back from log contributions
    
	generate double `f1' = exp(`lnf_eut')
	generate double `f2' = exp(`lnf_pt')
	
    * mixture probabilities
    
	generate double `p1' = 1/(1+exp(`kappa'))
	generate double `p2' = exp(`kappa')/(1+exp(`kappa'))

	* log 
	
    replace `lnf' = ln(`p1'*`f1' + `p2'*`f2')


	}
end

global cdf "normal"


/// ML_EUT with no errors

ml model lf ML_mixed_4 (alpha: select_deep prob_lefta prob_leftb prob_righta prob_rightb prize_lefta prize_leftb prize_righta prize_rightb = ) (beta: ) (lambda: ) (gamma: ) (r: ) (kappa: ) if select_deep~=., cluster(id) technique(nr)
ml maximize, difficult 
ml display

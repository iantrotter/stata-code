capture program drop park
program define park
	*! 0.1 Ian M. Trotter 2012-11-30
	* Park test for heteroscedasticity
	version 12.0
	tempvar u lnu2
	qui regress `0'
	qui predict `u',resid
	qui gen `lnu2'=ln(`u'^2)
	display "H0: Constant variance"
	while "`2'" != "" {
		tempvar lnx
		qui gen `lnx'=ln(`2')
		qui reg `lnu2' `lnx'
		qui test `lnx'=0
		display "   `2'"
		display "     p-value = " %6.4g r(p) ""
		mac shift
	}
end

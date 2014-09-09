capture program drop graphicalanalysis
program define graphicalanalysis
	*! 0.1 Ian M. Trotter 2012-11-30
	version 12.0
	tempvar u u2 y_est
	local depvname="`1'"
	qui regress `0' // run regression
	qui predict `u',resid // get residuals
	qui predict `y_est',xb // get fitted values
	qui gen `u2'=`u'^2 // get squared of residuals
	qui label variable `u2' "Residual squared"
	qui graph twoway (scatter `u2' `y_est'), name(y_est,replace) title("Residual squared vs. model prediction")
	while "`2'" != "" {
		qui graph twoway (scatter `u2' `2'), name(`2', replace) title("Residual squared vs. `2'")
		mac shift
	}
end

capture program drop koenkerbassett
program define koenkerbassett
	*! 0.1 Ian M. Trotter 2012-12-01
	version 12.0
	syntax varlist	
	tempvar u u2 y_est y_est2
	qui regress `varlist'
	predict `u',resid
	gen `u2' = `u'^2
	predict `y_est',xb
	gen `y_est2' = `y_est'^2
	qui regress `u2' `y_est2'
	qui test `y_est2'=0
	display "H0: Homoscedasticity"
	display "Probability for H0 being true: " r(p)
end

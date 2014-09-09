capture program drop spearmanhomoscedasticity
program define spearmanhomoscedasticity
	*! 0.1 Ian M. Trotter 2012-12-01
	version 12.0
	syntax varlist
	tempvar u absu y_est
	tempname rho p result i
	qui regress `varlist'
	predict `y_est',xb
	predict `u',resid
	gen `absu' = abs(`u')
	qui spearman `absu' `y_est' `varlist'
	matrix `rho'=r(Rho)
	matrix `p'=r(P)
	display "Spearman Homoscedasticity Test"
	display "H0: Homoscedasticity"
	display " Variable: Fitted y"
	display "   Correlation Coefficient = " %09.3g `rho'[1,2]
	display "   P-Value =                 " %09.3g `p'[1,2]
	scalar `i'=1
	foreach v in `absu' `y_est' `varlist' {
		if `i' >= 4 {
			display " Variable: `v'"
			display "   Correlation coefficient = " %09.3g `rho'[1,`i']
			display "   P-Value =                 " %09.3g `p'[1,`i']
		}
		scalar `i' = `i' + 1
	}
end

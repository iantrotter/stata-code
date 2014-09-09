capture program drop auxreg
program define auxreg
	*! 0.1 Ian M. Trotter 2012-12-01
	// Auxiliary regressions for detection of multicolinearity
	// If an R2 is higher than the R2 of the original model,
	// you should be scared of multicolinearity
	version 12.0
	syntax varlist
	display "Auxiliary Regressions of Each Variable against all others"
	display "  If any R-squared is greater than the R-squared of 
	display "  the original model, multicolinearity could be a "
	display "  problem in your dataset."
	display ""
	foreach v in `varlist' {
		local othervars = subinstr("`varlist'","`v'","",.)
		qui reg `v' `othervars'
		display "   `v'"
		display "     R-squared = " %6.4g e(r2)
	}
end

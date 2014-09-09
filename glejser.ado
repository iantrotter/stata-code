capture program drop glejser
program define glejser
	*! 0.1 Ian M. Trotter 2012-11-30
	version 12.0
	tempvar u absu
	qui regress `0'
	qui predict `u',resid
	qui gen `absu'=abs(`u')
	display "Glejser Test for Heteroscedasticity"
	display " Dependent variable: `1'"
	while "`2'" != "" {
		tempvar x sqrtx invx invsqrtx
		tempname p1 p2 p3 p4
		qui gen `x'=`2'
		qui gen `sqrtx'=sqrt(`2')
		qui gen `invx'=1/`2'
		qui gen `invsqrtx'=1/sqrt(`2')

		qui reg `absu' `x'
		qui test `x'=0
		scalar `p1'=r(p)

		qui reg `absu' `sqrtx'
		qui test `sqrtx'=0
		scalar `p2'=r(p)

		qui reg `absu' `invx'
		qui test `invx'=0
		scalar `p3'=r(p)
		
		qui reg `absu' `invsqrtx'
		qui test `invsqrtx'=0
		scalar `p4'=r(p)

		display "  Independent variable: `2'"
		display "   abs(residual) vs. `2'"
		display "    P-value = " %6.4g `p1'
		display "   abs(residual) vs. sqrt(`2')"
		display "    P-value = " %6.4g `p2'
		display "   abs(residual) vs. 1/`2'"
		display "    P-value = " %6.4g `p3'
		display "   abs(residual) vs. 1/sqrt(`2')"
		display "    P-value = " %6.4g `p4'
		mac shift
	}
end

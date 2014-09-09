capture program drop goldfeldquandt
program define goldfeldquandt
	*! 0.1 Ian M. Trotter 2012-12-01
	version 12.0
	syntax varlist,sortby(string) censor(integer)
	sort `sortby'
	tempvar t
	tempname n n1 n2 df_r1 df_r2 sqr1 sqr2 lambda
	qui summarize `sortby'
	scalar `n' = r(N)
	scalar `n1' = round((`n'-`censor')/2)
	scalar `n2' = `n'-`n1'
	gen `t' = _n
	qui regress `varlist' if `t' <= `n1'
	scalar `df_r1' = e(df_r)
	scalar `sqr1' = e(rss)
	qui regress `varlist' if `t' > `n2'
	scalar `df_r2' = e(df_r)
	scalar `sqr2' = e(rss)
	scalar `lambda' = (`sqr2'/`df_r2')/(`sqr1'/`df_r1')
	display "H0: Homoscedasticity"
	display " Probability for H0 being true: " Ftail(`df_r2',`df_r1',`lambda')
end

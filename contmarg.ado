capture program drop contamrg
program define contmarg
	*! 0.1 Ian M. Trotter 2012-12-01
	// Evaluate the marginal contribution of adding
	// more variables to the model. The prob is the
	// probability that the coefficients are zero.
	// Alternatively: test v1==v2==0
	version 12.0
	syntax varlist,newvars(varlist)
	qui regress `varlist' `newvars'
	scalar r2_new=e(rss)
	
	scalar gl1=e(df_r)
	scalar k=e(df_m)
	scalar n_obs=e(df_r)
	qui regress `varlist'
	scalar r2_old=e(rss)
	scalar m_added=k-e(df_m)
	scalar f_val = ((r2_new-r2_old)/m_added)/((1-r2_new)/n_obs)
	display "F(" m_added "," n_obs ") = " f_val
	display "Prob > F = " Ftail(m_added,n_obs,f_val)
end

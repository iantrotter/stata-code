capture program drop chow
program define chow
	*! 0.1 Ian M. Trotter 2012-12-01
	version 12.0
	syntax varlist,censordummy(varname)
	qui regress `varlist'
	scalar s1=e(rss)
	scalar gl1=e(df_r)
	scalar k=e(df_m)+1
	qui regress `varlist' if !`censordummy'
	scalar s2=e(rss)
	scalar gl2=e(df_r)
	qui regress `varlist' if `censordummy'
	scalar s3=e(rss)
	scalar gl3=e(df_r)
	scalar s4=s2+s3
	scalar gl4=gl2+gl3
	scalar s5=s1-s4
	scalar fstat=(s5/k)/(s4/gl4)
	display "Chow Test for Structural Break"
	display "  H0: No structural break"
	display "    p-value: " Ftail(k,gl4,fstat)
end

{smcl}
{* *! version 1.2.0  02jun2011}{...}
{findalias asfradohelp}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] help" "help help"}{...}
{viewerjumpto "Syntax" "glejser##syntax"}{...}
{viewerjumpto "Description" "glejser##description"}{...}
{viewerjumpto "Options" "glejser##options"}{...}
{viewerjumpto "Remarks" "glejser##remarks"}{...}
{viewerjumpto "Examples" "glejser##examples"}{...}
{title:Title}

{phang}
{bf:glejser} {hline 2} Glejser Test for Heteroscedasticity


{marker syntax}{...}
{title:Syntax}

{p 8 17 2}
{cmdab:glejser}
{depvar}
[{indepvars}]

{marker description}{...}
{title:Description}

{pstd}
{cmd:glejser} performs the Glejser test for heteroscedasticity: regresses the absolute value of the
residual against each independent variable, the inverse of each independent variable, the square root
of each independent variable and the inverse of the square root of each independent variable. The output
reports the p-value of the coefficient. A low p-value gives reason to reject the null hypothesis of
constant variance.

{marker examples}{...}
{title:Examples}

{phang}{cmd:. webuse auto, clear}{p_end}
{phang}{cmd:. glejser mpg weight price length turn headroom}{p_end}


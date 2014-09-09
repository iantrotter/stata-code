{smcl}
{* *! version 1.2.0  02jun2011}{...}
{findalias asfradohelp}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] help" "help help"}{...}
{viewerjumpto "Syntax" "goldfeldquandt##syntax"}{...}
{viewerjumpto "Description" "goldfeldquandt##description"}{...}
{viewerjumpto "Options" "goldfeldquandt##options"}{...}
{viewerjumpto "Remarks" "goldfeldquandt##remarks"}{...}
{viewerjumpto "Examples" "goldfeldquandt##examples"}{...}
{title:Title}

{phang}
{bf:goldfeldquandt} {hline 2} Goldfeld-Quandt Test for Heteroscedasticity


{marker syntax}{...}
{title:Syntax}

{p 8 17 2}
{cmdab:goldfeldquandt}
{depvar}
[{indepvars}], 
sortby({sortvar})
censor({#censor})

{marker description}{...}
{title:Description}

{pstd}
{cmd:goldfeldquandt} performs the Goldfeld-Quandt test for heteroscedasticity. First specify the dependent
and independent variables of your regression, the observations will be sorted by {sortvar} and the {#censor} 
final observations will be censored for the test. It is traditionally considered adequate to censor approximately
one third of the observations. The null hypothesis of the test is that the variance is constant.

{marker examples}{...}
{title:Examples}

{phang}{cmd:. webuse auto, clear}{p_end}
{phang}{cmd:. goldfeldquandt mpg weight,sortby(weight) censor(24)}{p_end}


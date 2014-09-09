{smcl}
{* *! version 1.2.0  02jun2011}{...}
{findalias asfradohelp}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] help" "help help"}{...}
{viewerjumpto "Syntax" "park##syntax"}{...}
{viewerjumpto "Description" "park##description"}{...}
{viewerjumpto "Options" "park##options"}{...}
{viewerjumpto "Remarks" "park##remarks"}{...}
{viewerjumpto "Examples" "park##examples"}{...}
{title:Title}

{phang}
{bf:park} {hline 2} Park Test for Heteroscedasticity


{marker syntax}{...}
{title:Syntax}

{p 8 17 2}
{cmdab:park}
{depvar}
[{indepvars}]

{marker description}{...}
{title:Description}

{pstd}
{cmd:park} performs the Park heteroscedasticity test for each of the independent variables
{indepvars} when {depvar} is regressed against {indepvars}. The null hypothesis is that the variance is constant.


{marker examples}{...}
{title:Examples}

{phang}{cmd:. webuse auto, clear}{p_end}
{phang}{cmd:. park mpg weight price}{p_end}


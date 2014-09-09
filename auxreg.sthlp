{smcl}
{* *! version 1.2.0  02jun2011}{...}
{findalias asfradohelp}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] help" "help help"}{...}
{viewerjumpto "Syntax" "auxreg##syntax"}{...}
{viewerjumpto "Description" "auxreg##description"}{...}
{viewerjumpto "Options" "auxreg##options"}{...}
{viewerjumpto "Remarks" "auxreg##remarks"}{...}
{viewerjumpto "Examples" "auxreg##examples"}{...}
{title:Title}

{phang}
{bf:auxreg} {hline 2} Auxiliary Regressions for Detection of Multicolinearity


{marker syntax}{...}
{title:Syntax}

{p 8 17 2}
{cmdab:auxreg}
[{indepvars}]

{marker description}{...}
{title:Description}

{pstd}
{cmd:auxreg} performs a regression of each variable in {indepvars} against all of the other 
variables in {indepvars} and reports the R^2 regression statistic. If the R^2 statistic of
any of the regressions is greater than the R^2 statistic of the original regression, then
multicolinearity in your dataset may represent a problem.

{marker examples}{...}
{title:Examples}

{phang}{cmd:. webuse auto, clear}{p_end}
{phang}{cmd:. auxreg weight price length turn headroom}{p_end}


{smcl}
{* *! version 1.2.0  02jun2011}{...}
{findalias asfradohelp}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] help" "help help"}{...}
{viewerjumpto "Syntax" "chow##syntax"}{...}
{viewerjumpto "Description" "chow##description"}{...}
{viewerjumpto "Options" "chow##options"}{...}
{viewerjumpto "Remarks" "chow##remarks"}{...}
{viewerjumpto "Examples" "chow##examples"}{...}
{title:Title}

{phang}
{bf:chow} {hline 2} Chow Test for Detection of Structural Break


{marker syntax}{...}
{title:Syntax}

{p 8 17 2}
{cmdab:chow}
{depvar}
[{indepvars}],
censordummy({censordummy})

{marker description}{...}
{title:Description}

{pstd}
{cmd:chow} performs the Chow test for detection of a structural break. The null hypothesis is that there is no structural break.
The variable {censordummy} is a binary variable that is used to select sub-groups of the sample for comparison.

{marker examples}{...}
{title:Examples}

{phang}{cmd:. webuse auto, clear}{p_end}
{phang}{cmd:. tabulate foreign, gen(d)}{p_end}
{phang}{cmd:. chow mpg weight,censordummy(d1)}{p_end}

{smcl}
{* *! version 1.2.0  02jun2011}{...}
{findalias asfradohelp}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] help" "help help"}{...}
{viewerjumpto "Syntax" "spearmanhomoscedasticity##syntax"}{...}
{viewerjumpto "Description" "spearmanhomoscedasticity##description"}{...}
{viewerjumpto "Options" "spearmanhomoscedasticity##options"}{...}
{viewerjumpto "Remarks" "spearmanhomoscedasticity##remarks"}{...}
{viewerjumpto "Examples" "spearmanhomoscedasticity##examples"}{...}
{title:Title}

{phang}
{bf:spearmanhomoscedasticity} {hline 2} Spearman Homoscedasticity Test


{marker syntax}{...}
{title:Syntax}

{p 8 17 2}
{cmdab:spearmanhomoscedasticity}
{depvar}
[{indepvars}]

{marker description}{...}
{title:Description}

{pstd}
{cmd:spearmanhomoscedasticity} performs the Spearman test of homoscedasticity.

{marker examples}{...}
{title:Examples}

{phang}{cmd:. webuse auto, clear}{p_end}
{phang}{cmd:. spearmanhomoscedasticity mpg weight price}{p_end}


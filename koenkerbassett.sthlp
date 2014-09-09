{smcl}
{* *! version 1.2.0  02jun2011}{...}
{findalias asfradohelp}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] help" "help help"}{...}
{viewerjumpto "Syntax" "koenkerbassett##syntax"}{...}
{viewerjumpto "Description" "koenkerbassett##description"}{...}
{viewerjumpto "Options" "koenkerbassett##options"}{...}
{viewerjumpto "Remarks" "koenkerbassett##remarks"}{...}
{viewerjumpto "Examples" "koenkerbassett##examples"}{...}
{title:Title}

{phang}
{bf:koenkerbassett} {hline 2} Koenker-Bassett Test for Detection of Heteroscedasticity


{marker syntax}{...}
{title:Syntax}

{p 8 17 2}
{cmdab:koenkerbassett}
{depvar}
[{indepvars}]

{marker description}{...}
{title:Description}

{pstd}
{cmd:koenkerbassett} performs the Koenker-Bassett test for detection of heteroscedasticity.

{marker examples}{...}
{title:Examples}

{phang}{cmd:. webuse auto, clear}{p_end}
{phang}{cmd:. koenkerbassett mpg weight}{p_end}


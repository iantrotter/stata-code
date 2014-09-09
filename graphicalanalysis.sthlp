{smcl}
{* *! version 1.2.0  02jun2011}{...}
{findalias asfradohelp}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] help" "help help"}{...}
{viewerjumpto "Syntax" "graphicalanalysis##syntax"}{...}
{viewerjumpto "Description" "graphicalanalysis##description"}{...}
{viewerjumpto "Options" "graphicalanalysis##options"}{...}
{viewerjumpto "Remarks" "graphicalanalysis##remarks"}{...}
{viewerjumpto "Examples" "graphicalanalysis##examples"}{...}
{title:Title}

{phang}
{bf:graphicalanalysis} {hline 2} Graphical Analysis for Detection of Heteroscedasticity


{marker syntax}{...}
{title:Syntax}

{p 8 17 2}
{cmdab:graphicalanalysis}
{depvar}
[{indepvars}]

{marker description}{...}
{title:Description}

{pstd}
{cmd:graphicalanalysis} first regresses {depvar} against {indepvars}, then produces scatterplots with the
square of the residual on the y-axis, and with the model prediction for {depvar} on the x-axis, and
also one plot for each of the {indepvars} with the dependent variable on the x-axis and the square residual on
the y-axis. If any of the graphics show systematic patterns, the dataset may be affected by heteroscedasticity.

{marker examples}{...}
{title:Examples}

{phang}{cmd:. webuse auto, clear}{p_end}
{phang}{cmd:. graphicalanalysis mpg weight price length turn headroom}{p_end}


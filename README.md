# cTrax-scripts

Series of scripts for assisting with analysis and processing of cTrax tracked data.
At the moment it does what it is supposed to do, and it was coded out of necessity. But it could be done much better, so this will hopefully see a couple of updates very soon.

# TO-DO

* Simplify, Simplify, Simplify.

* Outrageous amount of little crap scripts. Unclear data output. This needs to be streamlined ASAP.

* Need functions, and options, and nothing more. Recode might still be necessary, but everything else could pretty much be done by one file. How about making everything into one SQLite .db file?

* Fix input/output.

## Function of the different scripts:

# Main scripts
*distalyse -  Runs everything! Somehow, framerate must be possible to be added at this level. Otherwise, what’s the point of this script.

distance - Calculates the distance travelled for every frame

# Distance calculations
calculates the distance per second (adding together distance per frame).
*distpersec - Default framerate = 10.
*distpermin - Adds together the distpersec result into distance per minute

At the moment I'm dealing with this in the completely wrong way.
This is stupid, I need to find a way to merge all the different distance parameters.
Ideally ONE way that includes all data (theta, x,y, distperframe,distpersec, and distpermin).
Perhaps in some kind of database format. OR, do all of that in R, based on need?

# Other

* recode.bsh - Shell script for fixing up the weird-ass end of line that results from copying the data straight out of MATLAB by hand. Perhaps this function will be entirely obsolote if can extract the data from MATLAB in a better way. Anyway, need to add THETA immedieatly

# Acknowledgement

Without Kristin Branson and the rest of the cTrax people, there would be no point in having these scripts. In fact, there is barely any reason at the moment, as their MatLAB toolbox is more than good enough. Checkit out by goolgin cTrax.

See http://ctrax.sourceforge.net/ for more information.
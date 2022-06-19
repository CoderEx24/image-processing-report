.EQ
delim $$
.EN
.NH
Images can be combined
.PP
There are a a lot of situations where combining images is desired.
In graphics design,
artists usually create parts of the scene individually and then combine them into a single images.
In the movie industries,
scenes are shot indoors and then superimpose onto a suitable background.
Here, 
discuss methods used to combine images.
.PP
when combining images,
two conditions must be met on those images:-
.IP 1 3
the images must be defined on the same support (i.e. they must have the same dimensions)
.IP 2
the images must take values on the same color space
.NH 2
Combining Images Algebraically
.PP
Since images form a vector space,
one method of combining images is linear combination.
Given the images $f sub n$,
the composite image $f$ can be defined as follows
.EQ
f = sum from i { {c sub i} {f sub i} } 
.EN
where $c sub i$ are constants.
That definition can be further extended if the constants are replaced with real-valued functions $alpha sub i$ as follows
.EQ
f = sum from i { {alpha sub i} {f sub i} }
.EN 
where $alpha sub i$ are real-valued functions, defined on the images' support.
it is clear that the first definition is a special case from the second one,
by defining the functions as constants over the images' support.
in the second definition,
the functions $alpha sub i$ must satisfy two conditions in order for that combination to be well-behaved
.IP 1
$alpha sub i (x, y) >= 0$
.IP 2
$sum from i {alpha sub i} = 1$
.PP
if the functions $alpha sub i$ doesn't satisfy these condtions, then new functions $beta sub i$ can be defined as follows
.EQ
beta sub i = {alpha sub i} over { sum from i { alpha sub i } }
.EN
these new functions will satisfy the conditions.
.PP
the functions $alpha sub i$ are said to form
.I "a partition of unity" .
.PP
If the functions $alpha sub i$ are constant over the domain of the images' support,
this operation is called
.I "mixing the images" .
one particular example is 
.I "cross-dissolving" ,
given 2 images $f$ and $g$,
a sequence of images can be defined as follows
.EQ
h sub t = (1 - t)f + tg
.EN
.EQ
.EN
when $t = 0$, $h sub 0 = f$
when $t = 1$, $h sub 1 = g$
for other values, 
each point of the resulting images is a weighted average from the two other images at the same point.
an example of cross-dissolving is shown in figure 7.1
.NH 2
Combining Images by Decomposing the Domain
.PP
Another way of combining images,
is by putting different parts of different images.
that is,
given a set of images $f sub n$ defined on the same images support $U$,
the image support $U$ is 
.I "decomposed" into
m subsets $U sub 1, U sub 2, ..., U sub m$.
each image of $f sub i$ is associated with a subset of the image support $U sub i$,
so that only that part of that image in $U sub i$ appears in the output image.
.PP
At the first glance,
algebraic combining and combining by domain decomposition seem like two different methods of image combination,
but they are actually the same.
Given a decomposition of the domain $U$ into m subsets,
one can define the following
.I "charactaristic function" 
$chi sub {U sub i}$
.EQ
definition of chi 
.EN

The resulting image can be defined as a linear combination of the images $f sub i$, 
using the functions $chi sub {U sub i}$ as weights.
the functions $chi sub {U sub i}$ defines a (discontinuous) partition of unity of the image support $U$.
.PP
There seems like there are multiple ways of decomposing the domain of images.
but a natural one, 
is to decompose the domain into a 
.I "foreground"
and a 
.I "background" .
The foreground is where the 
.I "main objects"
are located.
and the background serves as a 
.I "visual aid"
for the foreground.
Dividing the image support into a foreground and background has the effect of decomposing the domain into two subsets $U sub f$ and $U sub b$.
the output image can be defined as 
.EQ
definition of image by foreground-background decomposition
.EN
This operation is refered to as
.I "overlaying"
$f sub 1$ on $f sub 2$.
Overlaying can be defined as a partition of unity by the two functions $alpha sub f = chi sub {U sub f}$ and $alpha sub b = 1 - {alpha sub f}$.
.NH 2
Computation of the Opacity Function
.NH 2
Compositing in the Discrete Domain

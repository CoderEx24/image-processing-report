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
t belong to [0, 1]
.EN
when $t = 0$, $h sub 0 = f$
when $t = 1$, $h sub 1 = g$
for other values, 
each point of the resulting images is a weighted average from the two other images at the same point.
an example of cross-dissolving is shown in figure 7.1
.NH 2
Combining Images by Decomposing the Domain
.NH 2
Computation of the Opacity Function
.NH 2
Compositing in the Discrete Domain
.NH 2
Compositing Operations

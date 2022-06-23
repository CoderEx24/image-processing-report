.EQ
delim $$
.EN
.NH
Images can be digital
.PP
Digital images are one of the most useful tools in image processing and related fields.
An understanding of digital images is important for image processing,
computer graphics,
and computer vision.
.NH 2
The Spatial Model
.SH
Continuous Images
.PP
Continuous images are defined as continuous functions $f: U ~ -> ~ C$,
where $U ~ \[u2282] ~ bold roman R sup 2$ is a subset of the Euclidean plane,
and $C$ is a vector space.
It's worth mentioning that
.I continuous
here means
.I nondiscrete ,
unlike it's meaning in calculus books.
The set $U$ is the image's
.I support
and the set of values of $f$ is called the
.I "image color gamut" .
.PP
When $C$ is one-dimensional,
we can geometrically graph the image function as follows
.EQ
G(f) = left { (x, y, z) ~ | ~ (x, y) ~ \[u2208] ~ U ~ and ~ z = f(x, y) right }
.EN
an example of such graph is shown in figure 6.1.
The graph maps each point in the xy plane - which is the image's support,
a height on the z axis corresponding to the intensity at the point.
This kinds of graphs shows some aspects of the image.
For example,
the discontinuous nature of the graph corresponds to the rapid changes in the image's intensity.
Such graphs are also useful in computer vision.
.SH 
Image Representation
.PP


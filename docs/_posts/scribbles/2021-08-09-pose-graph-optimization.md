---
layout: post
title:  "Understanding Pose Graph Optimization"
date:   2021-08-09 19:44:00 +0530
blurb: ""
og_image: /assets/img/content/placeholder-img/Banner.jpg
category: ""
---

<img src="{{ "/assets/img/content/placeholder-img/Banner.jpg" | absolute_url }}" alt="bay" class="post-pic"/>
<br />
<br />


#### Classification of SLAM
SLAM techniques can be classified into two groups: *Filtering* and *Smoothing*

- **Filtering** is an online state estimation problem where only the **latest** measurements are used for updating the state. Methods include Extended Kalman Filter (*EKF*) and Particle Filter (*PF*)
- **Smoothing** estimates the full robot trajectory from the **complete** set of measurements (not just the latest). Methods include Factor Graph Optimization or more specifically Pose Graph Optimization (*PGO*)


#### What is Graph SLAM
A graph-based SLAM approach constructs a simplified estimation problem by abstracting the raw sensor measurements. These raw measurements are replaced by the edges in the graph which can then be seen as "virtual measurements".


#### What is Pose Graph Optimization
The objective of pose graph optimization is to estimate robot trajectory (collection of poses) from pairwise relative measurements. From these relative measurements, we infer the odometric constraints and loop closing constraints, which form the edges of the graph.

PGO is a hard non-convex optimization problem. The state-of-the-art solvers use iterative optimization techniques.


### References
#### Studied
- [YouTube: Understanding SLAM Using Pose Graph Optimization](https://youtu.be/saVZtgPyyJQ)
- [Case Study: Pose graph optimization](https://censi.science/pub/research/2013-mole2d-slides.pdf)
- [Medium: The what and why of GRAPH SLAM](https://garimanishad.medium.com/everything-you-need-to-know-about-graph-slam-7f6f567f1a31)
- [Macenski, "SLAM Toolbox: SLAM for the dynamic world"](https://joss.theoj.org/papers/10.21105/joss.02783)


#### To Study
- [Grisetti, "A Tutorial on Graph-Based SLAM"](http://www2.informatik.uni-freiburg.de/~stachnis/pdf/grisetti10titsmag.pdf)
- [Thrun, "The GraphSLAM Algorithm with Applications to Large-Scale Mapping of Urban Structures"](http://robots.stanford.edu/papers/thrun.graphslam.pdf)




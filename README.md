

[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.3715576.svg)](https://doi.org/10.5281/zenodo.3715576)
[![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/jorvlan/open-visualizations/master)
# open-visualizations

If you use this repository for your research, please cite it, thank you.

<pre>
van Langen, J. (2020). Open-visualizations in R and Python. 
<a href="https://github.com/jorvlan/open-visualizations">https://github.com/jorvlan/open-visualizations</a>
</pre>

This repository has been cited by:
<pre>
- Kuhrt, D., et al., (2020). An immersive first-person navigation task for 
    abstract knowledge acquisition. 
    <b>bioRxiv</b>. <a href="https://www.biorxiv.org/content/10.1101/2020.07.17.208900v1">https://www.biorxiv.org/content/10.1101/2020.07.17.208900v1</a>
- Hatano, A., et al., (2020).
    Thinking about thinking: People Underestimate Intrinsically Motivating Experiences of Waiting
    <b>PsyArXiv</b>. <a href="https://psyarxiv.com/r6mde">https://psyarxiv.com/r6mde</a>
- Medel, V., et al., (2020). 
    Complexity and 1/f slope jointly reflect cortical states across different E/I balances. 
    <b>bioRxiv</b>. <a href="https://doi.org/10.1101/2020.09.15.298497">https://doi.org/10.1101/2020.09.15.298497</a>
- Genc, S., et al., (2020). 
    Longitudinal patterns of white matter fibre density and morphology in children 
    is associated with age and pubertal stage. 
    <b>Developmental Cognitive Neuroscience</b>, 100853. <a href="https://doi.org/10.1016/j.dcn.2020.100853">https://doi.org/10.1016/j.dcn.2020.100853</a>
- Mosley, P., et al.,(2020). 
    Subthalamic Deep Brain Stimulation Identifies Frontal Networks Supporting Initiation, 
    Inhibition and Strategy Use in Parkinson's Disease: Initiation and Inhibition after STN-DBS for PD. 
    <b>NeuroImage</b>, 117352. <a href="https://doi.org/10.1016/j.neuroimage.2020.117352">https://doi.org/10.1016/j.neuroimage.2020.117352</a>
- Genc, S., et al., (2020). Longitudinal white matter development in child-ren 
    is associated with puberty, 
    attentional difficulties and mental health. 
    <b>bioRxiv</b>, 607671. <a href="https://www.biorxiv.org/content/10.1101/607671v2">https://www.biorxiv.org/content/10.1101/607671v2</a>
- Wynn J., et al., (2020). Encoding and retreival eye movements mediateage 
    differences in pattern completion. 
    <b>PsyArXiv</b>. <a href="https://psyarxiv.com/mdx3f/">https://psyarxiv.com/mdx3f/</a>
- Ehlers, M., et al., (2020). Natural variations in brain morphology do not 
    account for inter-individual 
    differences in defensive responding during fear acquisition training and extinction. 
    <b>PsyArXiv</b>. <a href="https://psyarxiv.com/q2kyf/">https://psyarxiv.com/q2kyf/</a>
- Uhlig, M., & Gaebler, M. (2020, July 27). Rapid brain changes following 
    acute psychosocial stress. 
    Retrieved from <a href="osf.io/vw2zb/">osf.io/vw2zb</a>
- Bejjani, C., & Egner, T. (2020). How reinforcement shapes the binding of 
    stimulus-control associations. 
    <b>PsyArXiv</b>. <a href="https://psyarxiv.com/cdpxh/">https://psyarxiv.com/cdpxh/</a>
- Wiedemann (2020). lcsm: Univariate and Bivariate Latent Change Score Modeling.
    <b>CRAN</b> <a href="https://cran.r-project.org/web/packages/lcsm/vignettes/v0-longitudinal-plots.html">https://cran.r-project.org/web/packages/lcsm/vignettes/v0-longitudinal-plots.html</a>
</pre> 

Visualizations based on best open science practices.
# Made in R
![Raincloud example](R/figure19.png)
# Made in R
![Raincloud example](R/figure18.png)
# Made in R
![Raincloud example](R/figure17.png)
## Taken from the R package development version
![Raincloud example](R/figure5_1.png)
## Taken from the R package development version
![Raincloud example](R/figure3_1.png)
## Taken from the R package development version
![Raincloud example](R/figure4_1.png)
## Taken from the R package development version
![Raincloud example](R/figure10e.png)
![Raincloud example](R/figure10d.png)
![Raincloud example](R/figure5c.png)
![Raincloud example2](R/figure6.png)

# Made in Python
![Example3](Python/tutorial_1/figure10.png)

This repository currently includes visualizations made with:
- Python (.ipynb)
- R (.rmd)

## Update 10 Augustus 2020:
Development of a R package has started and a first version is expected to be completed by September 2020.

## Update 30 April - 2020: 
Thanks to the overwhelming feedback on Twitter, and thanks to Micah Allen, I will try to implement some comments and upload an updated version somewhere in the next two months. It might be that, due to the recent Rstudio update, some package versions don't work anymore e.g., gghalves. If you encounter this problem, please try to install those packages from CRAN and if that doesn't work, try to install it from the respective GitHub package page. 


# Interactive tutorials
Both Python tutorials and the R tutorial are directly available through Binder. Click on the Binder launcher to open them! 

NOTE: if you want to open the R tutorial with Binder and use RStudio, you'll have to select RStudio within the Jupyter environment by - inside the R folder - clicking: 'new' -> 'RStudio'. This will open RStudio in Binder. If you perform the R tutorial in Binder, the error:`Error in grid.newpage() : could not open file ...` occurs when using ggsave. At this stage, I don't know how to fix this issue, but the figure will be presented, so please ignore this error.

# Background
The idea behind the ‘open-visualizations’ repository stems from the fact that (open) science - in general - lacks ‘fully’ transparent and robust visualizations, i.e., figures have always some form of ‘hidden-data’. To overcome this issue, I created this repository. Some of the work in R is inspired by work from Allen et al. (2019)(https://github.com/RainCloudPlots/RainCloudPlots)

There is a zenodo (https://doi.org/10.5281/zenodo.3715576) archive of the code and this repository is made available under the MIT license i.e., you can do with it what you want, but if you use it, reference needs to be given to the author of this repository.

<pre>
van Langen, J. (2020). Open-visualizations in R and Python. 
<a href="https://github.com/jorvlan/open-visualizations">https://github.com/jorvlan/open-visualizations</a>
</pre>

I hope that these tutorials are helpful for your research and if you have any questions, suggestions for improvement or identify bugs, please open an issue in this repository. 

% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/do_GeyserPlot.R
\name{do_GeyserPlot}
\alias{do_GeyserPlot}
\title{Generate a Geyser plot.}
\usage{
do_GeyserPlot(
  sample,
  features,
  assay = NULL,
  slot = "data",
  group.by = NULL,
  split.by = NULL,
  enforce_symmetry = FALSE,
  scale_type = "continuous",
  order_by_mean = TRUE,
  plot_cell_borders = TRUE,
  jitter = 0.45,
  pt.size = 1,
  border.size = 2,
  border.color = "black",
  legend.position = "bottom",
  legend.width = 1,
  legend.length = 20,
  legend.framewidth = 1.5,
  legend.tickwidth = 1.5,
  legend.framecolor = "grey50",
  legend.tickcolor = "white",
  legend.type = "colorbar",
  font.size = 14,
  font.type = "sans",
  rotate_x_axis_labels = 45,
  viridis_color_map = "G",
  viridis_direction = 1,
  colors.use = NULL,
  na.value = "grey75",
  legend.ncol = NULL,
  legend.nrow = NULL,
  legend.icon.size = 4,
  legend.byrow = FALSE,
  legend.title = NULL,
  plot.title = NULL,
  plot.subtitle = NULL,
  plot.caption = NULL,
  xlab = "Groups",
  ylab = feature,
  flip = FALSE,
  min.cutoff = NULL,
  max.cutoff = NULL
)
}
\arguments{
\item{sample}{\strong{\code{\link[SeuratObject]{Seurat}}} | A Seurat object, generated by \link[Seurat]{CreateSeuratObject}.}

\item{features}{\strong{\code{\link[base]{character}}} | Features to represent.}

\item{assay}{\strong{\code{\link[base]{character}}} | Assay to use. Defaults to the current assay.}

\item{slot}{\strong{\code{\link[base]{character}}} | Data slot to use. Only one of: counts, data, scale.data. Defaults to "data".}

\item{group.by}{\strong{\code{\link[base]{character}}} | Metadata variable to group the output by. Has to be a character of factor column.}

\item{split.by}{\strong{\code{\link[base]{character}}} | Secondary metadata variable to further group (split) the output by. Has to be a character of factor column.}

\item{enforce_symmetry}{\strong{\code{\link[base]{logical}}} | Return a symmetrical plot axes-wise or continuous color scale-wise, when applicable.}

\item{scale_type}{\strong{\code{\link[base]{character}}} | Type of color scale to use.  One of:
\itemize{
\item \emph{\code{categorical}}: Use a categorical color scale based on the values of "group.by".
\item \emph{\code{continuous}}: Use a continuous color scale based on the values of "feature".
}}

\item{order_by_mean}{\strong{\code{\link[base]{logical}}} | Whether to order the groups by the mean of the data (highest to lowest).}

\item{plot_cell_borders}{\strong{\code{\link[base]{logical}}} | Whether to plot border around cells.}

\item{jitter}{\strong{\code{\link[base]{numeric}}} | Amount of jitter in the plot along the X axis. The lower the value, the more compacted the dots are.}

\item{pt.size}{\strong{\code{\link[base]{numeric}}} | Size of the dots.}

\item{border.size}{\strong{\code{\link[base]{numeric}}} | Width of the border of the cells.}

\item{border.color}{\strong{\code{\link[base]{character}}} | Color to use for the border of the cells.}

\item{legend.position}{\strong{\code{\link[base]{character}}} | Position of the legend in the plot. One of:
\itemize{
\item \emph{\code{top}}: Top of the figure.
\item \emph{\code{bottom}}: Bottom of the figure.
\item \emph{\code{left}}: Left of the figure.
\item \emph{\code{right}}: Right of the figure.
\item \emph{\code{none}}: No legend is displayed.
}}

\item{legend.length, legend.width}{\strong{\code{\link[base]{numeric}}} | Length and width of the legend. Will adjust automatically depending on legend side.}

\item{legend.framewidth, legend.tickwidth}{\strong{\code{\link[base]{numeric}}} | Width of the lines of the box in the legend.}

\item{legend.framecolor}{\strong{\code{\link[base]{character}}} | Color of the lines of the box in the legend.}

\item{legend.tickcolor}{\strong{\code{\link[base]{character}}} | Color of the ticks of the box in the legend.}

\item{legend.type}{\strong{\code{\link[base]{character}}} | Type of legend to display. One of:
\itemize{
\item \emph{\code{normal}}: Default legend displayed by \pkg{ggplot2}.
\item \emph{\code{colorbar}}: Redefined colorbar legend, using \link[ggplot2]{guide_colorbar}.
\item \emph{\code{colorsteps}}: Redefined legend with colors going by range, in steps, using \link[ggplot2]{guide_colorsteps}.
}}

\item{font.size}{\strong{\code{\link[base]{numeric}}} | Overall font size of the plot. All plot elements will have a size relationship with this font size.}

\item{font.type}{\strong{\code{\link[base]{character}}} | Base font family for the plot. One of:
\itemize{
\item \emph{\code{mono}}: Mono spaced font.
\item \emph{\code{serif}}: Serif font family.
\item \emph{\code{sans}}: Default font family.
}}

\item{rotate_x_axis_labels}{\strong{\code{\link[base]{numeric}}} | Degree to rotate the X labels. One of: 0, 45, 90.}

\item{viridis_color_map}{\strong{\code{\link[base]{character}}} | A capital letter from A to H or the scale name as in \link[viridis]{scale_fill_viridis}.}

\item{viridis_direction}{\strong{\code{\link[base]{numeric}}} | Either 1 or -1. Controls how the gradient of viridis scale is formed.}

\item{colors.use}{\strong{\code{\link[base]{character}}} | Named vector of colors to use. Has to match the unique values of group.by when scale_type is set to categorical.}

\item{na.value}{\strong{\code{\link[base]{character}}} | Color value for NA.}

\item{legend.ncol, legend.nrow}{\strong{\code{\link[base]{numeric}}} | Number of columns/rows in the legend.}

\item{legend.icon.size}{\strong{\code{\link[base]{numeric}}} | Size of the icons in legend.}

\item{legend.byrow}{\strong{\code{\link[base]{logical}}} | Whether the legend is filled by row or not.}

\item{legend.title}{\strong{\code{\link[base]{character}}} | Title for the legend.}

\item{plot.title, plot.subtitle, plot.caption}{\strong{\code{\link[base]{character}}} | Title, subtitle or caption to use in the plot.}

\item{xlab, ylab}{\strong{\code{\link[base]{character}}} | Titles for the X and Y axis.}

\item{flip}{\strong{\code{\link[base]{logical}}} | Whether to invert the axis of the displayed plot.}

\item{min.cutoff, max.cutoff}{\strong{\code{\link[base]{numeric}}} | Set the min/max ends of the color scale. Any cell/group with a value lower than min.cutoff will turn into min.cutoff and any cell with a value higher than max.cutoff will turn into max.cutoff. In FeaturePlots, provide as many values as features. Use NAs to skip a feature.}
}
\value{
Either a plot of a list of plots, depending on the number of features provided.
}
\description{
A Geyser plot is a custom plot in which we plot continuous values on the Y axis grouped by a categorical value in the X. This is plotted as a dot plot, jittered so that the dots span
all the way to the other groups. On top of this, the mean and .66 and .95 of the data is plotted, depicting the overall distribution of the dots. The cells can, then, be colored by
a continuous variable (same as Y axis or different) or a categorical one (same as X axis or different).
}
\details{
Special thanks to Christina Blume for coming up with the name of the plot.
}
\examples{
\donttest{
  # Check Suggests.
  value <- SCpubr:::check_suggests(function_name = "do_GeyserPlot", passive = TRUE)

  if (isTRUE(value)){
    # Consult the full documentation in https://enblacar.github.io/SCpubr-book/

    # Define your Seurat object.
    sample <- readRDS(system.file("extdata/seurat_dataset_example.rds", package = "SCpubr"))

    # Geyser plot with categorical color scale.
    p <- SCpubr::do_GeyserPlot(sample = sample,
                              features = "nCount_RNA",
                              scale_type = "categorical")
    p

    # Geyser plot with continuous color scale.
    p <- SCpubr::do_GeyserPlot(sample = sample,
                              features = "nCount_RNA",
                              scale_type = "continuous")


    p

  } else if (isFALSE(value)){
    message("This function can not be used without its suggested packages.")
    message("Check out which ones are needed using `SCpubr::state_dependencies()`.")
  }
}
}

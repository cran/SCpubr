% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/do_TFActivityPlot.R
\name{do_TFActivityPlot}
\alias{do_TFActivityPlot}
\title{Plot TF Activities from decoupleR using Dorothea prior knowledge.}
\usage{
do_TFActivityPlot(
  sample,
  activities,
  n_tfs = 25,
  group.by = NULL,
  split.by = NULL,
  plot_FeaturePlots = FALSE,
  plot_Heatmaps = TRUE,
  plot_GeyserPlots = FALSE,
  row_title = NULL,
  column_title = NULL,
  flip = FALSE,
  cluster_cols = TRUE,
  cluster_rows = TRUE,
  row_names_rot = 0,
  column_names_rot = 45,
  cell_size = 5,
  pt.size = 1,
  plot_cell_borders = TRUE,
  border.size = 2,
  na.value = "grey75",
  legend.position = "bottom",
  heatmap.legend.length = 75,
  heatmap.legend.width = 5,
  heatmap.legend.framecolor = "black",
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
  enforce_symmetry = TRUE,
  geyser_order_by_mean = TRUE,
  geyser_scale_type = "continuous",
  viridis_color_map = "G",
  viridis_direction = 1,
  min.cutoff = NULL,
  max.cutoff = NULL
)
}
\arguments{
\item{sample}{\strong{\code{\link[SeuratObject]{Seurat}}} | A Seurat object, generated by \link[Seurat]{CreateSeuratObject}.}

\item{activities}{\strong{\code{\link[tibble]{tibble}}} | Result of running decoupleR method with dorothea regulon prior knowledge.}

\item{n_tfs}{\strong{\code{\link[base]{numeric}}} | Number of top regulons to consider for downstream analysis.}

\item{group.by}{\strong{\code{\link[base]{character}}} | Metadata variable to group the output by. Has to be a character of factor column.}

\item{split.by}{\strong{\code{\link[base]{character}}} | Secondary metadata variable to further group (split) the output by. Has to be a character of factor column.}

\item{plot_FeaturePlots}{\strong{\code{\link[base]{logical}}} | Compute output FeaturePlots for each of the top regulons.}

\item{plot_Heatmaps}{\strong{\code{\link[base]{logical}}} | Compute output heatmap showcasing the average TF activity per regulon and group.by variable.}

\item{plot_GeyserPlots}{\strong{\code{\link[base]{logical}}} | Compute output GeyserPlots for each of the top regulons and group.by variable.}

\item{row_title}{\strong{\code{\link[base]{character}}} | Title for the rows of the heatmaps. Only works with single heatmaps.}

\item{column_title}{\strong{\code{\link[base]{character}}} | Title for the columns of the heatmaps. Only works with single heatmaps.}

\item{flip}{\strong{\code{\link[base]{logical}}} | Whether to invert the axis of the displayed plot.}

\item{cluster_cols, cluster_rows}{\strong{\code{\link[base]{logical}}} | Cluster the columns or rows of the heatmaps.}

\item{row_names_rot}{\strong{\code{\link[base]{numeric}}} | Degree in which to rotate the row labels.}

\item{column_names_rot}{\strong{\code{\link[base]{numeric}}} | Degree in which to rotate the column labels.}

\item{cell_size}{\strong{\code{\link[base]{numeric}}} | Size of each cell in the heatmap.}

\item{pt.size}{\strong{\code{\link[base]{numeric}}} | Size of the dots.}

\item{plot_cell_borders}{\strong{\code{\link[base]{logical}}} | Whether to plot border around cells.}

\item{border.size}{\strong{\code{\link[base]{numeric}}} | Width of the border of the cells.}

\item{na.value}{\strong{\code{\link[base]{character}}} | Color value for NA.}

\item{legend.position}{\strong{\code{\link[base]{character}}} | Position of the legend in the plot. One of:
\itemize{
\item \emph{\code{top}}: Top of the figure.
\item \emph{\code{bottom}}: Bottom of the figure.
\item \emph{\code{left}}: Left of the figure.
\item \emph{\code{right}}: Right of the figure.
\item \emph{\code{none}}: No legend is displayed.
}}

\item{heatmap.legend.length, heatmap.legend.width}{\strong{\code{\link[base]{numeric}}} | Width and length of the legend in the heatmap.}

\item{heatmap.legend.framecolor}{\strong{\code{\link[base]{character}}} | Color of the edges and ticks of the legend in the heatmap.}

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

\item{enforce_symmetry}{\strong{\code{\link[base]{logical}}} | Whether the geyser and feature plot has a symmetrical color scale.}

\item{geyser_order_by_mean}{\strong{\code{\link[base]{logical}}} | Whether to order the X axis by the mean of the values.}

\item{geyser_scale_type}{\strong{\code{\link[base]{character}}} | Type of scale to use. Either "continuous" or "categorical.}

\item{viridis_color_map}{\strong{\code{\link[base]{character}}} | A capital letter from A to H or the scale name as in \link[viridis]{scale_fill_viridis}.}

\item{viridis_direction}{\strong{\code{\link[base]{numeric}}} | Either 1 or -1. Controls how the gradient of viridis scale is formed.}

\item{min.cutoff, max.cutoff}{\strong{\code{\link[base]{numeric}}} | Set the min/max ends of the color scale. Any cell/group with a value lower than min.cutoff will turn into min.cutoff and any cell with a value higher than max.cutoff will turn into max.cutoff. In FeaturePlots, provide as many values as features. Use NAs to skip a feature.}
}
\value{
A list containing several output plots according to the user's specifications.
}
\description{
Plot TF Activities from decoupleR using Dorothea prior knowledge.
}
\examples{
\donttest{
  # Check Suggests.
  value <- SCpubr:::check_suggests(function_name = "do_TFActivityPlot", passive = TRUE)

  if (isTRUE(value)){
    # Consult the full documentation in https://enblacar.github.io/SCpubr-book/

    # Define your Seurat object.
    sample <- readRDS(system.file("extdata/seurat_dataset_example.rds",
                                  package = "SCpubr"))

    # Define your activities object.
    dorothea_activities <- readRDS(system.file("extdata/dorothea_activities_example.rds",
                                               package = "SCpubr"))

    # General heatmap.
    out <- SCpubr::do_TFActivityPlot(sample = sample,
                                     activities = dorothea_activities,
                                     plot_FeaturePlots = TRUE,
                                     plot_GeyserPlots = TRUE)
    p <- out$heatmaps$average_scores
    p

    # Retrieve feature plots.
    p <- out$feature_plots$ARID2
    p

    # Retrieve Geyser plots.
    p <- out$geyser_plots$ARID2
    p
  } else if (isFALSE(value)){
    message("This function can not be used without its suggested packages.")
    message("Check out which ones are needed using `SCpubr::state_dependencies()`.")
  }
}
}

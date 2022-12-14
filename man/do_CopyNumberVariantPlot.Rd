% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/do_CopyNumberVariantPlot.R
\name{do_CopyNumberVariantPlot}
\alias{do_CopyNumberVariantPlot}
\title{Display CNV scores from inferCNV as Feature Plots.}
\usage{
do_CopyNumberVariantPlot(
  sample,
  infercnv_object,
  chromosome_locations,
  group.by = NULL,
  using_metacells = FALSE,
  metacell_mapping = NULL,
  chromosome_focus = NULL,
  legend.type = "colorbar",
  legend.position = "bottom",
  legend.length = 20,
  legend.width = 1,
  legend.framewidth = 1.5,
  legend.tickwidth = 1.5,
  legend.framecolor = "grey50",
  legend.tickcolor = "white",
  font.size = 14,
  pt.size = 1,
  font.type = "sans",
  border.size = 2,
  border.color = "black",
  rotate_x_axis_labels = 45,
  plot_cell_borders = TRUE,
  enforce_symmetry = TRUE,
  legend.title = NULL,
  na.value = "grey75",
  viridis_color_map = "G",
  viridis_direction = 1,
  verbose = FALSE,
  min.cutoff = NULL,
  max.cutoff = NULL
)
}
\arguments{
\item{sample}{\strong{\code{\link[SeuratObject]{Seurat}}} | A Seurat object, generated by \link[Seurat]{CreateSeuratObject}.}

\item{infercnv_object}{\strong{\code{\link[infercnv]{infercnv}}} | Output inferCNV object run on the same Seurat object.}

\item{chromosome_locations}{\strong{\code{\link[tibble]{tibble}}} | Tibble containing the chromosome regions to use. Can be obtained using \code{utils::data("human_chr_locations", package = "SCpubr")}.}

\item{group.by}{\strong{\code{\link[base]{character}}} | Metadata variable to group the output by. Has to be a character of factor column.}

\item{using_metacells}{\strong{\code{\link[base]{logical}}} | Whether inferCNV was run using metacells or not.}

\item{metacell_mapping}{\strong{\code{\link[SCpubr]{named_vector}}} | Vector or cell - metacell mapping.}

\item{chromosome_focus}{\strong{\code{\link[base]{character}}} | Region stating which chromosome to plot. Eg: 1p, 19q. NULL will plot all regions.}

\item{legend.type}{\strong{\code{\link[base]{character}}} | Type of legend to display. One of:
\itemize{
\item \emph{\code{normal}}: Default legend displayed by \pkg{ggplot2}.
\item \emph{\code{colorbar}}: Redefined colorbar legend, using \link[ggplot2]{guide_colorbar}.
\item \emph{\code{colorsteps}}: Redefined legend with colors going by range, in steps, using \link[ggplot2]{guide_colorsteps}.
}}

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

\item{font.size}{\strong{\code{\link[base]{numeric}}} | Overall font size of the plot. All plot elements will have a size relationship with this font size.}

\item{pt.size}{\strong{\code{\link[base]{numeric}}} | Size of the dots.}

\item{font.type}{\strong{\code{\link[base]{character}}} | Base font family for the plot. One of:
\itemize{
\item \emph{\code{mono}}: Mono spaced font.
\item \emph{\code{serif}}: Serif font family.
\item \emph{\code{sans}}: Default font family.
}}

\item{border.size}{\strong{\code{\link[base]{numeric}}} | Width of the border of the cells.}

\item{border.color}{\strong{\code{\link[base]{character}}} | Color to use for the border of the cells.}

\item{rotate_x_axis_labels}{\strong{\code{\link[base]{numeric}}} | Degree to rotate the X labels. One of: 0, 45, 90.}

\item{plot_cell_borders}{\strong{\code{\link[base]{logical}}} | Whether to plot border around cells.}

\item{enforce_symmetry}{\strong{\code{\link[base]{logical}}} | Return a symmetrical plot axes-wise or continuous color scale-wise, when applicable.}

\item{legend.title}{\strong{\code{\link[base]{character}}} | Title for the legend.}

\item{na.value}{\strong{\code{\link[base]{character}}} | Color value for NA.}

\item{viridis_color_map}{\strong{\code{\link[base]{character}}} | A capital letter from A to H or the scale name as in \link[viridis]{scale_fill_viridis}.}

\item{viridis_direction}{\strong{\code{\link[base]{numeric}}} | Either 1 or -1. Controls how the gradient of viridis scale is formed.}

\item{verbose}{\strong{\code{\link[base]{logical}}} | Whether to show extra comments, warnings,etc.}

\item{min.cutoff, max.cutoff}{\strong{\code{\link[base]{numeric}}} | Set the min/max ends of the color scale. Any cell/group with a value lower than min.cutoff will turn into min.cutoff and any cell with a value higher than max.cutoff will turn into max.cutoff. In FeaturePlots, provide as many values as features. Use NAs to skip a feature.}
}
\value{
A list containing Feature Plots for different chromosome regions and corresponding dot plots by groups..
}
\description{
Display CNV scores from inferCNV as Feature Plots.
}
\examples{
\donttest{
  # Check Suggests.
  value <- SCpubr:::check_suggests(function_name = "do_CopyNumberVariantPlot", passive = TRUE)

  if (isTRUE(value)){
    # Consult the full documentation in https://enblacar.github.io/SCpubr-book/

    # This function expects that you have run inferCNV on your
    # own and you have access to the output object.

    # Define your Seurat object.
    sample <- readRDS(system.file("extdata/seurat_dataset_example.rds",
                                  package = "SCpubr"))

    # Define your inferCNV object.
    infercnv_object <- readRDS(system.file("extdata/infercnv_object_example.rds",
                                           package = "SCpubr"))

    # Get human chromosome locations.
    chromosome_locations = SCpubr::human_chr_locations

    # Compute for a single chromosome.
    out <- SCpubr::do_CopyNumberVariantPlot(sample = sample,
                                            infercnv_object = infercnv_object,
                                            using_metacells = FALSE,
                                            chromosome_locations = chromosome_locations,
                                            chromosome_focus = "1")
    # Retrieve the UMAP for 1p region.
    out$`1p_umap`
    # Retrieve the dot plot for 1p region.
    out$`1p_dotplot`

  } else if (isFALSE(value)){
    message("This function can not be used without its suggested packages.")
    message("Check out which ones are needed using `SCpubr::state_dependencies()`.")
  }
}
}

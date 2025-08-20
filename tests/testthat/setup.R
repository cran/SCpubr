de_genes <- readRDS(system.file("extdata/de_genes_example.rds", package = "SCpubr"))
# nolint start
if (requireNamespace("Seurat", quietly = TRUE)) {
 suppressMessages(library("Seurat"))
}

if (requireNamespace("magrittr", quietly = TRUE)) {
 suppressMessages(library("magrittr"))
}

if (requireNamespace("dplyr", quietly = TRUE)) {
 suppressMessages(library("dplyr"))
  de_genes_scaled <- dplyr::rename(.data = de_genes,
                                   "avg_diff" = "avg_log2FC")
}
# nolint end

if (requireNamespace("Seurat", quietly = TRUE)) {
  sample <- readRDS(system.file("extdata/seurat_dataset_example.rds", package = "SCpubr"))
  sample@assays$SCT$counts <- sample@assays$SCT$data
  
  if (isTRUE(getOption("SCpubr.v5"))){
    suppressWarnings(sample[["SCT"]] <- as(object = sample[["SCT"]], Class = "Assay5"))
  }
}


metacell_mapping <- readRDS(system.file("extdata/metacell_mapping_example.rds", package = "SCpubr"))
infercnv_object <- readRDS(system.file("extdata/infercnv_object_example.rds", package = "SCpubr"))
infercnv_object_metacells <- readRDS(system.file("extdata/infercnv_object_metacells_example.rds", package = "SCpubr"))
human_chr_locations <- SCpubr::human_chr_locations
progeny_activities <- readRDS(system.file("extdata/progeny_activities_example.rds", package = "SCpubr"))
dorothea_activities <- readRDS(system.file("extdata/dorothea_activities_example.rds", package = "SCpubr"))
enriched_terms <- readRDS(system.file("extdata/enriched_terms_example.rds", package = "SCpubr"))


# Get packages.
dependencies <- SCpubr:::return_dependencies()

dependencies[["utils"]] <- c("Seurat",
                             "rlang",
                             "dplyr",
                             "magrittr",
                             "dplyr",
                             "tidyr",
                             "tibble",
                             "stringr",
                             "plyr",
                             "grDevices",
                             "stats",
                             "grid",
                             "assertthat",
                             "ComplexHeatmap")

# Check them.
dep_check <- list()
for (func in names(dependencies)){
  packages <- c(dependencies[[func]], dependencies[["Essentials"]])
  value <- FALSE
  for (pkg in packages){
    if (!requireNamespace(pkg, quietly = TRUE)) {
        value <- TRUE
    }
  }
  dep_check[[func]] <- value
}
liana_output <- readRDS(system.file("extdata/liana_output_example.rds", package = "SCpubr"))






#monocle_sample <- sample
#monocle_cds <- test.data$monocle_cds

\donttest{
  # Check Suggests.
  value <- SCpubr:::check_suggests(function_name = "do_RidgePlot", passive = TRUE)

  if (isTRUE(value)){
    # Consult the full documentation in https://enblacar.github.io/SCpubr-book/

    # Define your Seurat object.
    sample <- readRDS(system.file("extdata/seurat_dataset_example.rds", package = "SCpubr"))

    # Compute the most basic ridge plot.
    p <- SCpubr::do_RidgePlot(sample = sample,
                              feature = "nFeature_RNA")
    p

    # Use continuous color scale.
    p <- SCpubr::do_RidgePlot(sample = sample,
                              feature = "nFeature_RNA",
                              continuous_scale = TRUE,
                              viridis.direction = 1)
    p

    # Draw quantiles of the distribution.
    p <- SCpubr::do_RidgePlot(sample = sample,
                              feature = "nFeature_RNA",
                              continuous_scale = TRUE,
                              compute_quantiles = TRUE,
                              compute_custom_quantiles = TRUE)
    p

    # Draw probability tails.
    p <- SCpubr::do_RidgePlot(sample = sample,
                              feature = "nFeature_RNA",
                              continuous_scale = TRUE,
                              compute_quantiles = TRUE,
                              compute_distribution_tails = TRUE)
    p

    # Draw probability tails.
    p <- SCpubr::do_RidgePlot(sample = sample,
                              feature = "nFeature_RNA",
                              continuous_scale = TRUE,
                              compute_quantiles = TRUE,
                              color_by_probabilities = TRUE)
    p
  } else if (base::isFALSE(value)){
    message("This function can not be used without its suggested packages.")
    message("Check out which ones are needed using `SCpubr::state_dependencies()`.")
  }
}

if (isFALSE(dep_check[["do_CorrelationPlot"]])){

  testthat::test_that("do_CorrelationPlot: CRAN essentials", {
    sample$orig.ident <- ifelse(sample$seurat_clusters %in% c("1", "2"), "A", "B")

    genes <- list("A" = Seurat::VariableFeatures(sample)[1:5],
                  "B" = Seurat::VariableFeatures(sample)[6:10],
                  "C" = Seurat::VariableFeatures(sample)[11:15])

    p <- SCpubr::do_CorrelationPlot(sample = sample, legend.position = "top")
    testthat::expect_true("HeatmapList" %in% class(p))
  })

  testthat::test_that("do_CorrelationPlot: PASS - normal", {

    testthat::skip_on_cran()
    sample$orig.ident <- ifelse(sample$seurat_clusters %in% c("1", "2"), "A", "B")

    genes <- list("A" = Seurat::VariableFeatures(sample)[1:5],
                  "B" = Seurat::VariableFeatures(sample)[6:10],
                  "C" = Seurat::VariableFeatures(sample)[11:15])

    p <- SCpubr::do_CorrelationPlot(sample = sample, legend.position = "top")
    testthat::expect_true("HeatmapList" %in% class(p))

    p <- SCpubr::do_CorrelationPlot(sample = sample, legend.position = "right")
    testthat::expect_true("HeatmapList" %in% class(p))
  })

  testthat::test_that("do_CorrelationPlot: PASS - group.by", {
    testthat::skip_on_cran()

    sample$orig.ident <- ifelse(sample$seurat_clusters %in% c("1", "2"), "A", "B")

    genes <- list("A" = Seurat::VariableFeatures(sample)[1:5],
                  "B" = Seurat::VariableFeatures(sample)[6:10],
                  "C" = Seurat::VariableFeatures(sample)[11:15])

    p <- SCpubr::do_CorrelationPlot(sample = sample,
                                    group.by = "orig.ident")
    testthat::expect_true("HeatmapList" %in% class(p))
  })

  testthat::test_that("do_CorrelationPlot: PASS - group.by - rotate axis labels", {
    testthat::skip_on_cran()

    sample$orig.ident <- ifelse(sample$seurat_clusters %in% c("1", "2"), "A", "B")

    genes <- list("A" = Seurat::VariableFeatures(sample)[1:5],
                  "B" = Seurat::VariableFeatures(sample)[6:10],
                  "C" = Seurat::VariableFeatures(sample)[11:15])

    p <- SCpubr::do_CorrelationPlot(sample = sample,
                                    group.by = "orig.ident",
                                    column_names_rot = 0)
    testthat::expect_true("HeatmapList" %in% class(p))
  })

  testthat::test_that("do_CorrelationPlot: PASS - group.by - cell size", {
    testthat::skip_on_cran()

    sample$orig.ident <- ifelse(sample$seurat_clusters %in% c("1", "2"), "A", "B")

    genes <- list("A" = Seurat::VariableFeatures(sample)[1:5],
                  "B" = Seurat::VariableFeatures(sample)[6:10],
                  "C" = Seurat::VariableFeatures(sample)[11:15])

    p <- SCpubr::do_CorrelationPlot(sample = sample,
                                    group.by = "orig.ident",
                                    column_names_rot = 0,
                                    cell_size = 7)
    testthat::expect_true("HeatmapList" %in% class(p))
  })




  testthat::test_that("do_CorrelationPlot: PASS - row title and column title", {
    testthat::skip_on_cran()

    sample$orig.ident <- ifelse(sample$seurat_clusters %in% c("1", "2"), "A", "B")

    genes <- list("A" = Seurat::VariableFeatures(sample)[1:5],
                  "B" = Seurat::VariableFeatures(sample)[6:10],
                  "C" = Seurat::VariableFeatures(sample)[11:15])

    p <- SCpubr::do_CorrelationPlot(sample = sample,
                                    group.by = "orig.ident",
                                    column_names_rot = 0,
                                    cell_size = 7,
                                    row_title = "Row title",
                                    column_title = "Column title")
    testthat::expect_true("HeatmapList" %in% class(p))
  })

  testthat::test_that("do_CorrelationPlot: PASS - group.by factor", {
    testthat::skip_on_cran()

    sample$orig.ident <- ifelse(sample$seurat_clusters %in% c("1", "2"), "A", "B")

    genes <- list("A" = Seurat::VariableFeatures(sample)[1:5],
                  "B" = Seurat::VariableFeatures(sample)[6:10],
                  "C" = Seurat::VariableFeatures(sample)[11:15])

    sample$orig.ident <- factor(sample$orig.ident)
    p <- SCpubr::do_CorrelationPlot(sample = sample,
                                    group.by = "orig.ident",
                                    column_names_rot = 0,
                                    cell_size = 7)
    testthat::expect_true("HeatmapList" %in% class(p))
  })

}

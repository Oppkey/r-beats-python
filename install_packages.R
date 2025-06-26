# R Beats Python - Package Installation Script
# This script installs all required packages for the Quarto site

# Function to install packages if not already installed
install_if_missing <- function(packages, source = "cran") {
  for (pkg in packages) {
    if (!requireNamespace(pkg, quietly = TRUE)) {
      cat("Installing", pkg, "...\n")
      if (source == "cran") {
        install.packages(pkg)
      } else if (source == "bioc") {
        BiocManager::install(pkg)
      }
    } else {
      cat(pkg, "is already installed.\n")
    }
  }
}

# Install BiocManager if not already installed
if (!requireNamespace("BiocManager", quietly = TRUE)) {
  cat("Installing BiocManager...\n")
  install.packages("BiocManager")
}

# CRAN packages needed for the site
cran_packages <- c(
  # Core data science packages
  "dplyr",
  "tidyr",
  "ggplot2",
  "readr",
  "stringr",
  "lubridate",
  "forcats",
  
  # Statistical modeling
  "MASS",
  "car",
  "nlme",
  "lme4",
  "mgcv",
  "gam",
  
  # Time series
  "forecast",
  "tseries",
  "xts",
  "zoo",
  "vars",
  "bsts",
  "rugarch",
  "highfrequency",
  
  # Machine learning
  "randomForest",
  "ranger",
  "gbm",
  "xgboost",
  "caret",
  "boot",
  "rpart",
  "e1071",
  
  # Bayesian
  "rstan",
  "brms",
  "rstanarm",
  
  # Visualization
  "plotly",
  "ggpubr",
  "ggthemes",
  "patchwork",
  "corrplot",
  "wordcloud",
  "topicmodels",
  
  # Data manipulation
  "data.table",
  "reshape2",
  "plyr",
  
  # Finance and economics
  "PortfolioAnalytics",
  "PerformanceAnalytics",
  "quantmod",
  "TTR",
  "plm",
  "urca",
  "dynlm",
  "derivmkts",
  "fOptions",
  "termstrc",
  "YieldCurve",
  
  # Social sciences
  "survey",
  "srvyr",
  "questionr",
  "psych",
  "mirt",
  "lavaan",
  "semPlot",
  "semTools",
  "ez",
  "afex",
  "emmeans",
  "survival",
  "coxme",
  "psychometric",
  "igraph",
  "sna",
  "statnet",
  "growth",
  "panelr",
  "tm",
  
  # Reporting and publishing
  "knitr",
  "rmarkdown",
  "bookdown",
  "xtable",
  "stargazer",
  "DT",
  "shiny",
  
  # Utilities
  "devtools",
  "roxygen2",
  "testthat",
  "covr"
)

# Bioconductor packages
bioc_packages <- c(
  # Core Bioconductor
  "Biobase",
  "BiocGenerics",
  "S4Vectors",
  "IRanges",
  "GenomicRanges",
  "rtracklayer",
  "TxDb.Hsapiens.UCSC.hg38.knownGene",
  
  # RNA-seq analysis
  "DESeq2",
  "edgeR",
  "limma",
  "tximport",
  "tximeta",
  
  # Variant analysis
  "VariantAnnotation",
  "SNPlocs.Hsapiens.dbSNP144.GRCh38",
  
  # Proteomics and metabolomics
  "MSstats",
  "MetaboAnalystR",
  "xcms",
  
  # Single-cell analysis
  "Seurat",
  "scater",
  "scran",
  "STUtility",
  
  # Cancer genomics
  "TCGAbiolinks",
  "maftools",
  "ComplexHeatmap",
  
  # Pharmacogenomics
  "PharmacoGx",
  "PharmacoSet",
  
  # Visualization
  "Gviz",
  "ggbio",
  
  # Utilities
  "BiocManager",
  "BiocVersion"
)

# Install CRAN packages
cat("Installing CRAN packages...\n")
install_if_missing(cran_packages, "cran")

# Install Bioconductor packages
cat("Installing Bioconductor packages...\n")
install_if_missing(bioc_packages, "bioc")

# Update all packages
cat("Updating all packages...\n")
BiocManager::install(ask = FALSE)

cat("\nPackage installation complete!\n")
cat("You may need to restart R/RStudio for all packages to be available.\n")

# Check for any missing packages
cat("\nChecking for any missing packages...\n")
all_packages <- c(cran_packages, bioc_packages)
missing_packages <- c()

for (pkg in all_packages) {
  if (!requireNamespace(pkg, quietly = TRUE)) {
    missing_packages <- c(missing_packages, pkg)
  }
}

if (length(missing_packages) > 0) {
  cat("The following packages could not be installed:\n")
  cat(paste(missing_packages, collapse = ", "), "\n")
  cat("You may need to install them manually.\n")
} else {
  cat("All packages successfully installed!\n")
} 
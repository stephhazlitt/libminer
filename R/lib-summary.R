lib_summary <- function() {
  pkgs <- utils::installed.packages()
  pkg_table <-  table(pkgs[, "LibPath"])
  pkg_df <- as.data.frame(pkg_table, stringsAsFactors = FALSE)
  names(pkg_df) <- c("library", "n_packages")
  pkg_df
}

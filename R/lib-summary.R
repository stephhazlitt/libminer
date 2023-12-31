#' R Libraries Summary
#'
#' Provides a brief summary of the locally-installed
#' R libraries
#'
#' @param sizes Should the sizes of the libraries be calculated?
#'   Logical; default `FALSE`.
#'
#' @return A data.frame containing a count of packages in
#'         each of your libraries
#' @export
#'
#' @examples
#' lib_summary()
lib_summary <- function(sizes = FALSE) {
  pkgs <- utils::installed.packages()
  pkg_table <-  table(pkgs[, "LibPath"])
  pkg_df <- as.data.frame(pkg_table, stringsAsFactors = FALSE)
  names(pkg_df) <- c("library", "n_packages")

if (sizes) {
 pkg_df <- calculate_sizes(pkg_df)
  }
  pkg_df
}


#' Calculating sizes
#'
#' @param df
#'
#' @return df with a lib_size column
#' @noRd
calculate_sizes <- function(df) {
  df$lib_size <- map_dbl(
  df$library,
  ~ sum(fs::file_size(fs::dir_ls(.x, recurse = TRUE)))
)
  df
}

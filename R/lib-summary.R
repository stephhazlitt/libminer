#' R Libraries Summary
#'
#' Provides a brief summary of the locally-installed
#' R libraries
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
  pkg_df$lib_size <- vapply(
    pkg_df$library,
    function(x){
      sum(fs::file_size(fs::dir_ls(x, recurse = TRUE)))
    },
    FUN.VALUE = double(1)
  )
}
  pkg_df
}

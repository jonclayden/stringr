#' The length of a string (in characters).
#'
#' @inheritParams str_detect
#' @return numeric vector giving number of characters in each element of the
#'   character vector.  Missing string have missing length.
#' @keywords character
#' @seealso \code{\link{nchar}} which this function wraps
#' @export
#' @examples
#' str_length(letters)
#' str_length(c("i", "like", "programming", NA))
str_length <- function(string) {
  string <- check_string(string)

  nc <- nchar(string, allowNA = TRUE)
  is.na(nc) <- is.na(string)
  nc
}

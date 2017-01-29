#' Transform levels of a factor with a regular expression
#'
#' Replace the factor levels with a regular expression.
#' \code{fct_replace} replaces the factor levels using
#' \code{\link[stringr]{str_replace}}, while \code{fct_replace_all} uses
#' \code{\link[stringr]{str_replace_all}}
#'
#' @param f A factor
#' @param pattern,replacement Pattern and replacement regular expressions.
#'   See \code{\link[stringr]{str_replace}}.
#' @return A factor vector with the values of \code{f} and transformed levels.
#' @importFrom stringr str_replace
#' @export
#' @examples
#' x <- factor(c("apple", "bear", "banana", "deer"))
#' fct_replace(x, "[aeiou]+", "-")
#' fct_replace_all(x, "[aeiou]+", "-")
fct_replace <- function(f, pattern, replacement) {
  fct_relabel(f, stringr::str_replace, pattern, replacement)
}

#' @rdname fct_replace
#' @export
#' @importFrom stringr str_replace_all
fct_replace_all <- function(f, pattern, replacement) {
  fct_relabel(f, str_replace_all, pattern, replacement)
}

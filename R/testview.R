
# Open random rows from `iris` in RStudio's Viewer Pane.
#
# If not running in RStudio, opens it in the default viewer window.
#
# @return
#' Invisibly returns a dataframe.
#'
#' @export
#' @md
testView <- function() {
    result <- iris[sample(1:150, 50),]

    # Retrieves the RStudio version of View() if it exists, otherwise gets the
    # regular version.
    # https://stackoverflow.com/a/48242386/5578429
    myView <- function(x, title) {
        get("View", envir = as.environment("package:utils"))(x, title)
    }

    myView(result , "50 rows of 'iris'")
    return(invisible(result))
}




# Open random rows from `iris` in RStudio's Viewer Pane, but with dot name
#
# If not running in RStudio, opens it in the default viewer window.
#
# @return
#' Invisibly returns a dataframe.
#'
#' @export
#' @md
test.View <- testView

#' k-th largest element of a vector
#'
#' This function returns the k-th largest element in a vector with two parameters, nums and k on a 1-index basis.
#' If k is smaller than 1, this function will show a warning message and set k to 1 automatically.
#' Also if k is larger than the length of the vector, this function will show a warning message,
#' and set k to the length of the vector automatically.
#'
#' @param nums, a numeric vector where we would like to find elements. This function is trying to find a target in a group of numbers so this parameter is named as nums.
#' @param k, a numeric value that specifies the k-th largest element in the vector. This function is trying to find the k-th largest element in a vector so this parameter is named as k.
#' @return a numeric value which is the k-th largest element in the vector
#' @examples
#' kth_largest_element(c(5, 4, 8, 7, 3, 6, 9, 1, 2, 0), 1)
#' kth_largest_element(c(3, 7, 9, 3), 2)
#' @export


kth_largest_element <- function(nums, k) {
  if (!is.numeric(nums)) {
    stop("Error: object for 'nums' must be numeric. You have input an object of class: ", class(nums)[1])
  }
  if (!is.numeric(k)) {
    stop("Error: object for 'k' must be numeric. You have input an object of class: ", class(nums)[2])
  }
  len <- length(nums)
  if (len == 0) {
    stop("Error: 'nums' is empty. Cannot find any target in an empty vector")
  }
  if (k < 1) {
    warning("'k' is smaller than 1, setting k = 1")
    k <- 1
  }
  if (k > len) {
    warning("'k' is larger than length of nums, ", len, ", setting k = ", len)
    k <- len
  }
  return (sort(nums,partial=len-k+1)[len-k+1])
}

# gcd.r
# vectorized version of the greatest common divisor algorithm
# source: https://stackoverflow.com/questions/75288421/faster-ways-to-generate-yellowstone-sequence-a098550-in-r


# Define a vectorized gcd() function.  We'll be testing
# lots of gcds at once.  This uses the Euclidean algorithm.

gcd <- function(x, y) { # vectorized gcd
  while (any(y != 0)) {
    x1 <- ifelse(y == 0, x, y)
    y <- ifelse(y == 0, 0, x %% y)
    x <- x1
  }
  x
}

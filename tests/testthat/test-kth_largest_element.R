normal_vector = c(5, 4, 8, 7, 3, 6, 9, 1, 2, 0)
test_that("kth largest computes correctly", {
  expect_equal(7, kth_largest_element(normal_vector, 3))
})

test_that("kth largest computes correctly", {
  expect_true(9 == kth_largest_element(normal_vector, 1))
})

char_vector = c('a', 'b', 'c', 'd', 'e')
test_that("cannot process character vector", {
  expect_error(kth_largest_element(char_vector, 4))
})

zero_vector = c()
test_that("cannot process empty vector", {
  expect_error(kth_largest_element(zero_vector, 4))
})

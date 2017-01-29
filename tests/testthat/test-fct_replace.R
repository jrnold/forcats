context("fct_replace")

test_that("basic fct_replace works", {
  f1 <- factor(c("a1", "a2a", "a343", "b1", "b23"))
  f2 <- factor(c("a", "a2a", "a", "b", "b"))
  expect_equal(fct_replace(f1, "[0-9]+$", ""), f2)
})

test_that("basic fct_replace_all works", {
  f1 <- factor(c("a1b1", "a2c2", "a3-d",
                 "b1--4", "abc123"))
  f2 <- factor(c("a.b.", "a.c.", "a.d", "b.", "abc."))
  expect_equal(fct_replace_all(f1, "[^A-Za-z]+", "."), f2)
})

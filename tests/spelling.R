if (requireNamespace("spelling", quietly = TRUE)) {
  spelling::update_wordlist(confirm = FALSE)
  spelling::spell_check_test(
    vignettes = TRUE,
    error = FALSE,
    skip_on_cran = TRUE
  )
}

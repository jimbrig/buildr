
#  ------------------------------------------------------------------------
#
# Title : buildr R Package Development
#    By : Jimmy Briggs
#  Date : 2024-09-06
#
#  ------------------------------------------------------------------------


# libraries ---------------------------------------------------------------

require(devtools)
require(usethis)
require(pkgload)
require(remotes)
require(roxygen2)
require(testthat)

require(attachment)
require(pkgdown)


usethis::use_description()
usethis::use_namespace()
usethis::use_roxygen_md()
usethis::use_readme_md()
usethis::use_package_doc()
usethis::use_import_from("rlang", c(".data", ".env", "caller_env", "caller_arg", "abort"))
usethis::use_import_from("tibble", c("tibble", "as_tibble"))
usethis::use_import_from("glue", "glue")
usethis::use_tibble()

usethis::use_mit_license("Jimmy Briggs")
usethis::use_spell_check()
spelling::update_wordlist()

attachment::att_amend_desc()
devtools::document()

usethis::use_testthat()
usethis::use_test("buildr")
devtools::check()

lintr::use_lintr()
usethis::use_build_ignore(".lintr")

usethis::use_coverage()

usethis::use_github_links()

usethis::use_vignette("gmhleasr")

# github actions ----------------------------------------------------------

usethis::use_github_action(
  name = "document",
  save_as = "roxygen.yml",
  badge = TRUE
)

usethis::use_github_action(
  name = "lint",
  save_as = "lint.yml",
  badge = TRUE
)

usethis::use_github_action(
  name = "pr-commands",
  save_as = "pull-requests.yml",
  badge = TRUE
)

usethis::use_github_action(
  name = "style",
  save_as = "style.yml",
  badge = TRUE
)

usethis::use_github_action(
  name = "test-coverage",
  save_as = "coverage.yml",
  badge = TRUE
)

usethis::use_github_action(
  name = "check-standard",
  save_as = "check.yml",
  badge = TRUE
)

usethis::use_pkgdown_github_pages()


# functions ---------------------------------------------------------------

c(
  "utils"
) |>
  purrr::walk(usethis::use_test, open = FALSE)


usethis::use_vignette("entrata", "Entrata API")
usethis::use_vignette("decisions", "Architecture Decision Records")


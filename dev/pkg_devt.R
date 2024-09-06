
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

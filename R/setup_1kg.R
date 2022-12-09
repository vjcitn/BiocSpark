#' set up the thousand-genomes demo from sparkhail
#' @importFrom sparklyr spark_connect
#' @import sparkhail
#' @param s_context a spark_connect result
#' @param h_context a sparkhail::hail_context result
#' @examples
#' sc <- sparklyr::spark_connect(master = 'local', 
#'         version = '2.4', config = sparkhail::hail_config())
#' hl <- sparkhail::hail_context(sc)
#' mt <- setup_1kg(sc, hl)
#' df1kg = sparkhail::hail_dataframe(mt)
#' @export
setup_1kg = function(s_context, h_context) {
  td = tempdir("demo1kg")
  sparkhail::hail_get_1kg(td)
  sparkhail::hail_read_matrix(h_context, paste0(td, "/1kg.mt"))
}



gg_check <- function(gg, dict, ignore) {

  require("hunspell", "hunspell")
  require("stringi", "stri_extract_all_words")

  if (missing(dict)) dict <- hunspell::dictionary("en_GB")
  if (missing(ignore)) ignore <- hunspell::en_stats

  if (inherits(gg, "labels")) {
    lbl <- gg
  } else if ("labels" %in% names(gg)) {
    lbl <- gg$labels
  } else {
    return(gg)
  }

  if (length(lbl) > 0) {

    tmp <- lapply(names(lbl), function(lab) {

      if (length(lbl[[lab]]) > 0) {
        words <- stringi::stri_extract_all_words(lbl[[lab]])
        words <- unlist(words)
        w_tmp <- hunspell::hunspell(words, "text", dict = dict, ignore = ignore)
        words <- w_tmp[which(sapply(w_tmp, length) > 0)]
        if (length(words) > 0) {
          message(sprintf("Possible misspelled words in [%s]: (%s)",
                          lab, paste0(words, collapse=", ")))
        }
      }

    })

  }

  gg

}

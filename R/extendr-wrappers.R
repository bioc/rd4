# Generated by extendr: Do not edit by hand
#
# This file was created with the following call:
#   .Call("wrap__make_rd4_wrappers", use_symbols = TRUE, package_name = "rd4")

#' @docType package
#' @usage NULL
#' @useDynLib rd4, .registration = TRUE
NULL

#' D4Source class
#'
#' This is the primary way of interacting with D4 sources.
#'
#' @examples
#' d4 <- D4File$new(path)
#' chroms <- d4$get_chroms()
#' @export
D4Source <- new.env(parent = emptyenv())

D4Source$new <- function(source) .Call(wrap__D4Source__new, source)

D4Source$get_source <- function() .Call(wrap__D4Source__get_source, self)

D4Source$get_chroms <- function() .Call(wrap__D4Source__get_chroms, self)

D4Source$custom <- function() .Call(wrap__D4Source__custom, self)

D4Source$get_tracks <- function() .Call(wrap__D4Source__get_tracks, self)

D4Source$query <- function(chr, left, right, track) .Call(wrap__D4Source__query, self, chr, left, right, track)

#' @rdname D4Source
#' @usage NULL
#' @export
`$.D4Source` <- function (self, name) { func <- D4Source[[name]]; environment(func) <- environment(); func }

#' @export
`[[.D4Source` <- `$.D4Source`

#' A context object that holds onto the original query parameters
#' @export
Query <- new.env(parent = emptyenv())

Query$chr <- function() .Call(wrap__Query__chr, self)

Query$left <- function() .Call(wrap__Query__left, self)

Query$right <- function() .Call(wrap__Query__right, self)

#' @rdname Query
#' @usage NULL
#' @export
`$.Query` <- function (self, name) { func <- Query[[name]]; environment(func) <- environment(); func }

#' @export
`[[.Query` <- `$.Query`

#' The object returned after querying a [`D4Source`]
#' @export
QueryResult <- new.env(parent = emptyenv())

QueryResult$results <- function() .Call(wrap__QueryResult__results, self)

QueryResult$query <- function() .Call(wrap__QueryResult__query, self)

QueryResult$source <- function() .Call(wrap__QueryResult__source, self)

QueryResult$track <- function() .Call(wrap__QueryResult__track, self)

#' @rdname QueryResult
#' @usage NULL
#' @export
`$.QueryResult` <- function (self, name) { func <- QueryResult[[name]]; environment(func) <- environment(); func }

#' @export
`[[.QueryResult` <- `$.QueryResult`

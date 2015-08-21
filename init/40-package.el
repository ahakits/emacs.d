;; -*- coding:utf-8-unix; -*-
;; package.el
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Package
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(when (require 'package nil t)
  ;; add to package-archives Marmalade
  (add-to-list 'package-archives
               '("marmalade" . "http://marmalade-repo.org/packages/"))
  ;; add to package-archives ELPA
  (add-to-list 'package-archives
               '("ELPA" . "http://tromey.com/elpa/"))
  ;; add to load-path installed package & require
  (package-initialize))

;; -*- coding:utf-8-unix; -*-
;; anything-for-document.el
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; anything-for-document
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; define source for anything-for-document
(setq anything-for-document-sources
      (list anything-c-source-man-pages
            anything-c-source-info-cl
            anything-c-source-info-pages
            anything-c-source-info-elisp
            anything-c-source-apropos-emacs-commands
            anything-c-source-apropos-emacs-functions
            anything-c-source-apropos-emacs-variables))

;; define anything-for-document
(defun anything-for-document ()
  "Preconfigured 'anything' for anything-for-document."
  (interactive)
  (anything anything-for-document-sources
            (thing-at-point 'symbol) nil nil nil
            "*anything for document*"))

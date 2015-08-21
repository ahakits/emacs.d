;; -*- coding:utf-8-unix; -*-
;; init.el
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; init
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;--------------------------------------
;; el-get
;;--------------------------------------
(add-to-list 'load-path (locate-user-emacs-file "el-get/el-get"))
(unless (require 'el-get nil 'noerror)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.githubusercontent.com/dimitri/el-get/master/el-get-install.el")
    (goto-char (point-max))
    (eval-print-last-sexp)))
;; init-loader
(el-get-bundle init-loader)

;;--------------------------------------
;; load-path
;;--------------------------------------
;; if version > Emacs 23
;;set user-emacs--directory
(when (> emacs-major-version 23)
  (defvar user-emacs-directory "~/.emacs.d"))
;; load-path
(defun add-to-load-path (&rest paths)
  (let (path)
    (dolist (path paths paths)
      (let ((default-directory
              (expand-file-name (concat user-emacs-directory path))))
        (add-to-list 'load-path default-directory)
        (if (fboundp 'normal-top-level-add-subdirs-to-load-path)
            (normal-top-level-add-subdirs-to-load-path))))))
;; add-to-load-path
(add-to-load-path "init" "el-get")

;;--------------------------------------
;; init-loader
;;--------------------------------------
(require 'init-loader)
(init-loader-load "~/.emacs.d/init")

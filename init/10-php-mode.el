;; -*- coding:utf-8-unix; -*-
;; php-mode.el
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; php-mode
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(when (require 'php-mode nil t)
  (add-to-list 'auto-mode-alist '("\\.ctp\\'" . php-mode))
  (setq php-search-url "http://jp.php.net/ja/")
  (setq php-manual-url "http://jp.php.net/manual/ja"))

;; settings indent for php-mode
(defun php-indent-hook ()
  (setq indent-tabs-mode nil)
  (setq c-basic-offset 4)
  (c-set-offset 'case-label '+) ; switch case lavel
 ;(c-set-offset 'arglist-intro '+) ; array indent
 ;(c-set-offset 'arglist-close 0)
  (c-set-offset 'arglist-cont-nonempty' 4)
  (defun ywb-php-lineup-arglist-intro (langelem)
    (save-excursion
      (goto-char (cdr langelem))
      (vector (+ (current-column) c-basic-offset))))
  (defun ywb-php-lineup-arglist-close (langelem)
    (save-excursion
      (goto-char (cdr langelem))
      (vector (current-column))))
  (c-set-offset 'arglist-intro 'ywb-php-lineup-arglist-intro) ; array indent
  (c-set-offset 'arglist-close 'ywb-php-lineup-arglist-close))
(add-hook 'php-mode-hook 'php-indent-hook)
(add-hook 'php-mode-hook (lambda () (c-set-style "linux"))) ; indent style

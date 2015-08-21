;; -*- coding:utf-8-unix; -*-
;; js-mode.el
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; js-mode js2-mode
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;--------------------------------------
;; js-mode
;;--------------------------------------
(defun js-indent-hook ()
  ;; indent level 4
  (setq js-indent-level 4
        js-expr-indent-offset 2
        indent-tabs-mode nil)
  ;; define indent function switch case lavel
  (defun my-js-indent-line ()
    (interactive)
    (let* ((parse-status (save-excursion (syntax-ppss (point-at-bol))))
           (offset (- (current-column) (current-indentation)))
           (indentation (js--proper-indentation parse-status)))
      (back-to-indentation)
      (if (looking-at "case\\s-")
          (indent-line-to (+ indentation 2))
        (js-indent-line))
      (when (> offset 0) (forward-char offset))))
  ;; set indent line for case lavel
  (set (make-local-variable 'indent-line-function) 'my-js-indent-line)
  )
;; add hook js-mode
(add-hook 'js-mode-hook 'js-indent-hook)

;;--------------------------------------
;; js2-mode
;;--------------------------------------
;; https://github.com/mooz/js2-mode
(autoload 'js2-mode "js2-mode" nil t)
(add-to-list 'auto-mode-alist '("\\.\\(js\\|json\\)$" . js2-mode))
;; add hook js2-mode
(add-hook 'js2-mode-hook
          #'(lambda ()
              (require 'js)
              (setq js-indent-level 4
                    js-expr-indent-offset 4
                    indent-tabs-mode nil)
              (set (make-local-variable 'indent-line-function) 'js-indent-line)))

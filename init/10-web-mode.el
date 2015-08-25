;; -*- coding:utf-8-unix; -*-
;; web-mode.el
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; web-mode
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(require 'web-mode)
;; emacs varsin < 24
(when (< emacs-major-version 24)
  (defalias 'prog-mode 'fundamental-mode))

;; settings
(add-to-list 'auto-mode-alist '("\\.phtml$"     . web-mode))
(add-to-list 'auto-mode-alist '("\\.tpl$"       . web-mode))
(add-to-list 'auto-mode-alist '("\\.tpl\\.php$" . web-mode))
(add-to-list 'auto-mode-alist '("\\.jsp$"       . web-mode))
(add-to-list 'auto-mode-alist '("\\.as[cp]x$"   . web-mode))
(add-to-list 'auto-mode-alist '("\\.erb$"       . web-mode))
(add-to-list 'auto-mode-alist '("\\.html?$"     . web-mode))
;; indent
(defun web-mode-hook ()
  "Hooks for Web mode."
  (setq web-mode-markup-indent-offset 2)
  (setq web-mode-css-offset           2)
  (setq web-mode-script-offset        4)
  (setq web-mode-php-offset           4)
  (setq web-mode-java-offset          4)
  (setq web-mode-asp-offset           2)
  (setq-default indent-tabs-mode nil))
(add-hook 'web-mode-hook 'web-mode-hook)

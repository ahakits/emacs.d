;; -*- coding:utf-8-unix; -*-
;; emacs-keybind.el
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Emacs Key Bind
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; bind to "C-m" for newline-and-indent. default:newline
(define-key global-map (kbd "C-m") 'newline-and-indent)
;; bind to "C-h" for <backspace>
(keyboard-translate ?\C-h ?\C-?)
;; bind to "C-x ?" for help
(define-key global-map (kbd "C-x ?") 'help-command)
;; bind to "C-c l" for toggle-truncate-lines
(define-key global-map (kbd "C-c l") 'toggle-truncate-lines)
;; bind to "C-t" for other-window default:transpose-chars
(define-key global-map (kbd "C-t") 'other-window)
;; bind to "C-c i" for indent-region
(define-key global-map (kbd "C-c i") 'indent-region)

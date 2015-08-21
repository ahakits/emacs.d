;; -*- coding:utf-8-unix; -*-
;; keybind.el
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Key Bind
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;---------- cua ---------------------------------
;; bind to "C-x RET" for cua-set-rectangle-mark
(define-key global-map (kbd "C-x RET") 'cua-set-rectangle-mark)

;;---------- php-mode ----------------------------
;; bind to "C-x p" for php-mode
(define-key global-map (kbd "C-x p") 'php-mode)

;;---------- skk-mode ----------------------------
;; bind to "C-\" for skk-mode
(when (require 'skk nil t)
  (global-set-key "\C-\\" 'skk-mode))

;;---------- anything ----------------------------
;; bind to "C-;" for anything
(define-key global-map (kbd "M-;") 'anything)
;; bind to "M-y" for anything-show-kill-ring
(define-key global-map (kbd "M-y") 'anything-show-kill-ring)

;;---------- multiple-cursors --------------------
;; bind to "C-x C-a" for mc/mark-all-like-this
(define-key global-map (kbd "C-x C-a") 'mc/mark-all-like-this)
;; bind to "M-n" for mc/mark-next-like-this
(define-key global-map (kbd "M-n") 'mc/mark-next-like-this)
;; bind to "M-p" for mc/mark-previous-like-this
(define-key global-map (kbd "M-p") 'mc/mark-previous-like-this)

;;---------- yasnippet ---------------------------
;; bind to "C-x y i" for yas-insert-snippet
(define-key global-map (kbd "C-x y i") 'yas-insert-snippet)
;; bind to "C-x y n" for yas-new-snippet
(define-key global-map (kbd "C-x y n") 'yas-new-snippet)
;; bind to "C-x y v" for yas-visit-snippet
(define-key global-map (kbd "C-x y v") 'yas-visit-snippet-file)

;;---------- redo+ -------------------------------
(when (require 'redo+ nil t)
  ;; bind to "C-'" for redo+
  (global-set-key (kbd "C-'") 'redo))

;;---------- point-undo --------------------------
;; bind to "M-[","M-]" for point-undo
(when (require 'point-undo nil t)
  (define-key global-map (kbd "M-[") 'point-undo)
  (define-key global-map (kbd "M-]") 'point-redo))

;;---------- elscreen ----------------------------
(elscreen-start)
;; bind to "C-z C-z" for use default "C-z"
(when (require 'elscreen nil t)
  (if window-system
      (define-key elscreen-map (kbd "C-z") 'iconify-or-deiconify-frame)
    (define-key elscreen-map (kbd "C-z") 'suspend-emacs)))

;;---------- wdired ------------------------------
(require 'wdired nil t)
(define-key dired-mode-map "r" 'wdired-change-to-wdired-mode)

;;---------- direx ------------------------------
(global-set-key (kbd "C-x C-j") 'direx:jump-to-directory-other-window)

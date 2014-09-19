
(require 'package)

(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/") t)

(add-to-list 'package-archives
             '("tromey" . "http://tromey.com/elpa/") t)

(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)

;;(add-to-list 'package-pinned-packages '(cider . "melpa-stable") t)

(package-initialize)

;;(when (not package-archive-contents)
;;  (package-refresh-contents))

(defvar my-packages '(;;starter-kit
                      ;;starter-kit-lisp
                      ;;starter-kit-bindings
                      ;;starter-kit-eshell
                      clojure-mode
                      clojure-test-mode
                      cider
                      ;;cider-nrepl
                      scala-mode2
                      paredit))

(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-refresh-contents)
    (package-install p)))

(remove-hook 'prog-mode-hook 'esk-turn-on-hl-line-mode)
(remove-hook 'prog-mode-hook 'esk-local-column-number-mode)
(remove-hook 'prog-mode-hook 'esk-global-whitespace-mode)
(remove-hook 'prog-mode-hook 'esk-local-comment-auto-fill)
(remove-hook 'prog-mode-hook 'esk-turn-on-hl-line-mode)
(remove-hook 'prog-mode-hook 'esk-turn-on-save-place-mode)
(remove-hook 'prog-mode-hook 'esk-pretty-lambdas)
(remove-hook 'prog-mode-hook 'esk-add-watchwords)
(remove-hook 'prog-mode-hook 'idle-highlight-mode)



(setq ring-bell-function 'ignore)

;;
;;; Mac option key is meta
(setq mac-option-key-is-meta t)
(setq mac-option-modifier 'meta)

;; Super speed
(setq vc-handled-backends nil)

;; Add to load path:
;;(add-to-list 'load-path "~/.emacs.d/")

;; Switch frames with option-arrow
;; Useful for shell mode
(global-set-key "\M-`" 'other-frame)

;; custom-set-variables was added by Custom -- don't edit or cut/paste it
;; Your init file should contain only one such instance.
(custom-set-variables
 '(auto-compression-mode t nil (jka-compr)) 
 '(case-fold-search t)
 '(current-language-environment "UTF-8")
 '(default-input-method "rfc1345")
 '(global-font-lock-mode t nil (font-lock)))

;; Follow sybolic links
(setq vc-follow-symlinks t)

;;Set Smooth Scrolling
;;(require 'smooth-scrolling)
(set-variable 'scroll-step 1)

;; In run-python mode, look in local directory for modules
(setq python-remove-cwd-from-path nil)

;; Goto line
;pressing Alt-g or Meta-g is goto line
;;(global-set-key [(alt g)] 'goto-line)
;;(global-set-key [(meta g)] 'goto-line)


;; ========== Place Backup Files in Specific Directory ==========

;; Disable Auto-save to eliminate #file#
(setq auto-save-default nil)
;; Backup by copying
(setq backup-by-copying t)
;; Enable versioning with custom values
(setq delete-old-versions t
  kept-new-versions 6
  kept-old-versions 2
  version-control t)
;; Save all backup file in this directory.
(setq backup-directory-alist `(("." . "~/.emacs_backups")))


;; Some random things
(setq inhibit-startup-message t)
(setq font-lock-maximum-decoration t)
(line-number-mode 1)

(setq tab-width 4)

(setq tab-width 4)
(setq tab-stop-list '(4 8 12 16 20 24 28 32 36 40 44 48 52 56 60 64 68 72 76 80))
(setq-default indent-tabs-mode nil)
(setq indent-tabs-mode nil)

;; whitespace
;;(highlight-tabs)
;;(highlight-trailing-whitespace)
(add-to-list 'load-path "~/.elisp/")
(require 'whitespace)
(setq whitespace-style (quote (spaces tabs newline space-mark tab-mark newline-mark)))

;; Show trailing whitespace
(setq-default show-trailing-whitespace t)

;; Highlight tabs
(setq whitespace-style '(tabs tab-mark)) ;turns on white space mode only for tabs
(global-whitespace-mode 1)

;; More highlight tab stuff
(defface extra-whitespace-face
  '((t (:background "pale green")))
  "Used for tabs and such.")

(defvar my-extra-keywords
  '(("\t" . 'extra-whitespace-face)))

(add-hook 'emacs-lisp-mode-hook
          (lambda () (font-lock-add-keywords nil my-extra-keywords)))

(add-hook 'text-mode-hook
          (lambda () (font-lock-add-keywords nil my-extra-keywords)))


;;(tool-bar-mode -1)
(setq transient-mark-mode nil)

(setq electric-pair-pairs nil)


;; Fixing bibtex
(setq eval-last-sexp nil)
(setq eval-last-sexp-1 nil)


(setq *true-mac-cut-buffer* "")
(setq *true-mac-cut-buffer2* t)

;; ispell aspell
(setq-default ispell-program-name "aspell")


;; encoding
(setq locale-coding-system 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-selection-coding-system 'utf-8)
(prefer-coding-system 'utf-8)

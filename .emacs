(require 'package) ;; You might already have this line
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/"))
(when (< emacs-major-version 24)
  ;; For important compatibility libraries like cl-lib
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))
(package-initialize) ;; You might already have this line

;;Starts evil mode
	(add-to-list 'load-path "~/.emacs.d/evil")
	(require 'evil)
	(evil-mode 1)

;;Making indent tab only. No spaces
	(setq-default indent-tabs-mode t)

;; set default tab char's display width to 4 spaces
	(setq-default tab-width 4) ; emacs 23.1, 24.2, default to 8
	(setq tab-stop-list (number-sequence 4 200 4))

(setq indent-line-function 'insert-tab)

;; make tab key do indent first then completion.
	(setq-default tab-always-indent 'complete)

;;vim like powerline
	(require 'powerline)
	(powerline-default-theme)


;;C/C++ auto complete
;;(require 'auto-complete-c-headers)
;;(add-to-list 'ac-sources 'ac-source-c-headers).

;;Code highlight
	(highlight-blocks-mode 1)


;;auto-complete-mode
  (require 'cl-lib)
  (require 'popup)
  (require 'auto-complete-config)
  (global-auto-complete-mode t)

;;relative line number
  (global-relative-line-numbers-mode)

;;highlight brackets set
	(show-paren-mode t)

;;autopair brackets
  (require 'autopair)
  (autopair-global-mode) ;; to enable in all buffers


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (tango-dark)))
 '(inhibit-startup-screen t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

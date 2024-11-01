(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(flx-ido elscreen-tab graphene)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(menu-bar-mode 1) ;; finally enable it again
(when (fboundp 'tool-bar-mode)
  (tool-bar-mode -1))
(when (fboundp 'scroll-bar-mode)
  (scroll-bar-mode -1))

;; Ignore .Xresources
(advice-add 'x-apply-session-resources :override #'ignore)
;; Make Emacs works with Ibus or other IM settings
;;(require 'iso-transl)

(setq frame-title-format "%b - Gnu/Emacs"
      icon-title-format "%b - Gnu/Emacs")
;;(setopt inhibit-startup-screen t
        ;; Temporary mute auto-save during init
;;auto-save-default nil)

(defvar ed/call-me-maybe-hook '())
(defvar ed/call-me-maybe-when-graphic-hook '())


;;(setq package-archives
;;      '(("GNU ELPA"     . "https://elpa.gnu.org/packages/")
;;        ("MELPA Stable" . "https://stable.melpa.org/packages/")
;;        ("MELPA"        . "https://melpa.org/packages/"))
;;      package-archive-priorities
;;      '(("MELPA Stable" . 10)
;;        ("GNU ELPA"     . 5)
;;        ("MELPA"        . 0)))

(require 'package)
(require 'graphene)
(elscreen-start)

(with-eval-after-load 'flycheck
  (setq flycheck-grammalecte-report-spellcheck t)
  (require 'flycheck-grammalecte)
  ;;(add-to-list 'flycheck-grammalecte-enabled-modes 'fountain-mode)
  ;;(grammalecte-download-grammalecte)
  (flycheck-grammalecte-setup))

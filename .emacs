(custom-set-variables
 '(package-selected-packages '(flx-ido elscreen-tab graphene)))
(custom-set-faces
 )

(menu-bar-mode 1) ;; finally enable it again
(when (fboundp 'tool-bar-mode)
  (tool-bar-mode -1))
(when (fboundp 'scroll-bar-mode)
  (scroll-bar-mode -1))

;; Ignore les ressources d'X
(advice-add 'x-apply-session-resources :override #'ignore)
;; Fait en sorte qu'Emacs fonctionne avec Ibus ou d'autres paramètres IM
;;(require 'iso-transl)

(setq frame-title-format "%b - Gnu/Emacs"
      icon-title-format "%b - Gnu/Emacs")
;;(setopt inhibit-startup-screen t
        ;; Désactive la sauvegarde automatique durant l'initialisation d'Emacs
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

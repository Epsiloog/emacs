;; Exige la fonctionnalité de "paquet" d'Emacs
(require 'package)

;; Ajouter le référentiel Melpa à la liste des sources de paquets
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/") t)

;; Initialise le système de paquet
(package-initialize)

;; "importation" de graphene (https://github.com/rdallasgray/graphene)
(require 'graphene)

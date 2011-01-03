
(add-to-list 'load-path (concat dotfiles-dir "/ruby-kit") )
(add-to-list 'load-path (concat dotfiles-dir "/ruby-kit/rinari") )
(add-to-list 'load-path (concat dotfiles-dir "/ruby-kit/rinari-rhtml") )
(require 'rvm)
;;(rvm-use-default)
(rvm-use "ree" "rails3")

;; Interactively Do Things (highly recommended, but not strictly required)
(require 'ido)
(ido-mode t)

(require 'rhtml-mode)

(require 'rinari)


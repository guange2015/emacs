
(add-to-list 'load-path (concat dotfiles-dir "/ruby-kit") )
(add-to-list 'load-path (concat dotfiles-dir "/ruby-kit/rinari") )
(add-to-list 'load-path (concat dotfiles-dir "/ruby-kit/emacs-rails") )
(add-to-list 'load-path (concat dotfiles-dir "/ruby-kit/rhtml") )
(add-to-list 'load-path (concat dotfiles-dir "/ruby-kit/textmate") )
(require 'rvm)
;;(rvm-use-default)
(rvm-use "ree" "rails3")

;; Interactively Do Things (highly recommended, but not strictly required)
(require 'ido)
(ido-mode t)

(require 'rhtml-mode)
(require 'rinari)
(require 'rails)

(require 'textmate)
(textmate-mode)

(add-to-list 'load-path (concat dotfiles-dir "/plugin/git-emacs") )
(require 'git-emacs)


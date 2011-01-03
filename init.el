;;(add-to-list 'load-path "~/.emacs.d/emacs-starter-kit")
;;(load "init")

(setq dotfiles-dir (file-name-directory
                    (or (buffer-file-name) load-file-name)))

(add-to-list 'load-path "~/.emacs.d/lib")
(load-file (concat dotfiles-dir "/appearance.el"))
(load-file (concat dotfiles-dir "/custom.el"))
(load-file (concat dotfiles-dir "/keybind.el"))

(add-to-list 'load-path
                  (concat dotfiles-dir "/plugin/yasnippet-0.6.1c"))
(require 'yasnippet) ;; not yasnippet-bundle
(yas/initialize)
(yas/load-directory (concat dotfiles-dir "/plugin/yasnippet-0.6.1c/snippets"))

(load-file (concat dotfiles-dir "/ruby-kit.el"))

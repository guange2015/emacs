(setenv "PATH" (concat "d:/soft/editor/unixtools/;" (getenv "PATH")))
(setq exec-path (cons "d:/soft/editor/unixtools" exec-path))

(add-hook 'shell-mode-hook 'n-shell-mode-hook)
(defun n-shell-mode-hook ()
  "12Jan2002 - sailor, shell mode customizations."
  (local-set-key '[up] 'comint-previous-input)
  (local-set-key '[down] 'comint-next-input)
  (local-set-key '[(shift tab)] 'comint-next-matching-input-from-input)
  )


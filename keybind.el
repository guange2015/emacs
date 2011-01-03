
(global-set-key "\C-x\C-m" 'execute-extended-command)
(global-set-key "\C-c\C-m" 'execute-extended-command)
(global-set-key "\C-w" 'backward-kill-word)
(global-set-key "\C-x\C-k" 'kill-region)
(global-set-key "\C-c\C-k" 'kill-region)
(global-set-key "\C-xg"  'goto-line)
(global-set-key "\M-o"  'switch-to-buffer)
(global-set-key "\C-o"  'other-window)
(global-set-key [(f2)] 'set-mark-command)
(global-set-key "\C-xm" 'set-mark-command)
(global-set-key "\C-c\C-l" 'copy-line)

(require 'rect-mark)
(global-set-key (kbd "C-x r C-m") 'rm-set-mark)
(global-set-key (kbd "C-x r C-x") 'rm-exchange-point-and-mark)
(global-set-key (kbd "C-x r C-w") 'rm-kill-region)
(global-set-key (kbd "C-x r M-w") 'rm-kill-ring-save)
(autoload 'rm-set-mark "rect-mark"
  "Set mark for rectangle." t)
(autoload 'rm-exchange-point-and-mark "rect-mark"
  "Exchange point and mark for rectangle." t)
(autoload 'rm-kill-region "rect-mark"
  "Kill a rectangular region and save it in the kill ring." t)
(autoload 'rm-kill-ring-save "rect-mark"
  "Copy a rectangular region to the kill ring." t)
  
  
(defun yyp ()
  "what description"
  (interactive)
  (move-beginning-of-line 1)
  (setq line-begin (point))
  (move-end-of-line 1)
  (setq line-end (point))
  (kill-ring-save line-begin line-end)
  (newline-and-indent)
  (yank)
  )
(global-set-key "\C-xy" 'yyp)

;; From http://www.zeuux.org/science/learning-emacs.cn.html
(defun copy-line (&optional arg)
  "Save current line into Kill-Ring without mark the line"
  (interactive "P")
  (let ((beg (line-beginning-position))
        (end (line-end-position arg)))
    (copy-region-as-kill beg end)))
 
(defun copy-line-or-region (&optional n)
  "Save current line or region into Kill-Ring. If the mark is
deactivated in current buffer, Save current line; otherwise save
the region."
  (interactive "p")
  (if mark-active
      (kill-ring-save
       (region-beginning) (region-end))
    (copy-line n)))

(global-set-key (kbd "M-w") 'copy-line-or-region)

(defun scroll-other-window-down-line(&optional n)
  (interactive "p")
  (scroll-other-window-down n))
(defun scroll-other-window-up-line(&optional n)
  (interactive "p")
  (scroll-other-window n))
(global-set-key (kbd "M-p") 'scroll-other-window-down-line)
(global-set-key (kbd "M-n") 'scroll-other-window-up-line)


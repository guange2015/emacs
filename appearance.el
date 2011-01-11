;; 外观设置
;; 不显示 Emacs 的开始画面
(setq inhibit-startup-message t)
;; 改变 Emacs 标题栏的标题
(setq frame-title-format "hhuai%b::%m")
(menu-bar-mode nil)

(defun set-frame-size-according-to-resolution ()
  (interactive)
  (if window-system
  (progn
    ;; use 120 char wide window for largeish displays
    ;; and smaller 80 column windows for smaller displays
    ;; pick whatever numbers make sense for you
    (if (> (x-display-pixel-width) 1280)
        (add-to-list 'default-frame-alist (cons 'width 120))
      (add-to-list 'default-frame-alist (cons 'width 80)))
    ;; for the height, subtract a couple hundred pixels
    ;; from the screen height (for panels, menubars and
    ;; whatnot), then divide by the height of a char to
    ;; get the height we want
    (add-to-list 'default-frame-alist 
                 (cons 'height (/ (- (x-display-pixel-height) 200) (frame-char-height)))))))


(defun frame-setting() 
(if window-system
(progn (message "start x")
;; 去掉工具栏
(tool-bar-mode nil)
;; 去掉菜单栏
(menu-bar-mode 1)
;; 去掉滚动栏
(scroll-bar-mode nil)
;;设置背景色
(set-background-color "#CCFFCC")

;;高亮
(require 'highlight-current-line)
(highlight-current-line-set-bg-color "#C4E8FD")
(highlight-current-line-on t)

;;-------------------------设置emacs启动时初始化大小-------------------------
;;(setq initial-frame-alist '((top . 0) (left . 0) (width . 125) (height . 70)))
;;-------------------------光标显示为一竖线-------------------------
(setq-default cursor-type 'bar)

;;(set-frame-size-according-to-resolution)
(set-frame-width (selected-frame) 120)

(set-frame-font "YaHei Consolas Hybrid:pixelsize=15")
(set-fontset-font (frame-parameter nil 'font)
        'han (font-spec :family "文泉驿微米黑" :size 16))
(set-fontset-font (frame-parameter nil 'font)
        'symbol (font-spec :family "文泉驿微米黑" :size 16))
(set-fontset-font (frame-parameter nil 'font)
        'cjk-misc (font-spec :family "文泉驿微米黑" :size 16))
(set-fontset-font (frame-parameter nil 'font)
        'bopomofo (font-spec :family "文泉驿微米黑" :size 16))
)))


(if (and (fboundp 'daemonp) (daemonp))
    (add-hook 'after-make-frame-functions
	      (lambda (frame)
		(with-selected-frame frame
		  (frame-setting))))
  (frame-setting))


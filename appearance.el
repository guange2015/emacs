;; 外观设置
;; 不显示 Emacs 的开始画面
(setq inhibit-startup-message t)
;; 改变 Emacs 标题栏的标题
(setq frame-title-format "hhuai%b::%m")
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

;; 操作习惯
;; 设置打开文件缺省路径
;(setq default-directory "/home/yaoheng")
;;启动语法高亮模式
(global-font-lock-mode t) 
;; 所有的问题用 y/n 方式，不用 yes/no 方式
(fset 'yes-or-no-p 'y-or-n-p)
;; 鼠标自动避开指针
(mouse-avoidance-mode 'animate)
;; 任意的打开一个新文件时，缺省使用 text-mode
(setq default-major-mode 'text-mode)
;; 在 minibuffer 上面可以显示列号
(column-number-mode t)
;; 显示默认的文档的宽度
(setq default-fill-column 100)
;; 指针不要闪，我得眼睛花了
(blink-cursor-mode -1)
(transient-mark-mode 1)
;; 当指针到一个括号时，自动显示所匹配的另一个括号
(show-paren-mode 1)
;; 去掉烦人的警告铃声
;(setq visible-bell nil)
;; 滚动页面时比较舒服，不要整页的滚动
(setq scroll-step 1
scroll-margin 3
scroll-conservatively 10000)

(setq default-buffer-file-coding-system 'utf-8-dos)
(setq set-language-environment "UTF-8")
(setq set-language-environmen "UTF-8")
(setq set-locale-environmen "UTF-8")

;;不产生备份文件
(setq make-backup-files nil)
;不产生临时文件
(setq-default make-backup-files nil) 
;;取消自动保存
(auto-save-mode 0)

(require 'linum)
(global-linum-mode t)

;;-------------------------使用Win下的选择习惯---------------
;;用shift+方向键进行选择
(pc-selection-mode)

;;-------------------------设置默认Tab宽度---------------
;;set default tab-width as 4, not 2
(setq-default indent-tabs-mode nil)
(setq default-tab-width 4)


;; Personal information
(setq user-full-name "Jiang Penghai")
(setq user-mail-address "jphome98@gmail.com")

(add-to-list 'load-path "~/.emacs.d/site-lisp")

(add-to-list 'load-path "~/.emacs.d/site-lisp/themes")
(require 'color-theme)
(color-theme-initialize)
;; 下面这行是默认的主题选择color-theme后面是主题名
;; (color-theme-classic)
;; (color-theme-calm-forest)
(color-theme-charcoal-black)

;; 进行语法加亮
(global-font-lock-mode t)
(put 'set-goal-column 'disabled nil)
(put 'narrow-to-region 'disabled nil)
(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)
(put 'LaTeX-hide-environment 'disabled nil)

;; 打开图片显示功能
;; (auto-image-file-mode t)


;; 以 y/n 替代 yes/no
(fset 'yes-or-no-p 'y-or-n-p)

;; Font
(set-default-font "13")
;; 不要生成临时文件
(setq-default make-backup-files nil)
;; 设置中文语言环境
;; (set-language-environment 'Chinese-GB)
;; 写文件的编码方式
;; (set-buffer-file-coding-system 'gb2312)
(set-buffer-file-coding-system 'utf-8)
;; 新建文件的编码方式
;; (setq default-buffer-file-coding-system 'gb2312)
(setq default-buffer-file-coding-system 'utf-8)
;; 终端方式的编码方式
(set-terminal-coding-system 'utf-8)
;; 键盘输入的编码方式
;; (set-keyboard-coding-system 'gb2312)
;; 读取或写入文件名的编码方式
(setq file-name-coding-system 'utf-8)
;; 打开就启用 text 模式
(setq default-major-mode 'text-mode)

;;状态栏显示行列号
(setq column-number-mode t)
(setq line-number-mode t)
;; 显示行号
(setq linum-format "%5d ")
(global-linum-mode t)
;; 支持中键粘帖
(setq mouse-yank-at-point t)

;; 显示括号匹配
(show-paren-mode t)
;; 隐藏工具栏
;; (tool-bar-mode nil)

;; 鼠标滚轮 防止滚轮滚动过快
;; (defun up-slightly () (interactive) (scroll-up 3))
;; (defun down-slightly () (interactive) (scroll-down 3))
(setq mouse-wheel-scroll-amount '(1 ((shift) . 1)((control)))
mouse-wheel-progressive-speed nil
scroll-step 1)

;; 支持emacs和外部程序的拷贝粘贴
(setq x-select-enable-clipboard t)

;; 设置 emacs 的标题: emacs@file /dir
(setq frame-title-format "%b  %f")

;; 设置tab为4个空格的宽度
(setq c-basic-offset 4)
(setq default-tab-width 4)
(setq-default indent-tabs-mode nil)


;; 代码折叠
(load-library "hideshow")
(add-hook 'java-mode-hook 'hs-minor-mode)
(add-hook 'perl-mode-hook 'hs-minor-mode)
(add-hook 'php-mode-hook 'hs-minor-mode)
(add-hook 'emacs-lisp-mode-hook 'hs-minor-mode)

;; 滚动条放到右侧
(customize-set-variable 'scroll-bar-mode 'right)
;; 关闭开机画面
(setq inhibit-startup-message t)
;; 光标显示为一竖线
(setq-default cursor-type 'bar)
;; 光标靠近鼠标时鼠标跳开
(mouse-avoidance-mode 'animate)
;; 去掉那个大大的工具栏
(tool-bar-mode nil)
;; 在minibuffer里启用自动补全函数和变量
(icomplete-mode t)
;; 语法高亮
(global-font-lock-mode t)
;; 设置打开文件的缺省路径
(setq default-directory "/media/main/project/xm/code")
;; (setq default-directory "e:/knowledge")
;; 使用 C-k 删除整行
(setq-default kill-whole-line t)
;; 显示时间
(setq display-time-24hr-format t)
(setq display-time-day-and-date t)
(display-time)


;; 屏蔽ecb启动的时候会弹出的提示窗口
;; (setq ecb-tip-of-the-day nil)
(add-to-list 'load-path "~/.emacs.d/site-lisp/ecb")
(setq ecb-auto-activate t
      ecb-tip-of-the-day nil)

;; ecb的导航窗口里的东西用鼠标点选/打开
;; (ecb-primary-secondary-mouse-buttons (quote mouse-1--C-mouse-1)
;; 各窗口间切换
(global-set-key [M-left] 'windmove-left)
(global-set-key [M-right] 'windmove-right)
(global-set-key [M-up] 'windmove-up)
(global-set-key [M-down] 'windmove-down)
;; 使某一ecb窗口最大化
; (define-key global-map "/C-c1" 'ecb-maximize-window-directories)
; (define-key global-map "/C-c2" 'ecb-maximize-window-sources)
; (define-key global-map "/C-c3" 'ecb-maximize-window-methods)
; (define-key global-map "/C-c4" 'ecb-maximize-window-history)
;; 恢复原始窗口布局
; (define-key global-map "/C-c`" 'ecb-restore-default-window-sizes)



;; 加载 xcsope
;; (require 'xcscope)
;; 在打开 c 或者 c++ 文件的时候才加载 xcsope
(add-hook 'c-mode-common-hook
          '(lambda ()
             (require 'xcscope)))
;; 进行查找时不更新cscope.out
(setq cscope-do-not-update-database t)

;; 快捷键
;; (define-key global-map [(control f3)]  'cscope-set-initial-directory)
;; (define-key global-map [(control f4)]  'cscope-unset-initial-directory)
(define-key global-map [(control f7)]  'cscope-find-this-symbol)
;; (define-key global-map [(control f6)]  'cscope-find-global-definition)
(define-key global-map [(control f8)] 'cscope-find-global-definition-no-prompting)
;; (define-key global-map [(control f8)]  'cscope-pop-mark)
(define-key global-map [(control f11)] 'cscope-prev-file)
(define-key global-map [(control f12)] 'cscope-next-file)
(define-key global-map [(control f9)] 'cscope-prev-symbol)
(define-key global-map [(control f10)]  'cscope-next-symbol)
(define-key global-map [(meta f9)]     'cscope-display-buffer)
(define-key global-map [(meta f10)]    'cscope-display-buffer-toggle)


(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(ecb-options-version "2.40")
 '(ecb-primary-secondary-mouse-buttons (quote mouse-1--mouse-2)))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )



;; 继承cscope窗口到ecb窗口
;;(ecb-layout-define "my-cscope-layout" left nil
;;                   (ecb-set-methods-buffer)
;;                   (ecb-split-ver 0.5 t)
;;                   (other-window 1)
;;                   (ecb-set-history-buffer)
;;                   (ecb-split-ver 0.25 t)
;;                   (other-window 1)
;;                   (ecb-set-cscope-buffer))
;;(defecb-window-dedicator ecb-set-cscope-buffer " *ECB cscope-buf*"
;;  (switch-to-buffer "*cscope*"))
;;(setq ecb-layout-name "my-cscope-layout")

;;加载auto-header.el文件,自动添加文件头
;; 添加文件头：C-x C-h m
;; 添加函数头：C-x C-h f
;;(require 'auto-header)
;; 设置文件头中的姓名
;;(setq header-full-name "fifar")

;; (add-to-list 'load-path "~/.emacs.d/site-lisp/company")
;; (require 'company)


;; 为h、c、c++源文件添加doxygen风格的注释
;; shortcut:
;; C-c d f         在某一函数前插入注释
;; C-c d i         在当前文件插入注释
;; C-c d ;         为一个变量插入注释
;; C-c d m         多行注释
;; C-c d s         单行注释
;; C-c d ?         从符号表中查找当前光标所在内容的文档
;; C-c d r         重新扫描Doxygen的tags文件
(add-to-list 'load-path "~/.emacs.d/site-lisp/doxymacs")
(require 'doxymacs)
(defconst doxymacs-C++-function-comment-template
  '((let ((next-func (doxymacs-find-next-func)))
      (if next-func
          (list
           'l
           "/** " '> 'n
           " * " 'p '> 'n
           " * " '> 'n
           (doxymacs-parm-tempo-element (cdr (assoc 'args next-func)))
           (unless (string-match
                    (regexp-quote (cdr (assoc 'return next-func)))
                    doxymacs-void-types)
             '(l " * " > n " * " (doxymacs-doxygen-command-char)
                 "return " (p "Returns: ") > n))
           " */" '>)
        (progn
          (error "Can't find next function declaration.")
          nil))))
  "Default C++-style template for function documentation.")

(defun my-doxymacs-font-lock-hook ()
  (if (or (eq major-mode 'c-mode) (eq major-mode 'c++-mode) (eq major-mode 'h-mode))
      (doxymacs-font-lock)))
(add-hook 'font-lock-mode-hook 'my-doxymacs-font-lock-hook)
(add-hook 'c-mode-common-hook 'doxymacs-mode)
(add-hook 'c++-mode-common-hook 'doxymacs-mode)
(add-hook 'h-mode-common-hook 'doxymacs-mode)
;;
(setq doxymacs-doxygen-style "C++")


(add-to-list 'load-path "~/.emacs.d/site-lisp/undo-tree")
(require 'undo-tree)
(global-undo-tree-mode)


(add-to-list 'load-path "~/.emacs.d/site-lisp/whitespace")
(require 'whitespace)
(setq whitespace-style
      '(face
        trailing tabs lines lines-tail empty
        space-after-tab space-before-tab))
;; 在保存前删除尾部多余的空格
(add-hook 'before-save-hook 'delete-trailing-whitespace)


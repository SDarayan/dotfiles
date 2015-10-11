; ~/.emacs.d/my-noexternals.el

;; Remove scrollbars, menu bars, and toolbar
(when (fboundp 'menu-bar-mode) (menu-bar-mode -1))
(when (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(when (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))

;; Wind-move
(global-set-key (kbd "M-j") 'windmove-left)
(global-set-key (kbd "M-k") 'windmove-down)
(global-set-key (kbd "M-l") 'windmove-up)
(global-set-key (kbd "M-;") 'windmove-right)

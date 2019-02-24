;~/.emacs.d/my-loadpackages.el

; loading package
(load "~/.emacs.d/my-packages.el")

; loading theme
(load-theme 'monokai t)

; helm
(require 'helm-config)
(require 'helm-ls-git)

; Helm-variables
(setq helm-net-prefer-curl                            t
      helm-kill-ring-threshold                        1
      helm-scroll-amount                              4
      helm-idle-delay                                 0.01
      helm-input-idle-delay                           0.01
      helm-ff-auto-update-initial-value               t
      helm-grep-default-command                       "ack-grep -Hn --color --smart-case --no-group %e %p %f"
      helm-grep-default-recurse-command               "ack-grep -H --color --smart-case --no-group %e %p %f"
      helm-reuse-last-window-split-state              t
      helm-always-two-windows                         t
      helm-split-window-in-side-p                     nil
      helm-M-x-requires-pattern                       0
      helm-dabbrev-cycle-threshold                    5
      helm-boring-file-regexp-list
      '("\\.git$" "\\.hg$" "\\.svn$" "\\.CVS$" "\\._darcs$" "\\.la$" "\\.o$" "\\.i$" "\\.steam$" "\\undo-tree-history$")
      helm-buffer-skip-remote-checking                t
      helm-apropos-fuzzy-match                        t
      helm-M-x-fuzzy-match                            t
      helm-lisp-fuzzy-completion                      t
      helm-completion-in-region-fuzzy-match           t
      helm-buffers-fuzzy-matching                     t
      helm-move-to-line-cycle-in-source               t
      ido-use-virtual-buffers                         t             ; Needed in helm-buffers-list
      helm-tramp-verbose                              6
      helm-locate-command                             "locate %s -e -A --regex %s"
      helm-org-headings-fontify                       t
      helm-autoresize-max-height                      80 ; it is %.
      helm-autoresize-min-height                      20 ; it is %.
      helm-buffers-to-resize-on-pa                    '("*helm apropos*" "*helm ack-grep*"
                                                        "*helm grep*" "*helm occur*" "*helm ag*"
                                                        "*helm multi occur*" "*helm git-grep*"
                                                        "*helm imenu*" "*helm imenu all*"
                                                        "*helm gid*" "*helm semantic/imenu*")
      fit-window-to-buffer-horizontally               1
      helm-open-github-closed-issue-since             7
      helm-highlight-matches-around-point-max-lines   30
      helm-search-suggest-action-wikipedia-url
      "https://fr.wikipedia.org/wiki/Special:Search?search=%s"
      helm-wikipedia-suggest-url
      "https://fr.wikipedia.org/w/api.php?action=opensearch&search="
      helm-wikipedia-summary-url
      "https://fr.wikipedia.org/w/api.php?action=parse&format=json&prop=text&section=0&page="
      helm-firefox-show-structure nil
      helm-turn-on-recentf nil
      helm-mini-default-sources '(helm-source-buffers-list helm-source-buffer-not-found)
      helm-debug-root-directory "/home/sdarayan/tmp/helm-debug"
      helm-gtags-prefix-key "M-g"
      helm-gtags-suggested-key-mapping t)

; multiple-cursors
(require 'multiple-cursors)

; symon
(require 'symon)
(symon-mode)

; undo-tree
(require 'undo-tree)
(global-undo-tree-mode)

; zone
(require 'zone)
(zone-when-idle 120)

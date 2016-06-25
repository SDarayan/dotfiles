;~/.emacs.d/my-loadpackages.el
; loading package
(load "~/.emacs.d/my-packages.el")

;;; smartparens
(require 'smartparens-config)
(show-smartparens-global-mode +1)
(smartparens-global-mode 1)

;; when you press RET, the curly braces automatically
;; add another newline
(sp-with-modes '(c-mode c++-mode)
               (sp-local-pair "{" nil :post-handlers '(("||\n[i]" "RET")))
               (sp-local-pair "/*" "*/" :post-handlers '((" | " "SPC")
                                                         ("* ||\n[i]" "RET"))))
;;; yasnippet
;;; should be loaded before auto complete so that they can work together
(require 'yasnippet)
(yas-global-mode 1)

;;; auto complete mod
;;; should be loaded after yasnippet so that they can work together
(defcustom mycustom-system-include-paths '("./" "/usr/include" )
  "This is a list of include paths that are used by the clang auto completion."
  :group 'mycustom
  :type '(repeat directory)
  )
(require 'auto-complete)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/ac-dict")
(ac-config-default)
;;; set the trigger key so that it can work together with yasnippet on tab key,
;;; if the word exists in yasnippet, pressing tab will cause yasnippet to
;;; activate, otherwise, auto-complete will
(ac-set-trigger-key "TAB")
(ac-set-trigger-key "<tab>")
(setq ac-clang-flags
      (mapcar (lambda (item)(concat "-I" item))
              (append
               mycustom-system-include-paths
               )
              )
      )

(require 'auto-complete-clang)
(require 'cc-mode)
(define-key c++-mode-map (kbd "C-x a") 'ac-complete-clang)
;; replace C-S-<return> with a key binding that you want

(require 'auto-complete-c-headers)
(add-to-list 'ac-sources 'ac-source-c-headers)

;;; undo-tree
(require 'undo-tree)
(global-undo-tree-mode)

;;; helm
(require 'helm-config)
(helm-multi-key-defun helm-multi-lisp-complete-at-point
    "Multi key function for completion in emacs lisp buffers.
First call indent, second complete symbol, third complete fname."
  '(helm-lisp-indent
    helm-lisp-completion-at-point
    helm-complete-file-name-at-point)
  0.3)

(if (and (boundp 'tab-always-indent)
         (eq tab-always-indent 'complete)
         (boundp 'completion-in-region-function))
    (progn
      (define-key lisp-interaction-mode-map [remap indent-for-tab-command] 'helm-multi-lisp-complete-at-point)
      (define-key emacs-lisp-mode-map       [remap indent-for-tab-command] 'helm-multi-lisp-complete-at-point)

      ;; lisp complete. (Rebind M-<tab>)
      (define-key lisp-interaction-mode-map [remap completion-at-point] 'helm-lisp-completion-at-point)
      (define-key emacs-lisp-mode-map       [remap completion-at-point] 'helm-lisp-completion-at-point))

  (define-key lisp-interaction-mode-map [remap indent-for-tab-command] 'helm-multi-lisp-complete-at-point)
  (define-key emacs-lisp-mode-map       [remap indent-for-tab-command] 'helm-multi-lisp-complete-at-point)

  ;; lisp complete. (Rebind M-<tab>)
  (define-key lisp-interaction-mode-map [remap completion-at-point] 'helm-lisp-completion-at-point)
  (define-key emacs-lisp-mode-map       [remap completion-at-point] 'helm-lisp-completion-at-point))

(unless (boundp 'completion-in-region-function)
  (add-hook 'ielm-mode-hook
            #'(lambda ()
                (define-key ielm-map [remap completion-at-point] 'helm-lisp-completion-at-point))))

;;; Helm-variables
;;
;;
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
      helm-debug-root-directory "/home/sdarayan/tmp/helm-debug")

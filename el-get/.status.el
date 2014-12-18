((ac-js2 status "installed" recipe
         (:name ac-js2 :description "An attempt at context sensitive auto-completion for Javascript" :type github :pkgname "ScottyB/ac-js2" :depends
                (skewer-mode auto-complete)))
 (ack-and-a-half status "installed" recipe
                 (:name ack-and-a-half :description "Yet another front-end for ack" :type github :pkgname "emacsmirror/ack-and-a-half" :prepare
                        (progn
                          (defalias 'ack 'ack-and-a-half)
                          (defalias 'ack-same 'ack-and-a-half-same)
                          (defalias 'ack-find-file 'ack-and-a-half-find-file)
                          (defalias 'ack-find-file-same 'ack-and-a-half-find-file-same))))
 (auto-complete status "installed" recipe
                (:name auto-complete :website "https://github.com/auto-complete/auto-complete" :description "The most intelligent auto-completion extension." :type github :pkgname "auto-complete/auto-complete" :depends
                       (popup fuzzy)
                       :features auto-complete-config :post-init
                       (progn
                         (add-to-list 'ac-dictionary-directories
                                      (expand-file-name "dict" default-directory))
                         (ac-config-default))))
 (cider status "installed" recipe
        (:name cider :description "CIDER is a Clojure IDE and REPL." :type github :pkgname "clojure-emacs/cider" :depends
               (dash queue clojure-mode pkg-info)))
 (cl-lib status "installed" recipe
         (:name cl-lib :builtin "24.3" :type elpa :description "Properly prefixed CL functions and macros" :url "http://elpa.gnu.org/packages/cl-lib.html"))
 (clang-completion-mode status "installed" recipe
                        (:name clang-completion-mode :description "Clang Code-Completion minor mode, for use with C/Objective-C/C++" :type http :url "https://llvm.org/svn/llvm-project/cfe/trunk/utils/clang-completion-mode.el"))
 (cljsbuild-mode status "installed" recipe
                 (:name cljsbuild-mode :description "Minor mode for the ClojureScript 'lein cljsbuild' command" :type github :pkgname "kototama/cljsbuild-mode"))
 (clojure-mode status "installed" recipe
               (:name clojure-mode :website "https://github.com/clojure-emacs/clojure-mode" :description "Emacs support for the Clojure language." :type github :pkgname "clojure-emacs/clojure-mode"))
 (color-theme status "installed" recipe
              (:name color-theme :description "An Emacs-Lisp package with more than 50 color themes for your use. For questions about color-theme" :website "http://www.nongnu.org/color-theme/" :type http-tar :options
                     ("xzf")
                     :url "http://download.savannah.gnu.org/releases/color-theme/color-theme-6.6.0.tar.gz" :load "color-theme.el" :features "color-theme" :post-init
                     (progn
                       (color-theme-initialize)
                       (setq color-theme-is-global t))))
 (color-theme-tangotango status "installed" recipe
                         (:name color-theme-tangotango :description "Another color theme based on the Tango palette." :type github :pkgname "juba/color-theme-tangotango" :depends color-theme :prepare
                                (autoload 'color-theme-tangotango "color-theme-tangotango" "color-theme: tangotango" t)))
 (company-mode status "installed" recipe
               (:name company-mode :website "http://company-mode.github.io/" :description "Modular in-buffer completion framework for Emacs" :type github :pkgname "company-mode/company-mode"))
 (dash status "installed" recipe
       (:name dash :description "A modern list api for Emacs. No 'cl required." :type github :pkgname "magnars/dash.el"))
 (el-get status "installed" recipe
         (:name el-get :website "https://github.com/dimitri/el-get#readme" :description "Manage the external elisp bits and pieces you depend upon." :type github :branch "master" :pkgname "dimitri/el-get" :info "." :compile
                ("el-get.*\\.el$" "methods/")
                :load "el-get.el"))
 (epl status "installed" recipe
      (:name epl :description "EPL provides a convenient high-level API for various package.el versions, and aims to overcome its most striking idiocies." :type github :pkgname "cask/epl"))
 (exec-path-from-shell status "installed" recipe
                       (:name exec-path-from-shell :website "https://github.com/purcell/exec-path-from-shell" :description "Emacs plugin for dynamic PATH loading" :type github :pkgname "purcell/exec-path-from-shell"))
 (fuzzy status "installed" recipe
        (:name fuzzy :website "https://github.com/auto-complete/fuzzy-el" :description "Fuzzy matching utilities for GNU Emacs" :type github :pkgname "auto-complete/fuzzy-el"))
 (git-modes status "installed" recipe
            (:name git-modes :description "GNU Emacs modes for various Git-related files" :type github :pkgname "magit/git-modes"))
 (icomplete+ status "installed" recipe
             (:name icomplete+ :description "Extensions to `icomplete.el'." :type emacswiki :features "icomplete+"))
 (js2-mode status "installed" recipe
           (:name js2-mode :website "https://github.com/mooz/js2-mode#readme" :description "An improved JavaScript editing mode" :type github :pkgname "mooz/js2-mode" :prepare
                  (autoload 'js2-mode "js2-mode" nil t)))
 (leuven-theme status "installed" recipe
               (:name leuven-theme :description "Elegant color theme for light backgrounds, with built-in style for many components such as Org-mode, Gnus, Dired+ and EDiff." :type github :pkgname "fniessen/emacs-leuven-theme" :prepare
                      (add-to-list 'custom-theme-load-path default-directory)))
 (list-utils status "installed" recipe
             (:name list-utils :description "List-manipulation utility functions." :type github :pkgname "rolandwalker/list-utils"))
 (load-relative status "installed" recipe
                (:name load-relative :description "Relative file load (within a multi-file Emacs package)" :type github :pkgname "rocky/emacs-load-relative" :build
                       ("./autogen.sh" "./configure" "make")))
 (loc-changes status "installed" recipe
              (:name loc-changes :description "Emacs package to save marks on locations which may change. Intended use: editing a file which you are debugging" :type github :pkgname "rocky/emacs-loc-changes" :build
                     ("./autogen.sh" "./configure" "make")))
 (magit status "installed" recipe
        (:name magit :website "https://github.com/magit/magit#readme" :description "It's Magit! An Emacs mode for Git." :type github :pkgname "magit/magit" :depends
               (cl-lib git-modes)
               :info "." :compile "magit.*.el\\'" :build
               `(("make" "docs"))
               :build/berkeley-unix
               (("gmake" "docs"))
               :build/windows-nt
               (progn nil)))
 (markdown-mode status "installed" recipe
                (:name markdown-mode :description "Major mode to edit Markdown files in Emacs" :website "http://jblevins.org/projects/markdown-mode/" :type git :url "git://jblevins.org/git/markdown-mode.git" :prepare
                       (add-to-list 'auto-mode-alist
                                    '("\\.\\(md\\|mdown\\|markdown\\)\\'" . markdown-mode))))
 (multi-term status "installed" recipe
             (:name multi-term :description "A mode based on term.el, for managing multiple terminal buffers in Emacs." :type emacswiki :features multi-term))
 (package status "installed" recipe
          (:name package :description "ELPA implementation (\"package.el\") from Emacs 24" :builtin "24" :type http :url "http://repo.or.cz/w/emacs.git/blob_plain/1a0a666f941c99882093d7bd08ced15033bc3f0c:/lisp/emacs-lisp/package.el" :shallow nil :features package :post-init
                 (progn
                   (let
                       ((old-package-user-dir
                         (expand-file-name
                          (convert-standard-filename
                           (concat
                            (file-name-as-directory default-directory)
                            "elpa")))))
                     (when
                         (file-directory-p old-package-user-dir)
                       (add-to-list 'package-directory-list old-package-user-dir)))
                   (setq package-archives
                         (bound-and-true-p package-archives))
                   (mapc
                    (lambda
                      (pa)
                      (add-to-list 'package-archives pa 'append))
                    '(("ELPA" . "http://tromey.com/elpa/")
                      ("melpa" . "http://melpa.org/packages/")
                      ("gnu" . "http://elpa.gnu.org/packages/")
                      ("marmalade" . "http://marmalade-repo.org/packages/")
                      ("SC" . "http://joseito.republika.pl/sunrise-commander/"))))))
 (paredit status "installed" recipe
          (:name paredit :description "Minor mode for editing parentheses" :type http :prepare
                 (progn
                   (autoload 'enable-paredit-mode "paredit")
                   (autoload 'disable-paredit-mode "paredit"))
                 :url "http://mumble.net/~campbell/emacs/paredit.el"))
 (pkg-info status "installed" recipe
           (:name pkg-info :description "Provide information about Emacs packages." :type github :pkgname "lunaryorn/pkg-info.el" :depends
                  (dash epl)))
 (popup status "installed" recipe
        (:name popup :website "https://github.com/auto-complete/popup-el" :description "Visual Popup Interface Library for Emacs" :type github :submodule nil :pkgname "auto-complete/popup-el"))
 (projectile status "installed" recipe
             (:name projectile :description "Project navigation and management library for Emacs." :type github :pkgname "bbatsov/projectile" :depends
                    (dash s pkg-info)))
 (queue status "installed" recipe
        (:name queue :description "Queue data structure" :type elpa))
 (racket-mode status "installed" recipe
              (:name racket-mode :description "Major mode for Racket language." :type github :pkgname "greghendershott/racket-mode"))
 (rainbow-delimiters status "installed" recipe
                     (:name rainbow-delimiters :website "https://github.com/jlr/rainbow-delimiters#readme" :description "Color nested parentheses, brackets, and braces according to their depth." :type github :pkgname "jlr/rainbow-delimiters"))
 (realgud status "installed" recipe
          (:name realgud :type github :pkgname "rocky/emacs-dbgr" :description "The Grand \"Cathedral\" Debugger rewrite: Towards a modular framework for interacting with external debuggers." :depends
                 (loc-changes list-utils load-relative test-simple)
                 :build
                 (let
                     ((load-path-env
                       (mapconcat 'identity load-path ":")))
                   (mapcar
                    (lambda
                      (command)
                      (list "sh" "-c"
                            (format "EMACSLOADPATH=%s %s"
                                    (shell-quote-argument load-path-env)
                                    (shell-quote-argument command))))
                    '("./autogen.sh" "./configure" "make")))
                 :features
                 (realgud)))
 (s status "installed" recipe
    (:name s :description "The long lost Emacs string manipulation library." :type github :pkgname "magnars/s.el"))
 (simple-httpd status "installed" recipe
               (:name simple-httpd :description "A simple Emacs web server" :type github :pkgname "skeeto/emacs-http-server"))
 (skewer-mode status "installed" recipe
              (:name skewer-mode :description "Provides live interaction with JavaScript, CSS, and HTML in a web browser" :type github :pkgname "skeeto/skewer-mode" :depends
                     (js2-mode simple-httpd)
                     :features skewer-setup :post-init
                     (skewer-setup)))
 (solarized-emacs status "installed" recipe
                  (:name solarized-emacs :description "Solarized for Emacs is an Emacs port of the Solarized theme for vim, developed by Ethan Schoonover." :website "https://github.com/bbatsov/solarized-emacs" :minimum-emacs-version "24" :type github :pkgname "bbatsov/solarized-emacs" :depends dash :prepare
                         (add-to-list 'custom-theme-load-path default-directory)))
 (test-simple status "installed" recipe
              (:name test-simple :description "Unit Tests for Emacs that are simple" :type github :pkgname "rocky/emacs-test-simple" :build
                     ("./autogen.sh" "./configure" "make"))))

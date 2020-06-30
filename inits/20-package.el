(require 'cl)

(defvar installing-package-list
  '(
    ;; ここに使っているパッケージを書く。
    php-mode
    scala-mode
    markdown-mode
    scss-mode
    haskell-mode
    google-c-style
    yaml-mode
    open-junk-file
    ))

(let ((not-installed (loop for x in installing-package-list
                            when (not (package-installed-p x))
                            collect x)))
  (when not-installed
    (package-refresh-contents)
    (dolist (pkg not-installed)
      (package-install pkg))))

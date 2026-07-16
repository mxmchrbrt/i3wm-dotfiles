(menu-bar-mode -1)
(tool-bar-mode -1)
(setq inhibit-startup-screen t)

(require 'package)
(setq package-archives
      '(("melpa" . "https://melpa.org/packages/")
        ("gnu"   . "https://elpa.gnu.org/packages/")
        ("org"   . "https://orgmode.org/elpa/")))
(unless package--initialized (package-initialize))

;; Ensure package list is present
(or (file-exists-p package-user-dir)
    (package-refresh-contents))

;; Refresh if package not found locally
(unless (package-installed-p 'adwaita-theme)
  (package-refresh-contents)
  (package-install 'adwaita-theme))

(when (package-installed-p 'adwaita-theme)
  (load-theme 'adwaita-dark t))

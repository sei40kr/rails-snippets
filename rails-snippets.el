;;; rails-snippets.el --- Rails snippets for yasnippet

(require 'yasnippet)

(defconst rails-snippets-dir
  (expand-file-name
   "snippets"
   (file-name-directory
    (cond
     (load-in-progress load-file-name)
     ((and (boundp 'byte-compile-current-file) byte-compile-current-file)
      byte-compile-current-file)
     (:else (buffer-file-name))))))

(defun rails-snippets-initialize ()
  (add-to-list 'yas-snippet-dirs 'rails-snippets-dir t)
  (yas-load-directory rails-snippets-dir t))

(eval-after-load 'yasnippet
  '(rails-snippets-initialize))

(provide 'rails-snippets)

;;; rails-snippets ends here

(setq org-publish-project-alist
      '(("org"
	 :base-directory "../org"
	 :publishing-function org-html-publish-to-html
	 :publishing-directory "../html"
	 :section-numbers nil
	 :with-toc nil)))

(defun my-org-publish-org-force ()
  "Force publish the 'org' project."
  (interactive)
  (let ((org-publish-use-timestamps-flag nil))  ;; disable the use of timestamps, so it does not skip the file because it is unchanged
    (org-publish "org" t)))

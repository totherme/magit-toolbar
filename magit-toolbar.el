;;; magit-toolbar.el --- Add a toolbar button to launch Magit
;;
;; Copyright (c) 2018 Gareth Smith
;;
;; Author: Gareth Smith <gareth@totherme.org>
;; Homepage: http://github.com/totherme/magit-toolbar
;; URL: http://raw.githubusercontent.com/totherme/magit-toolbar/master/magit-toolbar.el
;; Version: 0.0.1
;; Keywords: convenience, navigation, interface, magit
;; Package-Requires: ((magit "1.0.0"))
;;
;; Simplified BSD License
;;
;;; Commentary:
;;
;; Quickstart
;;
;;     (require 'magit-toolbar)
;;
;;     press the git button to start magit
;;
;;; License
;;
;; Simplified BSD License:
;;
;; Redistribution and use in source and binary forms, with or
;; without modification, are permitted provided that the following
;; conditions are met:
;;
;;    1. Redistributions of source code must retain the above
;;       copyright notice, this list of conditions and the following
;;       disclaimer.
;;
;;    2. Redistributions in binary form must reproduce the above
;;       copyright notice, this list of conditions and the following
;;       disclaimer in the documentation and/or other materials
;;       provided with the distribution.
;;
;; This software is provided by Roland Walker "AS IS" and any express
;; or implied warranties, including, but not limited to, the implied
;; warranties of merchantability and fitness for a particular
;; purpose are disclaimed.  In no event shall Roland Walker or
;; contributors be liable for any direct, indirect, incidental,
;; special, exemplary, or consequential damages (including, but not
;; limited to, procurement of substitute goods or services; loss of
;; use, data, or profits; or business interruption) however caused
;; and on any theory of liability, whether in contract, strict
;; liability, or tort (including negligence or otherwise) arising in
;; any way out of the use of this software, even if advised of the
;; possibility of such damage.
;;
;; The views and conclusions contained in the software and
;; documentation are those of the authors and should not be
;; interpreted as representing official policies, either expressed
;; or implied, of Roland Walker.
;;
;;; Code:
;;

;;; First, make sure that our icon is somewhere that find-image will look for it.

(if load-file-name
    (progn
      ;; We were loaded by load-file -- in which case this directory
      ;; might not be in image-load-path. So let's add it.
      (add-to-list 'image-load-path (file-name-directory load-file-name))
      )
  ;; else we were loaded by require -- in which case this directory is
  ;; already in the load-path (which should be a subset of
  ;; image-load-path), so find-image will find our file
  )

(tool-bar-add-item "magit-icon"
		   'magit-status
		   'magit-status-button
		   :label "Magit")

(provide 'magit-toolbar)
;;; back-button.el ends here

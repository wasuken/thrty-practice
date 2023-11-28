(defsystem "thrty-practice"
  :version "0.1.0"
  :author ""
  :license ""
  :depends-on ()
  :components ((:module "src"
                :components
                ((:file "main"))))
  :description ""
  :in-order-to ((test-op (test-op "thrty-practice/tests"))))

(defsystem "thrty-practice/tests"
  :author ""
  :license ""
  :depends-on ("thrty-practice"
               "rove")
  :components ((:module "tests"
                :components
                ((:file "main"))))
  :description "Test system for thrty-practice"
  :perform (test-op (op c) (symbol-call :rove :run c)))

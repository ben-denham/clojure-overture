(ns reagent-demo.server
  (:require [reagent-demo.handler :refer [app]]
            [config.core :refer [env]]
            [ring.adapter.jetty :refer [run-jetty]])
  (:gen-class))

 (defn -main [& args]
   (run-jetty app {:port 3000 :join? false}))

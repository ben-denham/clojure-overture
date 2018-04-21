(ns ^:figwheel-no-load reagent-demo.dev
  (:require
    [reagent-demo.core :as core]
    [devtools.core :as devtools]))

(devtools/install!)

(enable-console-print!)

(core/init!)



# label node
k label nodes node01 shuttle=true

#get
k get node -l shuttle=true

# annotation
# remove "flagship=finalizer" from "node01"
k annotate nodes node01 flagship-
# NOTICE THE MINUS AND ONLY KEY USED


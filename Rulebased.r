library(arules)
library(arulesViz)
library(datasets)

inspect(Groceries[1:20])

itemFrequencyPlot(Groceries, topN = 20, type = "relative")

rules = apriori(Groceries, parameter = list(supp = 0.001, conf = 0.8, minlen = 2))

rules = sort(rules, by = "lift", decresing = T)

inspect(rules[1:5])

pruned_rules = rules[is.redundant(rules)]
rules = rules[!is.redundant(rules)]

rules = apriori(Groceries, parameter = list(supp = 0.002, conf = 0.8, minlen = 2),
                appearance = list(rhs = "whole milk"))
inspect(rules[1:8])

plot(rules, method = "graph",engine = "interactive")

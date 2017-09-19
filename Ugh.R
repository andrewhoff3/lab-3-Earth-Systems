---
  title: 'Earth Systems Lab 3'
author: 'Andrew Hoffmeister'
date: 'September 19, 2017'
output:
  pdf_document: default
html_document: default
---

db=read_excel('Vostok_Data.xlsx',col_names=TRUE)
head(db)
db=db[2:nrow(db), ]
attach(db)
plot(depth, ice_age, main="Vostok Ice Core", xlab="Depth of Core (m)", ylab="age (ka)", col="red", pch=19, cex=.25)
points(depth, gas_age, col="blue", cex=.25)
legend("topleft", col=c("red", "blue"), c("Ice, CO2", "Gas, CH4"), pch=19, bty="n")
par(mar=c(5,5,2,5))
par(new=TRUE)
with (db, plot(ice_age, CO2, type="l", col="blue", ylab=NA, yaxt="n", xlab=NA))
axis(side=4)
mtext(side=4, line=3, "Methane (ppb)")

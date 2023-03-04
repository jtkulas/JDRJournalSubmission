resources <- c(.61,.46,.49,.46,.19,.43,.5,.64,.55,.15,.46,.45,.37,.32,.41,.6,.18,.45,.37,.48,.37)

challenges <- c(.65,.45,.5,.46,.14,.36,.49,.68,.60,.12,.41,.43,.39,.33,.38,.7,.2,.51,.31,.45,.4)

hindrances <- c(.86,.66,.79,.79,.38,.69,.86,.8,.33,.69,.61,.47,.82,.35,.47,.62,.62,.56,.64,.66,.45)

range(resources)
mean(resources)
sd(resources)

range(challenges)
mean(challenges)
sd(challenges)

range(hindrances)
mean(hindrances)
sd(hindrances)

rcdiag <- c(.62,.63,.64,.65,.63,.66,.62)
rhdiag <- c(26,30,22,29,25,16,23) ## all neg
chdiag <- c(27,27,23,27,23,4,17) ## all neg

rcoffdiag <- c(47,34,34,32,12,27,49,39,48,40,8,31,37,42,33,26,21,28,41,50,34,48,13,38,33,41,30,48,26,40,08,09,29,13,23,27,33,38,38,40,39,29)
rhoffdiag <- c(23,21,22,22,04,13,26,25,27,24,08,15,17,17,14,15,09,13,24,22,22,24,11,19,18,15,06,18,10,13,02,-05,02,01,06,09,08,07,12,10,11,13)
choffdiag <- c(22,14,21,19,03,12,26,21,25,21,04,10,10,10,10,08,06,05,19,18,15,20,08,16,16,15,09,19,10,12,-06,-12,-05,-07,-04,01,10,06,10,10,12,13)

range(rcdiag)
mean(rcdiag)
sd(rcdiag)

range(rhdiag)
mean(rhdiag)
sd(rhdiag)

range(chdiag)
mean(chdiag)
sd(chdiag)

range(rcoffdiag)
mean(rcoffdiag)
sd(rcoffdiag)

range(rhoffdiag)
mean(rhoffdiag)
sd(rhoffdiag)

range(choffdiag)
mean(choffdiag)
sd(choffdiag)

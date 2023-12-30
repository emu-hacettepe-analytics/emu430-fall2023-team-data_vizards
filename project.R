cor(population$totalpop , population$fertilityrate)
cor(population$totalpop , population$electricity)
cor(population$totalpop , population$housingsalesnumbers)
cor(population$totalpop , population$numberofattempts)
cor(population$numberofattempts , migration$male2+migration$female2)
cor(population$housingsalesnumbers , migration$male2+migration$female2)
cor(population$electricity , migration$male2+migration$female2)
cor(population$fertilityrate , migration$age4044_2)
cor(population$fertilityrate , migration$health)

migration_rate <- (migration$male2+migration$female2)/population$totalpop
numberofattempts_rate <- population$numberofattempts/population$totalpop
housingsalesnumbers_rate <- population$housingsalesnumbers/population$totalpop
electricity_rate <- population$electricity/population$totalpop
educated_rate <- (population$highschool + population$university + population$master + population$doctorate)/population$totalpop
female_migration_rate <- (migration$female2)/(migration$male2+migration$female2)
cor(population$fertilityrate , migration_rate)
cor(electricity_rate , migration_rate)
cor(numberofattempts_rate, migration_rate)
cor(housingsalesnumbers_rate, migration_rate)
cor(numberofattempts_rate, female_migration_rate)
cor(housingsalesnumbers_rate, female_migration_rate)
buy_home_rate <- migration$buyhome/(migration$male2+migration$female2)
cor(numberofattempts_rate, buy_home_rate)
cor(housingsalesnumbers_rate, buy_home_rate)
cor(electricity_rate, buy_home_rate)
mig_edu_rate <- (migration$highschool2+migration$university2)/(migration$male2+migration$female2)
cor(mig_edu_rate,housingsalesnumbers_rate)









model <- lm( migration_rate ~ housingsalesnumbers_rate, data=migration)

summary(model)


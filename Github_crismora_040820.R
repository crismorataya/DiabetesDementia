#### GitHub: Cristina Morataya
#### Diabetes and Dementia Mendelian Randomization Project
#### 04/08/2020

#Install package
install.packages("workflowr")

#Select library
library(workflowr)

#One time configuration:
wflow_git_config(user.name = "Cristina Morataya", user.email = "crismora@umich.edu", overwrite=TRUE)

#Set working directory
setwd	("C:/Users/50253/Google Drive/AD_R01_WB/Students/crismora/AnalyticPlan/DiabDem")# Change location to fit your computer: Folder on your computer


#Start project
wflow_start("MR_DiabetesAndDementia")
#this will create folder structure, put your code in the analysis/ folder

#edit your code and stuff

#this will create html files from anything in /analysis folder
#useful for looking at your stuff on own computer and check for errors 
#wflow_publish() will call wflow_build()
wflow_build()

#kind of annoying, but you need to input every file that needs to be published individually
#if theres no changes since last you did this, then that file doesn't need to be included
#using wflow_status() first can help you see which files need attention
#the second arguement is the message that will be attached to your changes on github
wflow_status()
wflow_publish(c("analysis/index.Rmd", "analysis/about.Rmd", "analysis/license.Rmd", 'analysis/smoking_luad.Rmd'),
              "Publish the initial files for myproject")

#create github repository
wflow_use_github("myname")

#send changes to github
wflow_git_push()



#### general processing after creation

#look at your changes/additions
wflow_build()

#example where I publish changes from one file, when others are unchanged
wflow_publish(c('analysis/smoking_luad.Rmd'), "Added detection-p code")

#push changes to github
wflow_git_push()

data1<-read.csv("custchurn.csv")
head(data1)
variable.names(data1)
is.null(data1)

gender_dummy_female<-ifelse(data1$gender=="Female",1,0)
partner_dummy<-ifelse(data1$Partner=="Yes",1,0)
dependents_dummy<-ifelse(data1$Dependents=="Yes",1,0)
phoneService_dummy<-ifelse(data1$PhoneService=="Yes",1,0)
phoneService_dummy<-ifelse(data1$PhoneService=="Yes",1,0)

multipleLines_yes_dummy<-ifelse(data1$MultipleLines=="Yes",1,0)
multipleLines_no_dummy<-ifelse(data1$MultipleLines=="No",1,0)

internetService_dsl_dummy<-ifelse(data1$InternetService=="DSL",1,0)
internetService_fiberOptic_dummy<-ifelse(data1$InternetService=="Fiber optic",1,0)

OnlineSecurity_yes_dummy<-ifelse(data1$OnlineSecurity=="Yes",1,0)
OnlineSecurity_no_dummy<-ifelse(data1$OnlineSecurity=="No",1,0)

OnlineBackup_yes_dummy<-ifelse(data1$OnlineBackup=="Yes",1,0)
OnlineBackup_no_dummy<-ifelse(data1$OnlineBackup=="No",1,0)

DeviceProtection_yes_dummy<-ifelse(data1$DeviceProtection=="Yes",1,0)
DeviceProtection_no_dummy<-ifelse(data1$DeviceProtection=="No",1,0)

TechSupport_yes_dummy<-ifelse(data1$TechSupport=="Yes",1,0)
TechSupport_no_dummy<-ifelse(data1$TechSupport=="No",1,0)

StreamingTV_yes_dummy<-ifelse(data1$StreamingTV=="Yes",1,0)
StreamingTV_no_dummy<-ifelse(data1$StreamingTV=="No",1,0)

StreamingMovies_yes_dummy<-ifelse(data1$StreamingMovies=="Yes",1,0)
StreamingMovies_no_dummy<-ifelse(data1$StreamingMovies=="No",1,0)

Contract_Month_to_month_dummy<-ifelse(data1$Contract=="Month-to-month",1,0)
Contract_One_year_dummy<-ifelse(data1$Contract=="One year",1,0)

PaperlessBilling_yes_dummy<-ifelse(data1$PaperlessBilling=="Yes",1,0)

PaymentMethod_ElectronicCheck_dummy<-ifelse(data1$PaymentMethod=="Electronic check",1,0)
PaymentMethod_MailedCheck_dummy<-ifelse(data1$PaymentMethod=="Mailed check",1,0)
PaymentMethod_Banktransfer_dummy<-ifelse(data1$PaymentMethod=="Bank transfer (automatic)",1,0)





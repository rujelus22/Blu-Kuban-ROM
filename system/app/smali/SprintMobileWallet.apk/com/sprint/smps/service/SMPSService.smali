.class public interface abstract Lcom/sprint/smps/service/SMPSService;
.super Ljava/lang/Object;
.source "SMPSService.java"


# virtual methods
.method public abstract addAlternativePayment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sprint/smps/service/ClientResponse;
.end method

.method public abstract addNewAddress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sprint/smps/service/ClientResponse;
.end method

.method public abstract addUserPayment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sprint/smps/service/ClientResponse;
.end method

.method public abstract authenticateUserClientWallet(Ljava/lang/String;Ljava/lang/String;)Lcom/sprint/smps/service/ClientResponse;
.end method

.method public abstract changePIN(Ljava/lang/String;Ljava/lang/String;)Lcom/sprint/smps/service/ClientResponse;
.end method

.method public abstract completeAlternativePaymentAdd(Ljava/lang/String;)Lcom/sprint/smps/service/ClientResponse;
.end method

.method public abstract createSecurityQuestion(Ljava/lang/String;Ljava/lang/String;Ljava/util/Hashtable;)Lcom/sprint/smps/service/ClientResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/sprint/smps/service/ClientResponse;"
        }
    .end annotation
.end method

.method public abstract createUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Hashtable;)Lcom/sprint/smps/service/ClientResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/sprint/smps/service/ClientResponse;"
        }
    .end annotation
.end method

.method public abstract deleteAccount(Ljava/lang/String;)Lcom/sprint/smps/service/ClientResponse;
.end method

.method public abstract getDefaultAddress()Lcom/sprint/smps/service/ClientResponse;
.end method

.method public abstract getDefaultPayment()Lcom/sprint/smps/service/ClientResponse;
.end method

.method public abstract getDocumentation()[B
.end method

.method public abstract getFAQs(Ljava/lang/String;)Lcom/sprint/smps/service/ClientResponse;
.end method

.method public abstract getPaymentAccounts()Lcom/sprint/smps/service/ClientResponse;
.end method

.method public abstract getSecurityQuestions(Ljava/lang/String;)Lcom/sprint/smps/service/ClientResponse;
.end method

.method public abstract getSprintUserInfo(Ljava/lang/String;)Lcom/sprint/smps/service/ClientResponse;
.end method

.method public abstract getTermsAndConditions(Ljava/lang/String;)Lcom/sprint/smps/service/ClientResponse;
.end method

.method public abstract getTransactions(Ljava/lang/String;)Lcom/sprint/smps/service/ClientResponse;
.end method

.method public abstract getUserAddressBook()Lcom/sprint/smps/service/ClientResponse;
.end method

.method public abstract getUserProfile()Lcom/sprint/smps/service/ClientResponse;
.end method

.method public abstract getUserSecurityQuestions(Ljava/lang/String;)Lcom/sprint/smps/service/ClientResponse;
.end method

.method public abstract isUserRegistered(Landroid/app/Activity;Ljava/lang/String;)Lcom/sprint/smps/service/ClientResponse;
.end method

.method public abstract resetPIN(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sprint/smps/service/ClientResponse;
.end method

.method public abstract resetSMPSPINEx(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sprint/smps/service/ClientResponse;
.end method

.method public abstract setDefaultAddress(Ljava/lang/String;)Lcom/sprint/smps/service/ClientResponse;
.end method

.method public abstract setDefaultPayment(Ljava/lang/String;)Lcom/sprint/smps/service/ClientResponse;
.end method

.method public abstract updateAddress(Lcom/sprint/smps/pojo/Address;Ljava/lang/String;)Lcom/sprint/smps/service/ClientResponse;
.end method

.method public abstract updateAddress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sprint/smps/service/ClientResponse;
.end method

.method public abstract updateProfile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sprint/smps/service/ClientResponse;
.end method

.method public abstract updateUserPayment(Lcom/sprint/smps/pojo/PaymentAccount;Ljava/lang/String;)Lcom/sprint/smps/service/ClientResponse;
.end method

.method public abstract updateUserPayment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sprint/smps/service/ClientResponse;
.end method

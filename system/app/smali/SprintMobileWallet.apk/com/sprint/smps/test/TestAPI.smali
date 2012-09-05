.class public Lcom/sprint/smps/test/TestAPI;
.super Ljava/lang/Object;
.source "TestAPI.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getTestQA()Ljava/util/Hashtable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 57
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 59
    .local v0, questionAnswers:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "Q1"

    const-string v2, "A1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    const-string v1, "Q2"

    const-string v2, "A2"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    const-string v1, "Q3"

    const-string v2, "A3"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    return-object v0
.end method

.method public static runTests(Landroid/app/Activity;)V
    .registers 16
    .parameter "activity"

    .prologue
    const/4 v4, 0x0

    .line 18
    const-string v13, "9137486652"

    .line 19
    .local v13, testMobileNum:Ljava/lang/String;
    new-instance v0, Lcom/sprint/smps/service/DefaultSMPSService;

    invoke-direct {v0}, Lcom/sprint/smps/service/DefaultSMPSService;-><init>()V

    .line 20
    .local v0, dss:Lcom/sprint/smps/service/DefaultSMPSService;
    const-string v1, "isUserRegistered"

    invoke-virtual {v0, p0, v13}, Lcom/sprint/smps/service/DefaultSMPSService;->isUserRegistered(Landroid/app/Activity;Ljava/lang/String;)Lcom/sprint/smps/service/ClientResponse;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sprint/smps/test/TestAPI;->testAPI(Ljava/lang/String;Lcom/sprint/smps/service/ClientResponse;)V

    .line 21
    const-string v1, "Fail authenticateUserClientWallet"

    const-string v2, "1112"

    invoke-virtual {v0, v13, v2}, Lcom/sprint/smps/service/DefaultSMPSService;->authenticateUserClientWallet(Ljava/lang/String;Ljava/lang/String;)Lcom/sprint/smps/service/ClientResponse;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/sprint/smps/test/TestAPI;->testAPI(Ljava/lang/String;Lcom/sprint/smps/service/ClientResponse;Z)V

    .line 22
    const-string v1, "authenticateUserClientWallet"

    const-string v2, "1111"

    invoke-virtual {v0, v13, v2}, Lcom/sprint/smps/service/DefaultSMPSService;->authenticateUserClientWallet(Ljava/lang/String;Ljava/lang/String;)Lcom/sprint/smps/service/ClientResponse;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sprint/smps/test/TestAPI;->testAPI(Ljava/lang/String;Lcom/sprint/smps/service/ClientResponse;)V

    .line 26
    const-string v1, "getFAQs"

    invoke-virtual {v0, v4}, Lcom/sprint/smps/service/DefaultSMPSService;->getFAQs(Ljava/lang/String;)Lcom/sprint/smps/service/ClientResponse;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sprint/smps/test/TestAPI;->testAPI(Ljava/lang/String;Lcom/sprint/smps/service/ClientResponse;)V

    .line 27
    const-string v1, "getPaymentAccounts"

    invoke-virtual {v0}, Lcom/sprint/smps/service/DefaultSMPSService;->getPaymentAccounts()Lcom/sprint/smps/service/ClientResponse;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sprint/smps/test/TestAPI;->testAPI(Ljava/lang/String;Lcom/sprint/smps/service/ClientResponse;)V

    .line 28
    const-string v1, "getSecurityQuestions"

    invoke-virtual {v0, v4}, Lcom/sprint/smps/service/DefaultSMPSService;->getSecurityQuestions(Ljava/lang/String;)Lcom/sprint/smps/service/ClientResponse;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sprint/smps/test/TestAPI;->testAPI(Ljava/lang/String;Lcom/sprint/smps/service/ClientResponse;)V

    .line 29
    const-string v1, "getSprintUserInfo"

    const-string v2, "9137486652"

    invoke-virtual {v0, v2}, Lcom/sprint/smps/service/DefaultSMPSService;->getSprintUserInfo(Ljava/lang/String;)Lcom/sprint/smps/service/ClientResponse;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sprint/smps/test/TestAPI;->testAPI(Ljava/lang/String;Lcom/sprint/smps/service/ClientResponse;)V

    .line 30
    const-string v1, "getTermsAndConditions"

    invoke-virtual {v0, v4}, Lcom/sprint/smps/service/DefaultSMPSService;->getTermsAndConditions(Ljava/lang/String;)Lcom/sprint/smps/service/ClientResponse;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sprint/smps/test/TestAPI;->testAPI(Ljava/lang/String;Lcom/sprint/smps/service/ClientResponse;)V

    .line 31
    const-string v1, "getTransactions"

    const-string v2, "30"

    invoke-virtual {v0, v2}, Lcom/sprint/smps/service/DefaultSMPSService;->getTransactions(Ljava/lang/String;)Lcom/sprint/smps/service/ClientResponse;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sprint/smps/test/TestAPI;->testAPI(Ljava/lang/String;Lcom/sprint/smps/service/ClientResponse;)V

    .line 32
    const-string v1, "getUserAddressBook"

    invoke-virtual {v0}, Lcom/sprint/smps/service/DefaultSMPSService;->getUserAddressBook()Lcom/sprint/smps/service/ClientResponse;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sprint/smps/test/TestAPI;->testAPI(Ljava/lang/String;Lcom/sprint/smps/service/ClientResponse;)V

    .line 33
    const-string v1, "getUserProfile"

    invoke-virtual {v0}, Lcom/sprint/smps/service/DefaultSMPSService;->getUserProfile()Lcom/sprint/smps/service/ClientResponse;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sprint/smps/test/TestAPI;->testAPI(Ljava/lang/String;Lcom/sprint/smps/service/ClientResponse;)V

    .line 34
    const-string v1, "getUserSecurityQuestions"

    const-string v2, "9137486652"

    invoke-virtual {v0, v2}, Lcom/sprint/smps/service/DefaultSMPSService;->getUserSecurityQuestions(Ljava/lang/String;)Lcom/sprint/smps/service/ClientResponse;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sprint/smps/test/TestAPI;->testAPI(Ljava/lang/String;Lcom/sprint/smps/service/ClientResponse;)V

    .line 35
    const-string v1, "addAlternativePayment"

    const-string v2, "AP"

    const-string v3, "Amazon"

    invoke-virtual {v0, v2, v3, v4}, Lcom/sprint/smps/service/DefaultSMPSService;->addAlternativePayment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sprint/smps/service/ClientResponse;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sprint/smps/test/TestAPI;->testAPI(Ljava/lang/String;Lcom/sprint/smps/service/ClientResponse;)V

    .line 36
    const-string v7, "addNewAddress"

    const-string v1, "John"

    const-string v2, "Smith"

    const-string v3, "123 Main"

    const-string v4, "KC"

    const-string v5, "MO"

    const-string v6, "64105"

    invoke-virtual/range {v0 .. v6}, Lcom/sprint/smps/service/DefaultSMPSService;->addNewAddress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sprint/smps/service/ClientResponse;

    move-result-object v1

    invoke-static {v7, v1}, Lcom/sprint/smps/test/TestAPI;->testAPI(Ljava/lang/String;Lcom/sprint/smps/service/ClientResponse;)V

    .line 37
    const-string v11, "addUserPayment"

    const-string v1, "1234123412341234"

    const-string v2, "789"

    const-string v3, "John Q. Smith"

    const-string v4, "123 Main"

    const-string v5, "KC"

    const-string v6, "MO"

    const-string v7, "64105"

    const-string v8, "11"

    const-string v9, "2012"

    const-string v10, "MyCard"

    invoke-virtual/range {v0 .. v10}, Lcom/sprint/smps/service/DefaultSMPSService;->addUserPayment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sprint/smps/service/ClientResponse;

    move-result-object v1

    invoke-static {v11, v1}, Lcom/sprint/smps/test/TestAPI;->testAPI(Ljava/lang/String;Lcom/sprint/smps/service/ClientResponse;)V

    .line 38
    const-string v1, "changePIN"

    const-string v2, "1111"

    const-string v3, "2222"

    invoke-virtual {v0, v2, v3}, Lcom/sprint/smps/service/DefaultSMPSService;->changePIN(Ljava/lang/String;Ljava/lang/String;)Lcom/sprint/smps/service/ClientResponse;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sprint/smps/test/TestAPI;->testAPI(Ljava/lang/String;Lcom/sprint/smps/service/ClientResponse;)V

    .line 39
    const-string v1, "changePIN"

    const-string v2, "2222"

    const-string v3, "1111"

    invoke-virtual {v0, v2, v3}, Lcom/sprint/smps/service/DefaultSMPSService;->changePIN(Ljava/lang/String;Ljava/lang/String;)Lcom/sprint/smps/service/ClientResponse;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sprint/smps/test/TestAPI;->testAPI(Ljava/lang/String;Lcom/sprint/smps/service/ClientResponse;)V

    .line 40
    const-string v1, "completeAlternativePaymentAdd"

    const-string v2, "Amazon"

    invoke-virtual {v0, v2}, Lcom/sprint/smps/service/DefaultSMPSService;->completeAlternativePaymentAdd(Ljava/lang/String;)Lcom/sprint/smps/service/ClientResponse;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sprint/smps/test/TestAPI;->testAPI(Ljava/lang/String;Lcom/sprint/smps/service/ClientResponse;)V

    .line 41
    invoke-static {}, Lcom/sprint/smps/test/TestAPI;->getTestQA()Ljava/util/Hashtable;

    move-result-object v12

    .line 42
    .local v12, questionAnswers:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "createSecurityQuestion"

    const-string v2, "1111"

    invoke-virtual {v0, v13, v2, v12}, Lcom/sprint/smps/service/DefaultSMPSService;->createSecurityQuestion(Ljava/lang/String;Ljava/lang/String;Ljava/util/Hashtable;)Lcom/sprint/smps/service/ClientResponse;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sprint/smps/test/TestAPI;->testAPI(Ljava/lang/String;Lcom/sprint/smps/service/ClientResponse;)V

    .line 45
    const-string v7, "resetPIN"

    const-string v2, "1111"

    const-string v3, "Q1"

    const-string v4, "A1"

    const-string v5, "Q2"

    const-string v6, "A2"

    move-object v1, v13

    invoke-virtual/range {v0 .. v6}, Lcom/sprint/smps/service/DefaultSMPSService;->resetPIN(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sprint/smps/service/ClientResponse;

    move-result-object v1

    invoke-static {v7, v1}, Lcom/sprint/smps/test/TestAPI;->testAPI(Ljava/lang/String;Lcom/sprint/smps/service/ClientResponse;)V

    .line 46
    const-string v1, "resetSMPSPINEx"

    const-string v2, "1111"

    const-string v3, "1"

    const-string v4, "Q1"

    invoke-virtual {v0, v13, v2, v3, v4}, Lcom/sprint/smps/service/DefaultSMPSService;->resetSMPSPINEx(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sprint/smps/service/ClientResponse;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sprint/smps/test/TestAPI;->testAPI(Ljava/lang/String;Lcom/sprint/smps/service/ClientResponse;)V

    .line 47
    const-string v1, "setDefaultAddress"

    const-string v2, "1"

    invoke-virtual {v0, v2}, Lcom/sprint/smps/service/DefaultSMPSService;->setDefaultAddress(Ljava/lang/String;)Lcom/sprint/smps/service/ClientResponse;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sprint/smps/test/TestAPI;->testAPI(Ljava/lang/String;Lcom/sprint/smps/service/ClientResponse;)V

    .line 48
    const-string v1, "setDefaultPayment"

    const-string v2, "1"

    invoke-virtual {v0, v2}, Lcom/sprint/smps/service/DefaultSMPSService;->setDefaultPayment(Ljava/lang/String;)Lcom/sprint/smps/service/ClientResponse;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sprint/smps/test/TestAPI;->testAPI(Ljava/lang/String;Lcom/sprint/smps/service/ClientResponse;)V

    .line 49
    const-string v11, "updateAddress"

    sget-object v1, Lcom/sprint/smps/properties/Properties;->isUserRegisteredContext:Ljava/lang/String;

    const-string v3, "1"

    const-string v4, "Johnb"

    const-string v5, "Smithb"

    const-string v6, "123 Mainb"

    const-string v7, "KCb"

    const-string v8, "MS"

    const-string v9, "64106"

    const-string v10, "false"

    move-object v2, v13

    invoke-virtual/range {v0 .. v10}, Lcom/sprint/smps/service/DefaultSMPSService;->updateAddress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sprint/smps/service/ClientResponse;

    move-result-object v1

    invoke-static {v11, v1}, Lcom/sprint/smps/test/TestAPI;->testAPI(Ljava/lang/String;Lcom/sprint/smps/service/ClientResponse;)V

    .line 51
    const-string v8, "updateProfile"

    const-string v1, "John"

    const-string v2, "Smith"

    const-string v3, "123 Main"

    const-string v4, "KC"

    const-string v5, "MO"

    const-string v6, "64105"

    const-string v7, "john@smith.org"

    invoke-virtual/range {v0 .. v7}, Lcom/sprint/smps/service/DefaultSMPSService;->updateProfile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sprint/smps/service/ClientResponse;

    move-result-object v1

    invoke-static {v8, v1}, Lcom/sprint/smps/test/TestAPI;->testAPI(Ljava/lang/String;Lcom/sprint/smps/service/ClientResponse;)V

    .line 52
    const-string v14, "updateUserPayment"

    const-string v1, "1"

    const-string v2, "1234123412341234"

    const-string v3, "John Q. Smith"

    const-string v4, "123 Main"

    const-string v5, "KC"

    const-string v6, "MO"

    const-string v7, "64105"

    const-string v8, "11"

    const-string v9, "2012"

    const-string v10, "MyCard"

    const-string v11, "false"

    invoke-virtual/range {v0 .. v11}, Lcom/sprint/smps/service/DefaultSMPSService;->updateUserPayment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sprint/smps/service/ClientResponse;

    move-result-object v1

    invoke-static {v14, v1}, Lcom/sprint/smps/test/TestAPI;->testAPI(Ljava/lang/String;Lcom/sprint/smps/service/ClientResponse;)V

    .line 54
    return-void
.end method

.method private static testAPI(Ljava/lang/String;Lcom/sprint/smps/service/ClientResponse;)V
    .registers 3
    .parameter "callName"
    .parameter "response"

    .prologue
    .line 68
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/sprint/smps/test/TestAPI;->testAPI(Ljava/lang/String;Lcom/sprint/smps/service/ClientResponse;Z)V

    .line 69
    return-void
.end method

.method private static testAPI(Ljava/lang/String;Lcom/sprint/smps/service/ClientResponse;Z)V
    .registers 9
    .parameter "callName"
    .parameter "response"
    .parameter "reverse"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 73
    if-eqz p1, :cond_34

    .line 74
    invoke-virtual {p1}, Lcom/sprint/smps/service/ClientResponse;->hasError()Z

    move-result v4

    if-nez v4, :cond_34

    .line 75
    invoke-virtual {p1}, Lcom/sprint/smps/service/ClientResponse;->getStatus()Ljava/lang/String;

    move-result-object v4

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_34

    move v1, v3

    .line 76
    .local v1, pass:Z
    :goto_17
    if-eqz p2, :cond_1c

    if-eqz v1, :cond_36

    move v1, v2

    .line 80
    :cond_1c
    :goto_1c
    if-eqz v1, :cond_38

    .line 82
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "testAPI: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " passed."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, output:Ljava/lang/String;
    :goto_33
    return-void

    .end local v0           #output:Ljava/lang/String;
    .end local v1           #pass:Z
    :cond_34
    move v1, v2

    .line 75
    goto :goto_17

    .restart local v1       #pass:Z
    :cond_36
    move v1, v3

    .line 76
    goto :goto_1c

    .line 85
    :cond_38
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "testAPI: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " FAILED: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sprint/smps/service/ClientResponse;->getErrorDesc()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #output:Ljava/lang/String;
    goto :goto_33
.end method

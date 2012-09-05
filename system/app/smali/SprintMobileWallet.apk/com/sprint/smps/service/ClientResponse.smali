.class public Lcom/sprint/smps/service/ClientResponse;
.super Ljava/lang/Object;
.source "ClientResponse.java"


# static fields
.field private static final AddressKey:Ljava/lang/String; = "AddressKey"

.field private static final City:Ljava/lang/String; = "City"

.field public static final EMPTY_STRING:Ljava/lang/String; = ""

.field private static final FirstName:Ljava/lang/String; = "FirstName"

.field private static final IsDefaultAddress:Ljava/lang/String; = "DefaultAddress"

.field private static final LastName:Ljava/lang/String; = "LastName"

.field private static final State:Ljava/lang/String; = "State"

.field private static final StateName:Ljava/lang/String; = "StateName"

.field private static final Street1:Ljava/lang/String; = "Street1"

.field private static final Zip:Ljava/lang/String; = "Zip"

.field private static final isDefaultPayment:Ljava/lang/String; = "DefaultPaymentType"


# instance fields
.field private alternativePayment:Lcom/sprint/smps/pojo/AlternativePayment;

.field private context:Ljava/lang/String;

.field public final dateCreated:Ljava/util/Date;

.field private defaultAddress:Lcom/sprint/smps/pojo/Address;

.field private defaultPayment:Lcom/sprint/smps/pojo/PaymentAccount;

.field private endUser:Lcom/sprint/smps/pojo/User;

.field private errorDesc:Ljava/lang/String;

.field private errorNo:Ljava/lang/String;

.field private faqs:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Vector",
            "<",
            "Lcom/sprint/smps/pojo/QuestionAnswer;",
            ">;>;"
        }
    .end annotation
.end field

.field private isUserRegisteredContext:Ljava/lang/String;

.field private lstAddress:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sprint/smps/pojo/Address;",
            ">;"
        }
    .end annotation
.end field

.field private lstTransactions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sprint/smps/pojo/PaymentTransaction;",
            ">;"
        }
    .end annotation
.end field

.field private mustUpgrade:Z

.field private paymentKey:Ljava/lang/String;

.field private paymentOrder:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private questions:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private requestID:Ljava/lang/String;

.field private responseID:Ljava/lang/String;

.field private securityQuestionsSet:Z

.field private status:Ljava/lang/String;

.field private tac:Lcom/sprint/smps/pojo/TermsAndConditions;

.field private upgrade:Z

.field private userPayments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sprint/smps/pojo/PaymentAccount;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/sprint/smps/service/ClientResponse;->dateCreated:Ljava/util/Date;

    .line 51
    iput-object v1, p0, Lcom/sprint/smps/service/ClientResponse;->questions:Ljava/util/LinkedHashMap;

    .line 52
    iput-object v1, p0, Lcom/sprint/smps/service/ClientResponse;->faqs:Ljava/util/LinkedHashMap;

    .line 53
    iput-object v1, p0, Lcom/sprint/smps/service/ClientResponse;->tac:Lcom/sprint/smps/pojo/TermsAndConditions;

    .line 54
    iput-boolean v2, p0, Lcom/sprint/smps/service/ClientResponse;->upgrade:Z

    .line 55
    iput-boolean v2, p0, Lcom/sprint/smps/service/ClientResponse;->mustUpgrade:Z

    .line 56
    iput-object v1, p0, Lcom/sprint/smps/service/ClientResponse;->isUserRegisteredContext:Ljava/lang/String;

    .line 57
    iput-object v1, p0, Lcom/sprint/smps/service/ClientResponse;->paymentOrder:Ljava/util/Vector;

    .line 58
    iput-object v1, p0, Lcom/sprint/smps/service/ClientResponse;->defaultAddress:Lcom/sprint/smps/pojo/Address;

    .line 59
    iput-object v1, p0, Lcom/sprint/smps/service/ClientResponse;->defaultPayment:Lcom/sprint/smps/pojo/PaymentAccount;

    .line 60
    iput-boolean v2, p0, Lcom/sprint/smps/service/ClientResponse;->securityQuestionsSet:Z

    .line 78
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 8
    .parameter "resultHeader"
    .parameter "out"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    iput-object v2, p0, Lcom/sprint/smps/service/ClientResponse;->dateCreated:Ljava/util/Date;

    .line 51
    iput-object v3, p0, Lcom/sprint/smps/service/ClientResponse;->questions:Ljava/util/LinkedHashMap;

    .line 52
    iput-object v3, p0, Lcom/sprint/smps/service/ClientResponse;->faqs:Ljava/util/LinkedHashMap;

    .line 53
    iput-object v3, p0, Lcom/sprint/smps/service/ClientResponse;->tac:Lcom/sprint/smps/pojo/TermsAndConditions;

    .line 54
    iput-boolean v4, p0, Lcom/sprint/smps/service/ClientResponse;->upgrade:Z

    .line 55
    iput-boolean v4, p0, Lcom/sprint/smps/service/ClientResponse;->mustUpgrade:Z

    .line 56
    iput-object v3, p0, Lcom/sprint/smps/service/ClientResponse;->isUserRegisteredContext:Ljava/lang/String;

    .line 57
    iput-object v3, p0, Lcom/sprint/smps/service/ClientResponse;->paymentOrder:Ljava/util/Vector;

    .line 58
    iput-object v3, p0, Lcom/sprint/smps/service/ClientResponse;->defaultAddress:Lcom/sprint/smps/pojo/Address;

    .line 59
    iput-object v3, p0, Lcom/sprint/smps/service/ClientResponse;->defaultPayment:Lcom/sprint/smps/pojo/PaymentAccount;

    .line 60
    iput-boolean v4, p0, Lcom/sprint/smps/service/ClientResponse;->securityQuestionsSet:Z

    .line 82
    const/4 v1, 0x0

    .line 86
    .local v1, root:Lorg/json/JSONObject;
    :try_start_21
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 88
    if-eqz v1, :cond_42

    .line 90
    invoke-direct {p0, v1}, Lcom/sprint/smps/service/ClientResponse;->setAlternatePayment(Lorg/json/JSONObject;)V

    .line 91
    invoke-direct {p0, v1}, Lcom/sprint/smps/service/ClientResponse;->setSecurityQuestions(Lorg/json/JSONObject;)V

    .line 92
    invoke-direct {p0, v1}, Lcom/sprint/smps/service/ClientResponse;->setUserInfo(Lorg/json/JSONObject;)V

    .line 93
    invoke-direct {p0, v1}, Lcom/sprint/smps/service/ClientResponse;->setPaymentAccounts(Lorg/json/JSONObject;)V

    .line 94
    invoke-direct {p0, v1}, Lcom/sprint/smps/service/ClientResponse;->setAddresses(Lorg/json/JSONObject;)V

    .line 95
    invoke-direct {p0, v1}, Lcom/sprint/smps/service/ClientResponse;->setTransactions(Lorg/json/JSONObject;)V

    .line 96
    invoke-direct {p0, v1}, Lcom/sprint/smps/service/ClientResponse;->setDefaultPayment(Lorg/json/JSONObject;)V

    .line 97
    invoke-direct {p0, v1}, Lcom/sprint/smps/service/ClientResponse;->setDefaultAddress(Lorg/json/JSONObject;)V

    .line 98
    invoke-direct {p0, v1}, Lcom/sprint/smps/service/ClientResponse;->setRootData(Lorg/json/JSONObject;)V
    :try_end_42
    .catch Lorg/json/JSONException; {:try_start_21 .. :try_end_42} :catch_43

    .line 105
    :cond_42
    :goto_42
    return-void

    .line 101
    :catch_43
    move-exception v0

    .line 103
    .local v0, e:Lorg/json/JSONException;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_42
.end method

.method private setAddresses(Lorg/json/JSONObject;)V
    .registers 16
    .parameter "root"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 194
    const-string v13, "lstAddress"

    .line 195
    .local v13, lstAddresses:Ljava/lang/String;
    const-string v1, "lstAddress"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1f

    .line 197
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sprint/smps/service/ClientResponse;->lstAddress:Ljava/util/List;

    .line 198
    const-string v1, "lstAddress"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    .line 199
    .local v11, addressesJSON:Lorg/json/JSONArray;
    const/4 v0, 0x0

    .line 200
    .local v0, address:Lcom/sprint/smps/pojo/Address;
    const/4 v12, 0x0

    .local v12, i:I
    :goto_19
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lt v12, v1, :cond_20

    .line 218
    .end local v0           #address:Lcom/sprint/smps/pojo/Address;
    .end local v11           #addressesJSON:Lorg/json/JSONArray;
    .end local v12           #i:I
    :cond_1f
    return-void

    .line 202
    .restart local v0       #address:Lcom/sprint/smps/pojo/Address;
    .restart local v11       #addressesJSON:Lorg/json/JSONArray;
    .restart local v12       #i:I
    :cond_20
    invoke-virtual {v11, v12}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 203
    .local v10, addressJSON:Lorg/json/JSONObject;
    new-instance v0, Lcom/sprint/smps/pojo/Address;

    .line 204
    .end local v0           #address:Lcom/sprint/smps/pojo/Address;
    const-string v1, "LastName"

    invoke-virtual {v10, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8a

    const-string v1, ""

    .line 205
    :goto_30
    const-string v2, "FirstName"

    invoke-virtual {v10, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_91

    const-string v2, ""

    .line 206
    :goto_3a
    const-string v3, "Street1"

    invoke-virtual {v10, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_98

    const-string v3, ""

    .line 207
    :goto_44
    const-string v4, "City"

    invoke-virtual {v10, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9f

    const-string v4, ""

    .line 208
    :goto_4e
    const-string v5, "Zip"

    invoke-virtual {v10, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a6

    const-string v5, ""

    .line 209
    :goto_58
    const-string v6, "State"

    invoke-virtual {v10, v6}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_ad

    const-string v6, ""

    .line 210
    :goto_62
    const-string v7, "StateName"

    invoke-virtual {v10, v7}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b4

    const-string v7, ""

    .line 211
    :goto_6c
    const-string v8, "AddressKey"

    invoke-virtual {v10, v8}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_bb

    const-string v8, ""

    .line 212
    :goto_76
    const-string v9, "DefaultAddress"

    invoke-virtual {v10, v9}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_c2

    const/4 v9, 0x0

    .line 203
    :goto_7f
    invoke-direct/range {v0 .. v9}, Lcom/sprint/smps/pojo/Address;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 214
    .restart local v0       #address:Lcom/sprint/smps/pojo/Address;
    iget-object v1, p0, Lcom/sprint/smps/service/ClientResponse;->lstAddress:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    add-int/lit8 v12, v12, 0x1

    goto :goto_19

    .line 204
    .end local v0           #address:Lcom/sprint/smps/pojo/Address;
    :cond_8a
    const-string v1, "LastName"

    invoke-virtual {v10, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_30

    .line 205
    :cond_91
    const-string v2, "FirstName"

    invoke-virtual {v10, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_3a

    .line 206
    :cond_98
    const-string v3, "Street1"

    invoke-virtual {v10, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_44

    .line 207
    :cond_9f
    const-string v4, "City"

    invoke-virtual {v10, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_4e

    .line 208
    :cond_a6
    const-string v5, "Zip"

    invoke-virtual {v10, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_58

    .line 209
    :cond_ad
    const-string v6, "State"

    invoke-virtual {v10, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_62

    .line 210
    :cond_b4
    const-string v7, "StateName"

    invoke-virtual {v10, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_6c

    .line 211
    :cond_bb
    const-string v8, "AddressKey"

    invoke-virtual {v10, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_76

    .line 212
    :cond_c2
    const-string v9, "DefaultAddress"

    invoke-virtual {v10, v9}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    goto :goto_7f
.end method

.method private setAlternatePayment(Lorg/json/JSONObject;)V
    .registers 6
    .parameter "root"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 109
    const/4 v0, 0x0

    .line 110
    .local v0, apPayload:Ljava/lang/String;
    const/4 v1, 0x0

    .line 111
    .local v1, apType:Ljava/lang/String;
    const/4 v2, 0x0

    .line 113
    .local v2, apUrl:Ljava/lang/String;
    const-string v3, "apPayload"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_11

    const-string v3, "apPayload"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 114
    :cond_11
    const-string v3, "apType"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1f

    const-string v3, "apType"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 115
    :cond_1f
    const-string v3, "apUrl"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2d

    const-string v3, "apUrl"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 116
    :cond_2d
    if-eqz v1, :cond_36

    .line 117
    new-instance v3, Lcom/sprint/smps/pojo/AlternativePayment;

    invoke-direct {v3, v0, v2, v1}, Lcom/sprint/smps/pojo/AlternativePayment;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/sprint/smps/service/ClientResponse;->alternativePayment:Lcom/sprint/smps/pojo/AlternativePayment;

    .line 119
    :cond_36
    return-void
.end method

.method private setDefaultAddress(Lorg/json/JSONObject;)V
    .registers 16
    .parameter "root"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 288
    const-string v12, "lstAddress"

    .line 289
    .local v12, lstAddressName:Ljava/lang/String;
    invoke-virtual {p1, v12}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7e

    .line 291
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sprint/smps/service/ClientResponse;->lstTransactions:Ljava/util/List;

    .line 292
    invoke-virtual {p1, v12}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 293
    .local v10, jsonArray:Lorg/json/JSONArray;
    const/4 v11, 0x0

    .line 294
    .local v11, jsonObject:Lorg/json/JSONObject;
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_7e

    .line 296
    invoke-virtual {v10, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    .line 298
    new-instance v0, Lcom/sprint/smps/pojo/Address;

    .line 299
    const-string v1, "LastName"

    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7f

    const-string v1, ""

    .line 300
    :goto_2b
    const-string v2, "FirstName"

    invoke-virtual {v11, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_86

    const-string v2, ""

    .line 301
    :goto_35
    const-string v3, "Street1"

    invoke-virtual {v11, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8d

    const-string v3, ""

    .line 302
    :goto_3f
    const-string v4, "City"

    invoke-virtual {v11, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_94

    const-string v4, ""

    .line 303
    :goto_49
    const-string v5, "Zip"

    invoke-virtual {v11, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9b

    const-string v5, ""

    .line 304
    :goto_53
    const-string v6, "State"

    invoke-virtual {v11, v6}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a2

    const-string v6, ""

    .line 305
    :goto_5d
    const-string v7, "StateName"

    invoke-virtual {v11, v7}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a9

    const-string v7, ""

    .line 306
    :goto_67
    const-string v8, "AddressKey"

    invoke-virtual {v11, v8}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_b0

    const-string v8, ""

    .line 307
    :goto_71
    const-string v13, "DefaultAddress"

    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_b7

    :goto_79
    invoke-direct/range {v0 .. v9}, Lcom/sprint/smps/pojo/Address;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 298
    iput-object v0, p0, Lcom/sprint/smps/service/ClientResponse;->defaultAddress:Lcom/sprint/smps/pojo/Address;

    .line 311
    .end local v10           #jsonArray:Lorg/json/JSONArray;
    .end local v11           #jsonObject:Lorg/json/JSONObject;
    :cond_7e
    return-void

    .line 299
    .restart local v10       #jsonArray:Lorg/json/JSONArray;
    .restart local v11       #jsonObject:Lorg/json/JSONObject;
    :cond_7f
    const-string v1, "LastName"

    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2b

    .line 300
    :cond_86
    const-string v2, "FirstName"

    invoke-virtual {v11, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_35

    .line 301
    :cond_8d
    const-string v3, "Street1"

    invoke-virtual {v11, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_3f

    .line 302
    :cond_94
    const-string v4, "City"

    invoke-virtual {v11, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_49

    .line 303
    :cond_9b
    const-string v5, "Zip"

    invoke-virtual {v11, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_53

    .line 304
    :cond_a2
    const-string v6, "State"

    invoke-virtual {v11, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_5d

    .line 305
    :cond_a9
    const-string v7, "StateName"

    invoke-virtual {v11, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_67

    .line 306
    :cond_b0
    const-string v8, "AddressKey"

    invoke-virtual {v11, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_71

    .line 307
    :cond_b7
    const-string v9, "DefaultAddress"

    invoke-virtual {v11, v9}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    goto :goto_79
.end method

.method private setDefaultPayment(Lorg/json/JSONObject;)V
    .registers 27
    .parameter "root"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 248
    const-string v24, "smpsUserPayments"

    .line 249
    .local v24, smpsUserPaymentsName:Ljava/lang/String;
    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_110

    .line 251
    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v22

    .line 252
    .local v22, jsonArray:Lorg/json/JSONArray;
    const/16 v23, 0x0

    .line 253
    .local v23, jsonObject:Lorg/json/JSONObject;
    invoke-virtual/range {v22 .. v22}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_110

    .line 255
    const/4 v2, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v23

    .line 261
    new-instance v2, Lcom/sprint/smps/pojo/PaymentAccount;

    .line 262
    const/4 v3, 0x0

    .line 263
    const-string v4, "AccountType"

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_111

    const-string v4, ""

    .line 264
    :goto_32
    const-string v5, "Active"

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_11b

    const/4 v5, 0x0

    .line 265
    :goto_3d
    const-string v6, "CardAssociation"

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_125

    const-string v6, ""

    .line 266
    :goto_49
    const-string v7, "ExpiryMonth"

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_12f

    const-string v7, ""

    .line 267
    :goto_55
    const-string v8, "ExpiryYear"

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_139

    const-string v8, ""

    .line 268
    :goto_61
    const-string v9, "ExternalRef1"

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_143

    const-string v9, ""

    .line 269
    :goto_6d
    const-string v10, "ExternalRef2"

    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_14d

    const-string v10, ""

    .line 270
    :goto_79
    const-string v11, "MaskedAccountNumber"

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_157

    const-string v11, ""

    .line 271
    :goto_85
    const-string v12, "NameOnAccount"

    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_161

    const-string v12, ""

    .line 272
    :goto_91
    const-string v13, "NickName"

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_16b

    const-string v13, ""

    .line 273
    :goto_9d
    const-string v14, "PAKey"

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_175

    const-string v14, ""

    .line 274
    :goto_a9
    const-string v15, "TruncatedAccountNumber"

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_17f

    const-string v15, ""

    .line 275
    :goto_b5
    const-string v16, "Street"

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_189

    const-string v16, ""

    .line 276
    :goto_c3
    const-string v17, "City"

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_195

    const-string v17, ""

    .line 277
    :goto_d1
    const-string v18, "State"

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_1a1

    const-string v18, ""

    .line 278
    :goto_df
    const-string v19, "StateName"

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_1ad

    const-string v19, ""

    .line 279
    :goto_ed
    const-string v20, "Zip"

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_1b9

    const-string v20, ""

    .line 280
    :goto_fb
    const-string v21, "DefaultPaymentType"

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_1c5

    const/16 v21, 0x0

    :goto_109
    invoke-direct/range {v2 .. v21}, Lcom/sprint/smps/pojo/PaymentAccount;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 261
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sprint/smps/service/ClientResponse;->defaultPayment:Lcom/sprint/smps/pojo/PaymentAccount;

    .line 284
    .end local v22           #jsonArray:Lorg/json/JSONArray;
    .end local v23           #jsonObject:Lorg/json/JSONObject;
    :cond_110
    return-void

    .line 263
    .restart local v22       #jsonArray:Lorg/json/JSONArray;
    .restart local v23       #jsonObject:Lorg/json/JSONObject;
    :cond_111
    const-string v4, "AccountType"

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_32

    .line 264
    :cond_11b
    const-string v5, "Active"

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    goto/16 :goto_3d

    .line 265
    :cond_125
    const-string v6, "CardAssociation"

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_49

    .line 266
    :cond_12f
    const-string v7, "ExpiryMonth"

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_55

    .line 267
    :cond_139
    const-string v8, "ExpiryYear"

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_61

    .line 268
    :cond_143
    const-string v9, "ExternalRef1"

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_6d

    .line 269
    :cond_14d
    const-string v10, "ExternalRef2"

    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_79

    .line 270
    :cond_157
    const-string v11, "MaskedAccountNumber"

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_85

    .line 271
    :cond_161
    const-string v12, "NameOnAccount"

    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_91

    .line 272
    :cond_16b
    const-string v13, "NickName"

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_9d

    .line 273
    :cond_175
    const-string v14, "PAKey"

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_a9

    .line 274
    :cond_17f
    const-string v15, "TruncatedAccountNumber"

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_b5

    .line 275
    :cond_189
    const-string v16, "Street"

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_c3

    .line 276
    :cond_195
    const-string v17, "City"

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    goto/16 :goto_d1

    .line 277
    :cond_1a1
    const-string v18, "State"

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_df

    .line 278
    :cond_1ad
    const-string v19, "StateName"

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    goto/16 :goto_ed

    .line 279
    :cond_1b9
    const-string v20, "Zip"

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    goto/16 :goto_fb

    .line 280
    :cond_1c5
    const-string v21, "DefaultPaymentType"

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v21

    goto/16 :goto_109
.end method

.method private setPaymentAccounts(Lorg/json/JSONObject;)V
    .registers 28
    .parameter "root"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 159
    const-string v25, "smpsUserPayments"

    .line 160
    .local v25, smpsUserPayments:Ljava/lang/String;
    const-string v3, "smpsUserPayments"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_28

    .line 162
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sprint/smps/service/ClientResponse;->userPayments:Ljava/util/List;

    .line 163
    const-string v3, "smpsUserPayments"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v24

    .line 164
    .local v24, payments:Lorg/json/JSONArray;
    const/4 v2, 0x0

    .line 165
    .local v2, account:Lcom/sprint/smps/pojo/PaymentAccount;
    const/16 v23, 0x0

    .local v23, i:I
    :goto_20
    invoke-virtual/range {v24 .. v24}, Lorg/json/JSONArray;->length()I

    move-result v3

    move/from16 v0, v23

    if-lt v0, v3, :cond_29

    .line 190
    .end local v2           #account:Lcom/sprint/smps/pojo/PaymentAccount;
    .end local v23           #i:I
    .end local v24           #payments:Lorg/json/JSONArray;
    :cond_28
    return-void

    .line 167
    .restart local v2       #account:Lcom/sprint/smps/pojo/PaymentAccount;
    .restart local v23       #i:I
    .restart local v24       #payments:Lorg/json/JSONArray;
    :cond_29
    move-object/from16 v0, v24

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v22

    .line 168
    .local v22, accountJSON:Lorg/json/JSONObject;
    new-instance v2, Lcom/sprint/smps/pojo/PaymentAccount;

    .end local v2           #account:Lcom/sprint/smps/pojo/PaymentAccount;
    const/4 v3, 0x0

    .line 169
    const-string v4, "AccountType"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_125

    const-string v4, ""

    .line 170
    :goto_40
    const-string v5, "Active"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_12f

    const/4 v5, 0x0

    .line 171
    :goto_4b
    const-string v6, "CardAssociation"

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_139

    const-string v6, ""

    .line 172
    :goto_57
    const-string v7, "ExpiryMonth"

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_143

    const-string v7, ""

    .line 173
    :goto_63
    const-string v8, "ExpiryYear"

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_14d

    const-string v8, ""

    .line 174
    :goto_6f
    const-string v9, "ExternalRef1"

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_157

    const-string v9, ""

    .line 175
    :goto_7b
    const-string v10, "ExternalRef2"

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_161

    const-string v10, ""

    .line 176
    :goto_87
    const-string v11, "MaskedAccountNumber"

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_16b

    const-string v11, ""

    .line 177
    :goto_93
    const-string v12, "NameOnAccount"

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_175

    const-string v12, ""

    .line 178
    :goto_9f
    const-string v13, "NickName"

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_17f

    const-string v13, ""

    .line 179
    :goto_ab
    const-string v14, "PAKey"

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_189

    const-string v14, ""

    .line 180
    :goto_b7
    const-string v15, "TruncatedAccountNumber"

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_193

    const-string v15, ""

    .line 181
    :goto_c3
    const-string v16, "Street"

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_19d

    const-string v16, ""

    .line 182
    :goto_d1
    const-string v17, "City"

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_1a9

    const-string v17, ""

    .line 183
    :goto_df
    const-string v18, "StateName"

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_1b5

    const-string v18, ""

    .line 184
    :goto_ed
    const-string v19, "State"

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_1c1

    const-string v19, ""

    .line 185
    :goto_fb
    const-string v20, "Zip"

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_1cd

    const-string v20, ""

    .line 186
    :goto_109
    const-string v21, "DefaultPaymentType"

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_1d9

    const/16 v21, 0x0

    .line 168
    :goto_117
    invoke-direct/range {v2 .. v21}, Lcom/sprint/smps/pojo/PaymentAccount;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 187
    .restart local v2       #account:Lcom/sprint/smps/pojo/PaymentAccount;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sprint/smps/service/ClientResponse;->userPayments:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_20

    .line 169
    .end local v2           #account:Lcom/sprint/smps/pojo/PaymentAccount;
    :cond_125
    const-string v4, "AccountType"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_40

    .line 170
    :cond_12f
    const-string v5, "Active"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    goto/16 :goto_4b

    .line 171
    :cond_139
    const-string v6, "CardAssociation"

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_57

    .line 172
    :cond_143
    const-string v7, "ExpiryMonth"

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_63

    .line 173
    :cond_14d
    const-string v8, "ExpiryYear"

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_6f

    .line 174
    :cond_157
    const-string v9, "ExternalRef1"

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_7b

    .line 175
    :cond_161
    const-string v10, "ExternalRef2"

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_87

    .line 176
    :cond_16b
    const-string v11, "MaskedAccountNumber"

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_93

    .line 177
    :cond_175
    const-string v12, "NameOnAccount"

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_9f

    .line 178
    :cond_17f
    const-string v13, "NickName"

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_ab

    .line 179
    :cond_189
    const-string v14, "PAKey"

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_b7

    .line 180
    :cond_193
    const-string v15, "TruncatedAccountNumber"

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_c3

    .line 181
    :cond_19d
    const-string v16, "Street"

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_d1

    .line 182
    :cond_1a9
    const-string v17, "City"

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    goto/16 :goto_df

    .line 183
    :cond_1b5
    const-string v18, "StateName"

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_ed

    .line 184
    :cond_1c1
    const-string v19, "State"

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    goto/16 :goto_fb

    .line 185
    :cond_1cd
    const-string v20, "Zip"

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    goto/16 :goto_109

    .line 186
    :cond_1d9
    const-string v21, "DefaultPaymentType"

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v21

    goto/16 :goto_117
.end method

.method private setRootData(Lorg/json/JSONObject;)V
    .registers 15
    .parameter "root"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    const/4 v12, 0x1

    .line 315
    const-string v10, "context"

    invoke-virtual {p1, v10}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_12

    const-string v10, "context"

    invoke-virtual {p1, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/sprint/smps/service/ClientResponse;->context:Ljava/lang/String;

    .line 316
    :cond_12
    const-string v10, "errorDesc"

    invoke-virtual {p1, v10}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_22

    const-string v10, "errorDesc"

    invoke-virtual {p1, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/sprint/smps/service/ClientResponse;->errorDesc:Ljava/lang/String;

    .line 317
    :cond_22
    const-string v2, "0"

    .line 318
    .local v2, errorNo:Ljava/lang/String;
    const-string v10, "errorNo"

    invoke-virtual {p1, v10}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_32

    const-string v10, "errorNo"

    invoke-virtual {p1, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 319
    :cond_32
    iput-object v11, p0, Lcom/sprint/smps/service/ClientResponse;->paymentKey:Ljava/lang/String;

    .line 320
    const-string v10, "requestID"

    invoke-virtual {p1, v10}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_44

    const-string v10, "requestID"

    invoke-virtual {p1, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/sprint/smps/service/ClientResponse;->requestID:Ljava/lang/String;

    .line 321
    :cond_44
    const-string v10, "responseID"

    invoke-virtual {p1, v10}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_54

    const-string v10, "responseID"

    invoke-virtual {p1, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/sprint/smps/service/ClientResponse;->responseID:Ljava/lang/String;

    .line 323
    :cond_54
    const-string v10, "securityQuestionsSet"

    invoke-virtual {p1, v10}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_64

    const-string v10, "securityQuestionsSet"

    invoke-virtual {p1, v10}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    iput-boolean v10, p0, Lcom/sprint/smps/service/ClientResponse;->securityQuestionsSet:Z

    .line 324
    :cond_64
    const-string v10, "preLoginContext"

    invoke-virtual {p1, v10}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_74

    const-string v10, "preLoginContext"

    invoke-virtual {p1, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/sprint/smps/service/ClientResponse;->isUserRegisteredContext:Ljava/lang/String;

    .line 327
    :cond_74
    const/4 v7, 0x0

    .line 328
    .local v7, termsConditionsText:Ljava/lang/String;
    :try_start_75
    const-string v10, "termsConditionsText"

    invoke-virtual {p1, v10}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_93

    .line 330
    const-string v10, "termsConditionsText"

    invoke-virtual {p1, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 331
    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    invoke-direct {v5, v10}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 332
    .local v5, iStream:Ljava/io/InputStream;
    invoke-static {v5}, Lcom/sprint/smps/service/handlers/TermsAndConditionsParserHandler;->parseXML(Ljava/io/InputStream;)V

    .line 333
    sget-object v10, Lcom/sprint/smps/service/handlers/TermsAndConditionsParserHandler;->tac:Lcom/sprint/smps/pojo/TermsAndConditions;

    iput-object v10, p0, Lcom/sprint/smps/service/ClientResponse;->tac:Lcom/sprint/smps/pojo/TermsAndConditions;

    .line 336
    .end local v5           #iStream:Ljava/io/InputStream;
    :cond_93
    const/4 v4, 0x0

    .line 337
    .local v4, faqText:Ljava/lang/String;
    const-string v10, "faqText"

    invoke-virtual {p1, v10}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_c7

    .line 339
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "<T>"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "faqText"

    invoke-virtual {p1, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "</T>"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 340
    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    invoke-direct {v5, v10}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 341
    .restart local v5       #iStream:Ljava/io/InputStream;
    invoke-static {v5}, Lcom/sprint/smps/service/handlers/FaqParserHandler;->parseXML(Ljava/io/InputStream;)V

    .line 342
    sget-object v10, Lcom/sprint/smps/service/handlers/FaqParserHandler;->qaList:Ljava/util/LinkedHashMap;

    iput-object v10, p0, Lcom/sprint/smps/service/ClientResponse;->faqs:Ljava/util/LinkedHashMap;
    :try_end_c7
    .catch Ljava/lang/Exception; {:try_start_75 .. :try_end_c7} :catch_16c

    .line 346
    .end local v4           #faqText:Ljava/lang/String;
    .end local v5           #iStream:Ljava/io/InputStream;
    :cond_c7
    :goto_c7
    const-string v10, "paymentSortOrder"

    invoke-virtual {p1, v10}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_e9

    .line 348
    new-instance v10, Ljava/util/Vector;

    invoke-direct {v10}, Ljava/util/Vector;-><init>()V

    iput-object v10, p0, Lcom/sprint/smps/service/ClientResponse;->paymentOrder:Ljava/util/Vector;

    .line 349
    const-string v10, "paymentSortOrder"

    invoke-virtual {p1, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 350
    .local v6, sortOrder:Ljava/lang/String;
    new-instance v8, Ljava/util/StringTokenizer;

    const-string v10, ","

    invoke-direct {v8, v6, v10}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    .local v8, tokenizer:Ljava/util/StringTokenizer;
    :goto_e3
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v10

    if-nez v10, :cond_125

    .line 355
    .end local v6           #sortOrder:Ljava/lang/String;
    .end local v8           #tokenizer:Ljava/util/StringTokenizer;
    :cond_e9
    const/4 v9, 0x0

    .line 356
    .local v9, upgradeFlag:Ljava/lang/String;
    const-string v10, "upgradeFlag"

    invoke-virtual {p1, v10}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_102

    .line 358
    const-string v10, "upgradeFlag"

    invoke-virtual {p1, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 359
    const-string v10, "NEW"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_131

    .line 360
    iput-boolean v12, p0, Lcom/sprint/smps/service/ClientResponse;->upgrade:Z

    .line 368
    :cond_102
    :goto_102
    const-string v10, "status"

    invoke-virtual {p1, v10}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_13e

    .line 369
    const-string v10, "status"

    invoke-virtual {p1, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/sprint/smps/service/ClientResponse;->status:Ljava/lang/String;

    .line 373
    :goto_116
    if-eqz v2, :cond_143

    const-string v10, "null"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_143

    .line 374
    const-string v10, "0"

    iput-object v10, p0, Lcom/sprint/smps/service/ClientResponse;->errorNo:Ljava/lang/String;

    .line 386
    :cond_124
    :goto_124
    return-void

    .line 352
    .end local v9           #upgradeFlag:Ljava/lang/String;
    .restart local v6       #sortOrder:Ljava/lang/String;
    .restart local v8       #tokenizer:Ljava/util/StringTokenizer;
    :cond_125
    iget-object v11, p0, Lcom/sprint/smps/service/ClientResponse;->paymentOrder:Ljava/util/Vector;

    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextElement()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v11, v10}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_e3

    .line 362
    .end local v6           #sortOrder:Ljava/lang/String;
    .end local v8           #tokenizer:Ljava/util/StringTokenizer;
    .restart local v9       #upgradeFlag:Ljava/lang/String;
    :cond_131
    const-string v10, "MUST"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_102

    .line 363
    iput-boolean v12, p0, Lcom/sprint/smps/service/ClientResponse;->upgrade:Z

    .line 364
    iput-boolean v12, p0, Lcom/sprint/smps/service/ClientResponse;->mustUpgrade:Z

    goto :goto_102

    .line 371
    :cond_13e
    const-string v10, "0"

    iput-object v10, p0, Lcom/sprint/smps/service/ClientResponse;->status:Ljava/lang/String;

    goto :goto_116

    .line 377
    :cond_143
    iput-object v2, p0, Lcom/sprint/smps/service/ClientResponse;->errorNo:Ljava/lang/String;

    .line 380
    :try_start_145
    const-class v0, Lcom/sprint/smps/R$string;

    .line 381
    .local v0, c:Ljava/lang/Class;,"Ljava/lang/Class<Lcom/sprint/smps/R$string;>;"
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "E"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 382
    .local v3, f:Ljava/lang/reflect/Field;
    sget-object v10, Lcom/sprint/smps/properties/Properties;->app:Landroid/app/Application;

    const/4 v11, 0x0

    invoke-virtual {v3, v11}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 383
    .local v1, desc:Ljava/lang/String;
    if-eqz v1, :cond_124

    iput-object v1, p0, Lcom/sprint/smps/service/ClientResponse;->errorDesc:Ljava/lang/String;
    :try_end_169
    .catch Ljava/lang/Exception; {:try_start_145 .. :try_end_169} :catch_16a

    goto :goto_124

    .line 384
    .end local v0           #c:Ljava/lang/Class;,"Ljava/lang/Class<Lcom/sprint/smps/R$string;>;"
    .end local v1           #desc:Ljava/lang/String;
    .end local v3           #f:Ljava/lang/reflect/Field;
    :catch_16a
    move-exception v10

    goto :goto_124

    .line 344
    .end local v9           #upgradeFlag:Ljava/lang/String;
    :catch_16c
    move-exception v10

    goto/16 :goto_c7
.end method

.method private setSecurityQuestions(Lorg/json/JSONObject;)V
    .registers 9
    .parameter "root"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 123
    const-string v1, "lstSecurityQuestions"

    .line 124
    .local v1, lstSecurityQuestions:Ljava/lang/String;
    const-string v4, "lstSecurityQuestions"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1e

    .line 126
    const-string v4, "lstSecurityQuestions"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 127
    .local v3, questionsArray:Lorg/json/JSONArray;
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v4, p0, Lcom/sprint/smps/service/ClientResponse;->questions:Ljava/util/LinkedHashMap;

    .line 128
    const/4 v0, 0x0

    .local v0, i:I
    :goto_18
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lt v0, v4, :cond_1f

    .line 134
    .end local v0           #i:I
    .end local v3           #questionsArray:Lorg/json/JSONArray;
    :cond_1e
    return-void

    .line 130
    .restart local v0       #i:I
    .restart local v3       #questionsArray:Lorg/json/JSONArray;
    :cond_1f
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 131
    .local v2, questionJSON:Lorg/json/JSONObject;
    iget-object v4, p0, Lcom/sprint/smps/service/ClientResponse;->questions:Ljava/util/LinkedHashMap;

    const-string v5, "Key"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "Value"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    add-int/lit8 v0, v0, 0x1

    goto :goto_18
.end method

.method private setTransactions(Lorg/json/JSONObject;)V
    .registers 15
    .parameter "root"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 222
    new-instance v8, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss.S zzz"

    invoke-direct {v8, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 224
    .local v8, formatter:Ljava/text/SimpleDateFormat;
    const-string v10, "lstTransactions"

    .line 225
    .local v10, lstTransactionsName:Ljava/lang/String;
    const-string v1, "lstTransactions"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_26

    .line 227
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sprint/smps/service/ClientResponse;->lstTransactions:Ljava/util/List;

    .line 228
    const-string v1, "lstTransactions"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    .line 229
    .local v12, transactionsJSON:Lorg/json/JSONArray;
    const/4 v0, 0x0

    .line 230
    .local v0, transaction:Lcom/sprint/smps/pojo/PaymentTransaction;
    const/4 v9, 0x0

    .local v9, i:I
    :goto_20
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lt v9, v1, :cond_27

    .line 244
    .end local v0           #transaction:Lcom/sprint/smps/pojo/PaymentTransaction;
    .end local v9           #i:I
    .end local v12           #transactionsJSON:Lorg/json/JSONArray;
    :cond_26
    return-void

    .line 232
    .restart local v0       #transaction:Lcom/sprint/smps/pojo/PaymentTransaction;
    .restart local v9       #i:I
    .restart local v12       #transactionsJSON:Lorg/json/JSONArray;
    :cond_27
    invoke-virtual {v12, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    .line 233
    .local v11, transactionJSON:Lorg/json/JSONObject;
    new-instance v0, Lcom/sprint/smps/pojo/PaymentTransaction;

    .line 234
    .end local v0           #transaction:Lcom/sprint/smps/pojo/PaymentTransaction;
    const-string v1, "merchantFullName"

    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7f

    const-string v1, ""

    .line 235
    :goto_37
    const-string v2, "merchantInfo"

    invoke-virtual {v11, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_86

    const-string v2, ""

    .line 236
    :goto_41
    const/4 v3, 0x0

    .line 237
    const-string v4, "txnAmount"

    invoke-virtual {v11, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8d

    const-string v4, ""

    .line 238
    :goto_4c
    const-string v5, "txnDate"

    invoke-virtual {v11, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_94

    const-string v5, ""

    :goto_56
    new-instance v6, Ljava/text/ParsePosition;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Ljava/text/ParsePosition;-><init>(I)V

    invoke-virtual {v8, v5, v6}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v5

    .line 239
    const-string v6, "txnDescription"

    invoke-virtual {v11, v6}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9b

    const-string v6, ""

    .line 240
    :goto_6a
    const-string v7, "txnStatus"

    invoke-virtual {v11, v7}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a2

    const-string v7, ""

    .line 233
    :goto_74
    invoke-direct/range {v0 .. v7}, Lcom/sprint/smps/pojo/PaymentTransaction;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    .restart local v0       #transaction:Lcom/sprint/smps/pojo/PaymentTransaction;
    iget-object v1, p0, Lcom/sprint/smps/service/ClientResponse;->lstTransactions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    add-int/lit8 v9, v9, 0x1

    goto :goto_20

    .line 234
    .end local v0           #transaction:Lcom/sprint/smps/pojo/PaymentTransaction;
    :cond_7f
    const-string v1, "merchantFullName"

    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_37

    .line 235
    :cond_86
    const-string v2, "merchantInfo"

    invoke-virtual {v11, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_41

    .line 237
    :cond_8d
    const-string v4, "txnAmount"

    invoke-virtual {v11, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_4c

    .line 238
    :cond_94
    const-string v5, "txnDate"

    invoke-virtual {v11, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_56

    .line 239
    :cond_9b
    const-string v6, "txnDescription"

    invoke-virtual {v11, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_6a

    .line 240
    :cond_a2
    const-string v7, "txnStatus"

    invoke-virtual {v11, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_74
.end method

.method private setUserInfo(Lorg/json/JSONObject;)V
    .registers 14
    .parameter "root"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 138
    const-string v10, "smpsEndUser"

    .line 139
    .local v10, smpsEndUser:Ljava/lang/String;
    const/4 v11, 0x0

    .line 140
    .local v11, userJson:Lorg/json/JSONObject;
    const-string v0, "smpsEndUser"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_72

    .line 142
    const-string v0, "smpsEndUser"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    .line 144
    new-instance v0, Lcom/sprint/smps/pojo/User;

    .line 145
    const-string v1, "UserKey"

    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_73

    const-string v1, ""

    .line 146
    :goto_1d
    const-string v2, "FirstName"

    invoke-virtual {v11, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7a

    const-string v2, ""

    .line 147
    :goto_27
    const-string v3, "LastName"

    invoke-virtual {v11, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_81

    const-string v3, ""

    .line 148
    :goto_31
    const-string v4, "Street1"

    invoke-virtual {v11, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_88

    const-string v4, ""

    .line 149
    :goto_3b
    const-string v5, "City"

    invoke-virtual {v11, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8f

    const-string v5, ""

    .line 150
    :goto_45
    const-string v6, "State"

    invoke-virtual {v11, v6}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_96

    const-string v6, ""

    .line 151
    :goto_4f
    const-string v7, "StateName"

    invoke-virtual {v11, v7}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9d

    const-string v7, ""

    .line 152
    :goto_59
    const-string v8, "Zip"

    invoke-virtual {v11, v8}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a4

    const-string v8, ""

    .line 153
    :goto_63
    const-string v9, "EmailAddress"

    invoke-virtual {v11, v9}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_ab

    const-string v9, ""

    :goto_6d
    invoke-direct/range {v0 .. v9}, Lcom/sprint/smps/pojo/User;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    iput-object v0, p0, Lcom/sprint/smps/service/ClientResponse;->endUser:Lcom/sprint/smps/pojo/User;

    .line 155
    :cond_72
    return-void

    .line 145
    :cond_73
    const-string v1, "UserKey"

    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1d

    .line 146
    :cond_7a
    const-string v2, "FirstName"

    invoke-virtual {v11, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_27

    .line 147
    :cond_81
    const-string v3, "LastName"

    invoke-virtual {v11, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_31

    .line 148
    :cond_88
    const-string v4, "Street1"

    invoke-virtual {v11, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_3b

    .line 149
    :cond_8f
    const-string v5, "City"

    invoke-virtual {v11, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_45

    .line 150
    :cond_96
    const-string v6, "State"

    invoke-virtual {v11, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_4f

    .line 151
    :cond_9d
    const-string v7, "StateName"

    invoke-virtual {v11, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_59

    .line 152
    :cond_a4
    const-string v8, "Zip"

    invoke-virtual {v11, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_63

    .line 153
    :cond_ab
    const-string v9, "EmailAddress"

    invoke-virtual {v11, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    goto :goto_6d
.end method


# virtual methods
.method public doUpgrade()Z
    .registers 2

    .prologue
    .line 480
    iget-boolean v0, p0, Lcom/sprint/smps/service/ClientResponse;->upgrade:Z

    return v0
.end method

.method public getAlternativePayment()Lcom/sprint/smps/pojo/AlternativePayment;
    .registers 2

    .prologue
    .line 598
    iget-object v0, p0, Lcom/sprint/smps/service/ClientResponse;->alternativePayment:Lcom/sprint/smps/pojo/AlternativePayment;

    return-object v0
.end method

.method public getContext()Ljava/lang/String;
    .registers 2

    .prologue
    .line 487
    iget-object v0, p0, Lcom/sprint/smps/service/ClientResponse;->context:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultAddress()Lcom/sprint/smps/pojo/Address;
    .registers 2

    .prologue
    .line 473
    iget-object v0, p0, Lcom/sprint/smps/service/ClientResponse;->defaultAddress:Lcom/sprint/smps/pojo/Address;

    return-object v0
.end method

.method public getDefaultPayment()Lcom/sprint/smps/pojo/PaymentAccount;
    .registers 2

    .prologue
    .line 467
    iget-object v0, p0, Lcom/sprint/smps/service/ClientResponse;->defaultPayment:Lcom/sprint/smps/pojo/PaymentAccount;

    return-object v0
.end method

.method public getEndUser()Lcom/sprint/smps/pojo/User;
    .registers 2

    .prologue
    .line 548
    iget-object v0, p0, Lcom/sprint/smps/service/ClientResponse;->endUser:Lcom/sprint/smps/pojo/User;

    return-object v0
.end method

.method public getErrorDesc()Ljava/lang/String;
    .registers 2

    .prologue
    .line 499
    iget-object v0, p0, Lcom/sprint/smps/service/ClientResponse;->errorDesc:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorNo()Ljava/lang/String;
    .registers 2

    .prologue
    .line 505
    iget-object v0, p0, Lcom/sprint/smps/service/ClientResponse;->errorNo:Ljava/lang/String;

    return-object v0
.end method

.method public getFAQQuestions()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sprint/smps/pojo/QuestionAnswer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 444
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 445
    .local v2, faqQuestions:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/sprint/smps/pojo/QuestionAnswer;>;"
    iget-object v3, p0, Lcom/sprint/smps/service/ClientResponse;->faqs:Ljava/util/LinkedHashMap;

    if-eqz v3, :cond_19

    .line 447
    iget-object v3, p0, Lcom/sprint/smps/service/ClientResponse;->faqs:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 448
    .local v1, categories:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1a

    .line 455
    .end local v1           #categories:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_19
    return-object v2

    .line 450
    .restart local v1       #categories:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_1a
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 451
    .local v0, catName:Ljava/lang/String;
    iget-object v3, p0, Lcom/sprint/smps/service/ClientResponse;->faqs:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    goto :goto_13
.end method

.method public getFAQs()Ljava/util/LinkedHashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Vector",
            "<",
            "Lcom/sprint/smps/pojo/QuestionAnswer;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 440
    iget-object v0, p0, Lcom/sprint/smps/service/ClientResponse;->faqs:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method public getIsUserRegisteredContext()Ljava/lang/String;
    .registers 2

    .prologue
    .line 493
    iget-object v0, p0, Lcom/sprint/smps/service/ClientResponse;->isUserRegisteredContext:Ljava/lang/String;

    return-object v0
.end method

.method public getLstAddress()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sprint/smps/pojo/Address;",
            ">;"
        }
    .end annotation

    .prologue
    .line 511
    iget-object v0, p0, Lcom/sprint/smps/service/ClientResponse;->lstAddress:Ljava/util/List;

    return-object v0
.end method

.method public getLstTransactions()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sprint/smps/pojo/PaymentTransaction;",
            ">;"
        }
    .end annotation

    .prologue
    .line 524
    iget-object v0, p0, Lcom/sprint/smps/service/ClientResponse;->lstTransactions:Ljava/util/List;

    return-object v0
.end method

.method public getPaymentKey()Ljava/lang/String;
    .registers 2

    .prologue
    .line 530
    iget-object v0, p0, Lcom/sprint/smps/service/ClientResponse;->paymentKey:Ljava/lang/String;

    return-object v0
.end method

.method public getQuestionList()[Ljava/lang/String;
    .registers 5

    .prologue
    .line 419
    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/String;

    .line 420
    .local v1, questionList:[Ljava/lang/String;
    iget-object v3, p0, Lcom/sprint/smps/service/ClientResponse;->questions:Ljava/util/LinkedHashMap;

    if-eqz v3, :cond_2c

    .line 422
    iget-object v3, p0, Lcom/sprint/smps/service/ClientResponse;->questions:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->size()I

    move-result v3

    new-array v1, v3, [Ljava/lang/String;

    .line 424
    iget-object v3, p0, Lcom/sprint/smps/service/ClientResponse;->questions:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v2

    .line 425
    .local v2, questionObjArray:[Ljava/lang/Object;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1a
    iget-object v3, p0, Lcom/sprint/smps/service/ClientResponse;->questions:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->size()I

    move-result v3

    if-lt v0, v3, :cond_23

    .line 431
    .end local v0           #i:I
    .end local v2           #questionObjArray:[Ljava/lang/Object;
    :goto_22
    return-object v1

    .line 426
    .restart local v0       #i:I
    .restart local v2       #questionObjArray:[Ljava/lang/Object;
    :cond_23
    aget-object v3, v2, v0

    check-cast v3, Ljava/lang/String;

    aput-object v3, v1, v0

    .line 425
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    .line 429
    .end local v0           #i:I
    .end local v2           #questionObjArray:[Ljava/lang/Object;
    :cond_2c
    const/4 v3, 0x0

    new-array v1, v3, [Ljava/lang/String;

    goto :goto_22
.end method

.method public getQuestions()Ljava/util/LinkedHashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 434
    iget-object v0, p0, Lcom/sprint/smps/service/ClientResponse;->questions:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method public getRequestID()Ljava/lang/String;
    .registers 2

    .prologue
    .line 536
    iget-object v0, p0, Lcom/sprint/smps/service/ClientResponse;->requestID:Ljava/lang/String;

    return-object v0
.end method

.method public getResponseID()Ljava/lang/String;
    .registers 2

    .prologue
    .line 542
    iget-object v0, p0, Lcom/sprint/smps/service/ClientResponse;->responseID:Ljava/lang/String;

    return-object v0
.end method

.method public getSortedUserPayments()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sprint/smps/pojo/PaymentAccount;",
            ">;"
        }
    .end annotation

    .prologue
    .line 555
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 556
    .local v3, temp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sprint/smps/pojo/PaymentAccount;>;"
    iget-object v5, p0, Lcom/sprint/smps/service/ClientResponse;->userPayments:Ljava/util/List;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 558
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 559
    .local v2, sortedPayments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sprint/smps/pojo/PaymentAccount;>;"
    iget-object v5, p0, Lcom/sprint/smps/service/ClientResponse;->paymentOrder:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 560
    .local v0, enumerator:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_15
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-nez v5, :cond_2d

    .line 572
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_28

    .line 574
    const/4 v1, 0x0

    .local v1, i:I
    :goto_22
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v1, v5, :cond_57

    .line 577
    .end local v1           #i:I
    :cond_28
    iput-object v2, p0, Lcom/sprint/smps/service/ClientResponse;->userPayments:Ljava/util/List;

    .line 579
    iget-object v5, p0, Lcom/sprint/smps/service/ClientResponse;->userPayments:Ljava/util/List;

    return-object v5

    .line 562
    :cond_2d
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 563
    .local v4, type:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    .restart local v1       #i:I
    :goto_39
    if-ltz v1, :cond_15

    .line 565
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sprint/smps/pojo/PaymentAccount;

    invoke-virtual {v5}, Lcom/sprint/smps/pojo/PaymentAccount;->getCardAssociation()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_54

    .line 568
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sprint/smps/pojo/PaymentAccount;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 563
    :cond_54
    add-int/lit8 v1, v1, -0x1

    goto :goto_39

    .line 575
    .end local v4           #type:Ljava/lang/String;
    :cond_57
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sprint/smps/pojo/PaymentAccount;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 574
    add-int/lit8 v1, v1, 0x1

    goto :goto_22
.end method

.method public getStatus()Ljava/lang/String;
    .registers 2

    .prologue
    .line 588
    iget-object v0, p0, Lcom/sprint/smps/service/ClientResponse;->status:Ljava/lang/String;

    return-object v0
.end method

.method public getTermsAndConditions()Lcom/sprint/smps/pojo/TermsAndConditions;
    .registers 2

    .prologue
    .line 461
    iget-object v0, p0, Lcom/sprint/smps/service/ClientResponse;->tac:Lcom/sprint/smps/pojo/TermsAndConditions;

    return-object v0
.end method

.method public getUserPayments()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sprint/smps/pojo/PaymentAccount;",
            ">;"
        }
    .end annotation

    .prologue
    .line 582
    iget-object v0, p0, Lcom/sprint/smps/service/ClientResponse;->userPayments:Ljava/util/List;

    return-object v0
.end method

.method public hasError()Z
    .registers 3

    .prologue
    .line 518
    invoke-virtual {p0}, Lcom/sprint/smps/service/ClientResponse;->getErrorNo()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Lcom/sprint/smps/service/ClientResponse;->getErrorNo()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x0

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x1

    goto :goto_13
.end method

.method public hasSecurityQuestionsSet()Z
    .registers 2

    .prologue
    .line 514
    iget-boolean v0, p0, Lcom/sprint/smps/service/ClientResponse;->securityQuestionsSet:Z

    return v0
.end method

.method public mustDoUpgrade()Z
    .registers 2

    .prologue
    .line 484
    iget-boolean v0, p0, Lcom/sprint/smps/service/ClientResponse;->mustUpgrade:Z

    return v0
.end method

.method public setAlternativePayment(Lcom/sprint/smps/pojo/AlternativePayment;)V
    .registers 2
    .parameter "alternativePayment"

    .prologue
    .line 594
    iput-object p1, p0, Lcom/sprint/smps/service/ClientResponse;->alternativePayment:Lcom/sprint/smps/pojo/AlternativePayment;

    .line 595
    return-void
.end method

.method public setContext(Ljava/lang/String;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 490
    iput-object p1, p0, Lcom/sprint/smps/service/ClientResponse;->context:Ljava/lang/String;

    .line 491
    return-void
.end method

.method public setDefaultAddress(Lcom/sprint/smps/pojo/Address;)V
    .registers 2
    .parameter "defaultAddresst"

    .prologue
    .line 476
    iput-object p1, p0, Lcom/sprint/smps/service/ClientResponse;->defaultAddress:Lcom/sprint/smps/pojo/Address;

    .line 477
    return-void
.end method

.method public setDefaultPayment(Lcom/sprint/smps/pojo/PaymentAccount;)V
    .registers 2
    .parameter "defaultPaymentAccount"

    .prologue
    .line 470
    iput-object p1, p0, Lcom/sprint/smps/service/ClientResponse;->defaultPayment:Lcom/sprint/smps/pojo/PaymentAccount;

    .line 471
    return-void
.end method

.method public setEndUser(Lcom/sprint/smps/pojo/User;)V
    .registers 2
    .parameter "endUser"

    .prologue
    .line 551
    iput-object p1, p0, Lcom/sprint/smps/service/ClientResponse;->endUser:Lcom/sprint/smps/pojo/User;

    .line 552
    return-void
.end method

.method public setErrorDesc(Ljava/lang/String;)V
    .registers 2
    .parameter "errorDesc"

    .prologue
    .line 502
    iput-object p1, p0, Lcom/sprint/smps/service/ClientResponse;->errorDesc:Ljava/lang/String;

    .line 503
    return-void
.end method

.method public setErrorNo(Ljava/lang/String;)V
    .registers 2
    .parameter "errorNo"

    .prologue
    .line 508
    iput-object p1, p0, Lcom/sprint/smps/service/ClientResponse;->errorNo:Ljava/lang/String;

    .line 509
    return-void
.end method

.method public setFAQs(Ljava/util/LinkedHashMap;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Vector",
            "<",
            "Lcom/sprint/smps/pojo/QuestionAnswer;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 458
    .local p1, faqs:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/util/Vector<Lcom/sprint/smps/pojo/QuestionAnswer;>;>;"
    iput-object p1, p0, Lcom/sprint/smps/service/ClientResponse;->faqs:Ljava/util/LinkedHashMap;

    .line 459
    return-void
.end method

.method public setIsUserRegisteredContext(Ljava/lang/String;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 496
    iput-object p1, p0, Lcom/sprint/smps/service/ClientResponse;->isUserRegisteredContext:Ljava/lang/String;

    .line 497
    return-void
.end method

.method public setLstAddress(Ljava/util/List;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sprint/smps/pojo/Address;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 521
    .local p1, lstAddress:Ljava/util/List;,"Ljava/util/List<Lcom/sprint/smps/pojo/Address;>;"
    iput-object p1, p0, Lcom/sprint/smps/service/ClientResponse;->lstAddress:Ljava/util/List;

    .line 522
    return-void
.end method

.method public setLstTransactions(Ljava/util/List;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sprint/smps/pojo/PaymentTransaction;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 527
    .local p1, lstTransactions:Ljava/util/List;,"Ljava/util/List<Lcom/sprint/smps/pojo/PaymentTransaction;>;"
    iput-object p1, p0, Lcom/sprint/smps/service/ClientResponse;->lstTransactions:Ljava/util/List;

    .line 528
    return-void
.end method

.method public setPaymentKey(Ljava/lang/String;)V
    .registers 2
    .parameter "paymentKey"

    .prologue
    .line 533
    iput-object p1, p0, Lcom/sprint/smps/service/ClientResponse;->paymentKey:Ljava/lang/String;

    .line 534
    return-void
.end method

.method public setQuestions(Ljava/util/LinkedHashMap;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 437
    .local p1, questions:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/sprint/smps/service/ClientResponse;->questions:Ljava/util/LinkedHashMap;

    .line 438
    return-void
.end method

.method public setRequestID(Ljava/lang/String;)V
    .registers 2
    .parameter "requestID"

    .prologue
    .line 539
    iput-object p1, p0, Lcom/sprint/smps/service/ClientResponse;->requestID:Ljava/lang/String;

    .line 540
    return-void
.end method

.method public setResponseID(Ljava/lang/String;)V
    .registers 2
    .parameter "responseID"

    .prologue
    .line 545
    iput-object p1, p0, Lcom/sprint/smps/service/ClientResponse;->responseID:Ljava/lang/String;

    .line 546
    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .registers 2
    .parameter "status"

    .prologue
    .line 591
    iput-object p1, p0, Lcom/sprint/smps/service/ClientResponse;->status:Ljava/lang/String;

    .line 592
    return-void
.end method

.method public setTermsAndConditions(Lcom/sprint/smps/pojo/TermsAndConditions;)V
    .registers 2
    .parameter "tac"

    .prologue
    .line 464
    iput-object p1, p0, Lcom/sprint/smps/service/ClientResponse;->tac:Lcom/sprint/smps/pojo/TermsAndConditions;

    .line 465
    return-void
.end method

.method public setUserPayments(Ljava/util/List;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sprint/smps/pojo/PaymentAccount;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 585
    .local p1, userPayments:Ljava/util/List;,"Ljava/util/List<Lcom/sprint/smps/pojo/PaymentAccount;>;"
    iput-object p1, p0, Lcom/sprint/smps/service/ClientResponse;->userPayments:Ljava/util/List;

    .line 586
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 603
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 604
    const-string v1, ": context="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sprint/smps/service/ClientResponse;->context:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 605
    const-string v1, ", errorDesc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sprint/smps/service/ClientResponse;->errorDesc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 606
    const-string v1, ", errorNo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sprint/smps/service/ClientResponse;->errorNo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 607
    const-string v1, ", lstAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sprint/smps/service/ClientResponse;->lstAddress:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 608
    const-string v1, ", lstTransactions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sprint/smps/service/ClientResponse;->lstTransactions:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 609
    const-string v1, ", paymentKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sprint/smps/service/ClientResponse;->paymentKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 610
    const-string v1, ", requestID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sprint/smps/service/ClientResponse;->requestID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 611
    const-string v1, ", responseID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sprint/smps/service/ClientResponse;->responseID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 612
    const-string v1, ", endUser="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sprint/smps/service/ClientResponse;->endUser:Lcom/sprint/smps/pojo/User;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 613
    const-string v1, ", userPayments="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sprint/smps/service/ClientResponse;->userPayments:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 614
    const-string v1, ", alternativePayment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sprint/smps/service/ClientResponse;->alternativePayment:Lcom/sprint/smps/pojo/AlternativePayment;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 615
    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sprint/smps/service/ClientResponse;->status:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 603
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

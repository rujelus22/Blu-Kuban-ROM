.class public Lcom/google/android/finsky/billing/carrierbilling/api/DcbApi;
.super Ljava/lang/Object;
.source "DcbApi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/billing/carrierbilling/api/DcbApi$RequestQueueErrorListener;,
        Lcom/google/android/finsky/billing/carrierbilling/api/DcbApi$CredentialsJsonConverter;,
        Lcom/google/android/finsky/billing/carrierbilling/api/DcbApi$ProvisioningJsonConverter;
    }
.end annotation


# static fields
.field private static final DCB_TIMEOUT_MS:I


# instance fields
.field private final mDcbContext:Lcom/google/android/finsky/billing/carrierbilling/api/DcbApiContext;

.field private final mRequestQueue:Lcom/android/volley/RequestQueue;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 37
    sget-object v0, Lcom/google/android/finsky/config/G;->purchaseStatusTimeoutMs:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/google/android/finsky/billing/carrierbilling/api/DcbApi;->DCB_TIMEOUT_MS:I

    return-void
.end method

.method public constructor <init>(Lcom/android/volley/RequestQueue;Lcom/google/android/finsky/billing/carrierbilling/api/DcbApiContext;)V
    .registers 3
    .parameter "requestQueue"
    .parameter "dcbContext"

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/google/android/finsky/billing/carrierbilling/api/DcbApi;->mRequestQueue:Lcom/android/volley/RequestQueue;

    .line 50
    iput-object p2, p0, Lcom/google/android/finsky/billing/carrierbilling/api/DcbApi;->mDcbContext:Lcom/google/android/finsky/billing/carrierbilling/api/DcbApiContext;

    .line 51
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/billing/carrierbilling/api/DcbApi;)Lcom/android/volley/RequestQueue;
    .registers 2
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/api/DcbApi;->mRequestQueue:Lcom/android/volley/RequestQueue;

    return-object v0
.end method

.method static buildCredentials(Lorg/json/JSONObject;)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials;
    .registers 10
    .parameter "object"

    .prologue
    const/4 v6, 0x0

    .line 257
    :try_start_1
    invoke-static {p0}, Lcom/google/android/finsky/billing/carrierbilling/JsonUtils;->toLowerCase(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p0

    .line 258
    const-string v5, "version"

    invoke-static {p0, v5}, Lcom/google/android/finsky/billing/carrierbilling/JsonUtils;->getInt(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 259
    .local v0, apiVersion:Ljava/lang/Integer;
    const-string v5, "credentialexpirationtime"

    invoke-static {p0, v5}, Lcom/google/android/finsky/billing/carrierbilling/JsonUtils;->getLong(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    .line 260
    .local v1, expirationTime:Ljava/lang/Long;
    const-string v5, "isprovisioned"

    invoke-static {p0, v5}, Lcom/google/android/finsky/billing/carrierbilling/JsonUtils;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    .line 261
    .local v2, isProvisioned:Ljava/lang/Boolean;
    const-string v5, "passwordinvalid"

    invoke-static {p0, v5}, Lcom/google/android/finsky/billing/carrierbilling/JsonUtils;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    .line 263
    .local v4, passwordInvalid:Ljava/lang/Boolean;
    new-instance v7, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials$Builder;

    invoke-direct {v7}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials$Builder;-><init>()V

    if-eqz v0, :cond_59

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    :goto_28
    invoke-virtual {v7, v5}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials$Builder;->setApiVersion(I)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials$Builder;

    move-result-object v5

    const-string v7, "credential"

    invoke-static {p0, v7}, Lcom/google/android/finsky/billing/carrierbilling/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials$Builder;->setCredentials(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials$Builder;

    move-result-object v5

    if-eqz v1, :cond_5b

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    :goto_3c
    invoke-virtual {v5, v7, v8}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials$Builder;->setExpirationTime(J)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials$Builder;

    move-result-object v7

    if-eqz v2, :cond_5e

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    :goto_46
    invoke-virtual {v7, v5}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials$Builder;->setIsProvisioned(Z)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials$Builder;

    move-result-object v7

    if-eqz v4, :cond_60

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    :goto_50
    invoke-virtual {v7, v5}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials$Builder;->setInvalidPassword(Z)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials$Builder;->build()Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials;
    :try_end_57
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_57} :catch_62

    move-result-object v5

    .line 272
    .end local v0           #apiVersion:Ljava/lang/Integer;
    .end local v1           #expirationTime:Ljava/lang/Long;
    .end local v2           #isProvisioned:Ljava/lang/Boolean;
    .end local v4           #passwordInvalid:Ljava/lang/Boolean;
    :goto_58
    return-object v5

    .restart local v0       #apiVersion:Ljava/lang/Integer;
    .restart local v1       #expirationTime:Ljava/lang/Long;
    .restart local v2       #isProvisioned:Ljava/lang/Boolean;
    .restart local v4       #passwordInvalid:Ljava/lang/Boolean;
    :cond_59
    move v5, v6

    .line 263
    goto :goto_28

    :cond_5b
    const-wide/16 v7, 0x0

    goto :goto_3c

    :cond_5e
    move v5, v6

    goto :goto_46

    :cond_60
    move v5, v6

    goto :goto_50

    .line 270
    .end local v0           #apiVersion:Ljava/lang/Integer;
    .end local v1           #expirationTime:Ljava/lang/Long;
    .end local v2           #isProvisioned:Ljava/lang/Boolean;
    .end local v4           #passwordInvalid:Ljava/lang/Boolean;
    :catch_62
    move-exception v3

    .line 271
    .local v3, jsone:Lorg/json/JSONException;
    const-string v5, "JSON Exception while building credentials"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 272
    const/4 v5, 0x0

    goto :goto_58
.end method

.method private static buildEncryptedSubscriberInfo(Lorg/json/JSONObject;)Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo;
    .registers 6
    .parameter "object"

    .prologue
    const/4 v3, 0x0

    .line 295
    if-nez p0, :cond_5

    .line 296
    const/4 v2, 0x0

    .line 302
    :goto_4
    return-object v2

    .line 299
    :cond_5
    const-string v2, "googlekeyversion"

    invoke-static {p0, v2}, Lcom/google/android/finsky/billing/carrierbilling/JsonUtils;->getInt(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 300
    .local v1, googleKeyVersion:Ljava/lang/Integer;
    const-string v2, "carrierkeyversion"

    invoke-static {p0, v2}, Lcom/google/android/finsky/billing/carrierbilling/JsonUtils;->getInt(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 302
    .local v0, carrierKeyVersion:Ljava/lang/Integer;
    new-instance v2, Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo$Builder;

    invoke-direct {v2}, Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo$Builder;-><init>()V

    const-string v4, "message"

    invoke-static {p0, v4}, Lcom/google/android/finsky/billing/carrierbilling/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo$Builder;->setMessage(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo$Builder;

    move-result-object v2

    const-string v4, "encryptedkey"

    invoke-static {p0, v4}, Lcom/google/android/finsky/billing/carrierbilling/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo$Builder;->setEncryptedKey(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo$Builder;

    move-result-object v2

    const-string v4, "signature"

    invoke-static {p0, v4}, Lcom/google/android/finsky/billing/carrierbilling/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo$Builder;->setSignature(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo$Builder;

    move-result-object v2

    const-string v4, "initvector"

    invoke-static {p0, v4}, Lcom/google/android/finsky/billing/carrierbilling/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo$Builder;->setInitVector(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo$Builder;

    move-result-object v4

    if-eqz v1, :cond_57

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :goto_44
    invoke-virtual {v4, v2}, Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo$Builder;->setGoogleKeyVersion(I)Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo$Builder;

    move-result-object v2

    if-eqz v0, :cond_4e

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :cond_4e
    invoke-virtual {v2, v3}, Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo$Builder;->setCarrierKeyVersion(I)Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo$Builder;->build()Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo;

    move-result-object v2

    goto :goto_4

    :cond_57
    move v2, v3

    goto :goto_44
.end method

.method static buildProvisioning(Lorg/json/JSONObject;)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;
    .registers 11
    .parameter "object"

    .prologue
    const/4 v7, 0x0

    .line 217
    :try_start_1
    invoke-static {p0}, Lcom/google/android/finsky/billing/carrierbilling/JsonUtils;->toLowerCase(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p0

    .line 219
    const-string v6, "isprovisioned"

    invoke-static {p0, v6}, Lcom/google/android/finsky/billing/carrierbilling/JsonUtils;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    .line 220
    .local v1, isProvisioned:Ljava/lang/Boolean;
    const-string v6, "transactionlimit"

    invoke-static {p0, v6}, Lcom/google/android/finsky/billing/carrierbilling/JsonUtils;->getLong(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    .line 221
    .local v5, transactionLimit:Ljava/lang/Long;
    const-string v6, "passwordrequired"

    invoke-static {p0, v6}, Lcom/google/android/finsky/billing/carrierbilling/JsonUtils;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    .line 223
    .local v3, passwordRequired:Ljava/lang/Boolean;
    const-string v6, "subscribername"

    invoke-static {p0, v6}, Lcom/google/android/finsky/billing/carrierbilling/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "subscriberidentifier"

    invoke-static {p0, v8}, Lcom/google/android/finsky/billing/carrierbilling/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "subscriberaddress"

    invoke-static {p0, v9}, Lcom/google/android/finsky/billing/carrierbilling/JsonUtils;->getObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    invoke-static {v6, v8, v9}, Lcom/google/android/finsky/billing/carrierbilling/api/DcbApi;->buildSubscriberInfo(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;

    move-result-object v4

    .line 227
    .local v4, subscriberInfo:Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;
    const-string v6, "encryptedsubscriberinfo"

    invoke-static {p0, v6}, Lcom/google/android/finsky/billing/carrierbilling/JsonUtils;->getObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/finsky/billing/carrierbilling/api/DcbApi;->buildEncryptedSubscriberInfo(Lorg/json/JSONObject;)Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo;

    move-result-object v0

    .line 230
    .local v0, encryptedSubscriberInfo:Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo;
    new-instance v6, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;

    invoke-direct {v6}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;-><init>()V

    const-string v8, "version"

    invoke-static {p0, v8}, Lcom/google/android/finsky/billing/carrierbilling/JsonUtils;->getInt(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v6, v8}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;->setApiVersion(I)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;

    move-result-object v8

    if-eqz v1, :cond_d7

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    :goto_50
    invoke-virtual {v8, v6}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;->setIsProvisioned(Z)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;

    move-result-object v6

    const-string v8, "provisioningid"

    invoke-static {p0, v8}, Lcom/google/android/finsky/billing/carrierbilling/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;->setProvisioningId(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;

    move-result-object v6

    const-string v8, "tosurl"

    invoke-static {p0, v8}, Lcom/google/android/finsky/billing/carrierbilling/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;->setTosUrl(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;

    move-result-object v6

    const-string v8, "tosversion"

    invoke-static {p0, v8}, Lcom/google/android/finsky/billing/carrierbilling/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;->setTosVersion(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;

    move-result-object v6

    const-string v8, "subscribercurrency"

    invoke-static {p0, v8}, Lcom/google/android/finsky/billing/carrierbilling/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;->setSubscriberCurrency(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;

    move-result-object v6

    if-eqz v5, :cond_da

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    :goto_82
    invoke-virtual {v6, v8, v9}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;->setTransactionLimit(J)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;

    move-result-object v6

    const-string v8, "accounttype"

    invoke-static {p0, v8}, Lcom/google/android/finsky/billing/carrierbilling/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;->setAccountType(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;->setSubscriberInfo(Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;

    move-result-object v6

    invoke-static {p0}, Lcom/google/android/finsky/billing/carrierbilling/api/DcbApi;->buildCredentials(Lorg/json/JSONObject;)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;->setCredentials(Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials;)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;

    move-result-object v8

    if-eqz v3, :cond_dd

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    :goto_a2
    invoke-virtual {v8, v6}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;->setPasswordRequired(Z)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;

    move-result-object v6

    const-string v8, "passwordprompt"

    invoke-static {p0, v8}, Lcom/google/android/finsky/billing/carrierbilling/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;->setPasswordPrompt(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;

    move-result-object v6

    const-string v8, "passwordforgoturl"

    invoke-static {p0, v8}, Lcom/google/android/finsky/billing/carrierbilling/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;->setPasswordForgotUrl(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;->setEncryptedSubscriberInfo(Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo;)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;

    move-result-object v6

    const-string v8, "addresssnippet"

    invoke-static {p0, v8}, Lcom/google/android/finsky/billing/carrierbilling/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;->setAddressSnippet(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;

    move-result-object v6

    const-string v8, "country"

    invoke-static {p0, v8}, Lcom/google/android/finsky/billing/carrierbilling/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;->setCountry(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;->build()Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;
    :try_end_d5
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_d5} :catch_df

    move-result-object v6

    .line 250
    .end local v0           #encryptedSubscriberInfo:Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo;
    .end local v1           #isProvisioned:Ljava/lang/Boolean;
    .end local v3           #passwordRequired:Ljava/lang/Boolean;
    .end local v4           #subscriberInfo:Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;
    .end local v5           #transactionLimit:Ljava/lang/Long;
    :goto_d6
    return-object v6

    .restart local v0       #encryptedSubscriberInfo:Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo;
    .restart local v1       #isProvisioned:Ljava/lang/Boolean;
    .restart local v3       #passwordRequired:Ljava/lang/Boolean;
    .restart local v4       #subscriberInfo:Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;
    .restart local v5       #transactionLimit:Ljava/lang/Long;
    :cond_d7
    move v6, v7

    .line 230
    goto/16 :goto_50

    :cond_da
    const-wide/16 v8, 0x0

    goto :goto_82

    :cond_dd
    move v6, v7

    goto :goto_a2

    .line 248
    .end local v0           #encryptedSubscriberInfo:Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo;
    .end local v1           #isProvisioned:Ljava/lang/Boolean;
    .end local v3           #passwordRequired:Ljava/lang/Boolean;
    .end local v4           #subscriberInfo:Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;
    .end local v5           #transactionLimit:Ljava/lang/Long;
    :catch_df
    move-exception v2

    .line 249
    .local v2, jsone:Lorg/json/JSONException;
    const-string v6, "JSON Exception while building provisioning"

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 250
    const/4 v6, 0x0

    goto :goto_d6
.end method

.method private static buildSubscriberInfo(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;
    .registers 5
    .parameter "name"
    .parameter "identifier"
    .parameter "object"

    .prologue
    .line 278
    if-nez p2, :cond_4

    .line 279
    const/4 v0, 0x0

    .line 282
    :goto_3
    return-object v0

    :cond_4
    new-instance v0, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;

    invoke-direct {v0}, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;->setName(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;->setIdentifier(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;

    move-result-object v0

    const-string v1, "address1"

    invoke-static {p2, v1}, Lcom/google/android/finsky/billing/carrierbilling/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;->setAddress1(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;

    move-result-object v0

    const-string v1, "address2"

    invoke-static {p2, v1}, Lcom/google/android/finsky/billing/carrierbilling/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;->setAddress2(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;

    move-result-object v0

    const-string v1, "city"

    invoke-static {p2, v1}, Lcom/google/android/finsky/billing/carrierbilling/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;->setCity(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;

    move-result-object v0

    const-string v1, "state"

    invoke-static {p2, v1}, Lcom/google/android/finsky/billing/carrierbilling/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;->setState(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;

    move-result-object v0

    const-string v1, "postalcode"

    invoke-static {p2, v1}, Lcom/google/android/finsky/billing/carrierbilling/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;->setPostalCode(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;

    move-result-object v0

    const-string v1, "country"

    invoke-static {p2, v1}, Lcom/google/android/finsky/billing/carrierbilling/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;->setCountry(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;->build()Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;

    move-result-object v0

    goto :goto_3
.end method


# virtual methods
.method getBaseParametersAsJsonObject()Lorg/json/JSONObject;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 189
    iget-object v5, p0, Lcom/google/android/finsky/billing/carrierbilling/api/DcbApi;->mDcbContext:Lcom/google/android/finsky/billing/carrierbilling/api/DcbApiContext;

    invoke-virtual {v5}, Lcom/google/android/finsky/billing/carrierbilling/api/DcbApiContext;->getCarrierBillingParameters()Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;

    move-result-object v3

    .line 191
    .local v3, params:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 192
    .local v1, jsonObject:Lorg/json/JSONObject;
    const-string v5, "format"

    const-string v6, "json"

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 194
    invoke-virtual {v3}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->getCarrierApiVersion()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 195
    .local v0, apiVersion:Ljava/lang/Integer;
    if-eqz v0, :cond_22

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-gtz v5, :cond_27

    .line 196
    :cond_22
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 198
    :cond_27
    const-string v5, "version"

    invoke-virtual {v1, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 200
    invoke-virtual {v3}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->sendSubscriberInfoWithCarrierRequests()Z

    move-result v5

    if-eqz v5, :cond_54

    .line 201
    iget-object v5, p0, Lcom/google/android/finsky/billing/carrierbilling/api/DcbApi;->mDcbContext:Lcom/google/android/finsky/billing/carrierbilling/api/DcbApiContext;

    invoke-virtual {v5}, Lcom/google/android/finsky/billing/carrierbilling/api/DcbApiContext;->getLine1Number()Ljava/lang/String;

    move-result-object v2

    .line 202
    .local v2, line1Number:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_43

    .line 203
    const-string v5, "line1Number"

    invoke-virtual {v1, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 205
    :cond_43
    iget-object v5, p0, Lcom/google/android/finsky/billing/carrierbilling/api/DcbApi;->mDcbContext:Lcom/google/android/finsky/billing/carrierbilling/api/DcbApiContext;

    invoke-virtual {v5}, Lcom/google/android/finsky/billing/carrierbilling/api/DcbApiContext;->getSubscriberId()Ljava/lang/String;

    move-result-object v4

    .line 206
    .local v4, subscriberId:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_54

    .line 207
    const-string v5, "subscriberId"

    invoke-virtual {v1, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 211
    .end local v2           #line1Number:Ljava/lang/String;
    .end local v4           #subscriberId:Ljava/lang/String;
    :cond_54
    return-object v1
.end method

.method public getCredentials(Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;
    .registers 12
    .parameter "provisioningId"
    .parameter "password"
    .parameter
    .parameter "errorListener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")",
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 96
    .local p3, listener:Lcom/android/volley/Response$Listener;,"Lcom/android/volley/Response$Listener<Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials;>;"
    iget-object v3, p0, Lcom/google/android/finsky/billing/carrierbilling/api/DcbApi;->mDcbContext:Lcom/google/android/finsky/billing/carrierbilling/api/DcbApiContext;

    invoke-virtual {v3}, Lcom/google/android/finsky/billing/carrierbilling/api/DcbApiContext;->getCarrierBillingParameters()Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;

    move-result-object v1

    .line 97
    .local v1, params:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;
    invoke-virtual {p0, p1, p2}, Lcom/google/android/finsky/billing/carrierbilling/api/DcbApi;->getCredentialsParametersAsJsonObject(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 99
    .local v0, jsonRequest:Lorg/json/JSONObject;
    new-instance v2, Lcom/android/volley/toolbox/JsonObjectRequest;

    invoke-virtual {v1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->getGetCredentialsUrl()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/google/android/finsky/billing/carrierbilling/api/DcbApi$CredentialsJsonConverter;

    invoke-direct {v4, p0, p3}, Lcom/google/android/finsky/billing/carrierbilling/api/DcbApi$CredentialsJsonConverter;-><init>(Lcom/google/android/finsky/billing/carrierbilling/api/DcbApi;Lcom/android/volley/Response$Listener;)V

    new-instance v5, Lcom/google/android/finsky/billing/carrierbilling/api/DcbApi$RequestQueueErrorListener;

    invoke-direct {v5, p0, p4}, Lcom/google/android/finsky/billing/carrierbilling/api/DcbApi$RequestQueueErrorListener;-><init>(Lcom/google/android/finsky/billing/carrierbilling/api/DcbApi;Lcom/android/volley/Response$ErrorListener;)V

    invoke-direct {v2, v3, v0, v4, v5}, Lcom/android/volley/toolbox/JsonObjectRequest;-><init>(Ljava/lang/String;Lorg/json/JSONObject;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 102
    .local v2, request:Lcom/android/volley/toolbox/JsonObjectRequest;
    new-instance v3, Lcom/android/volley/DefaultRetryPolicy;

    sget v4, Lcom/google/android/finsky/billing/carrierbilling/api/DcbApi;->DCB_TIMEOUT_MS:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    invoke-virtual {v2, v3}, Lcom/android/volley/toolbox/JsonObjectRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)V

    .line 104
    iget-object v3, p0, Lcom/google/android/finsky/billing/carrierbilling/api/DcbApi;->mRequestQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v3}, Lcom/android/volley/RequestQueue;->start()V

    .line 105
    iget-object v3, p0, Lcom/google/android/finsky/billing/carrierbilling/api/DcbApi;->mRequestQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v3, v2}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    move-result-object v3

    return-object v3
.end method

.method getCredentialsParametersAsJsonObject(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 8
    .parameter "provisioningId"
    .parameter "password"

    .prologue
    .line 171
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/api/DcbApi;->getBaseParametersAsJsonObject()Lorg/json/JSONObject;

    move-result-object v0

    .line 173
    .local v0, jsonObject:Lorg/json/JSONObject;
    if-eqz p1, :cond_b

    .line 174
    const-string v2, "provisioningId"

    invoke-virtual {v0, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 176
    :cond_b
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_16

    .line 177
    const-string v2, "password"

    invoke-virtual {v0, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_16
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_16} :catch_17

    .line 183
    .end local v0           #jsonObject:Lorg/json/JSONObject;
    :cond_16
    :goto_16
    return-object v0

    .line 181
    :catch_17
    move-exception v1

    .line 182
    .local v1, jsone:Lorg/json/JSONException;
    const-string v2, "JSONException while creating credentials request: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 183
    const/4 v0, 0x0

    goto :goto_16
.end method

.method public getProvisioning(Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;
    .registers 11
    .parameter "acceptedTosVersion"
    .parameter
    .parameter "errorListener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")",
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 65
    .local p2, listener:Lcom/android/volley/Response$Listener;,"Lcom/android/volley/Response$Listener<Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;>;"
    iget-object v3, p0, Lcom/google/android/finsky/billing/carrierbilling/api/DcbApi;->mDcbContext:Lcom/google/android/finsky/billing/carrierbilling/api/DcbApiContext;

    invoke-virtual {v3}, Lcom/google/android/finsky/billing/carrierbilling/api/DcbApiContext;->getCarrierBillingParameters()Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;

    move-result-object v1

    .line 67
    .local v1, params:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;
    sget-object v3, Lcom/google/android/finsky/config/G;->vendingCarrierProvisioningUseTosVersion:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v3}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_43

    .line 68
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/billing/carrierbilling/api/DcbApi;->getProvisioningParametersAsJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 73
    .local v0, jsonRequest:Lorg/json/JSONObject;
    :goto_18
    new-instance v2, Lcom/android/volley/toolbox/JsonObjectRequest;

    invoke-virtual {v1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->getGetProvisioningUrl()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/google/android/finsky/billing/carrierbilling/api/DcbApi$ProvisioningJsonConverter;

    invoke-direct {v4, p0, p2}, Lcom/google/android/finsky/billing/carrierbilling/api/DcbApi$ProvisioningJsonConverter;-><init>(Lcom/google/android/finsky/billing/carrierbilling/api/DcbApi;Lcom/android/volley/Response$Listener;)V

    new-instance v5, Lcom/google/android/finsky/billing/carrierbilling/api/DcbApi$RequestQueueErrorListener;

    invoke-direct {v5, p0, p3}, Lcom/google/android/finsky/billing/carrierbilling/api/DcbApi$RequestQueueErrorListener;-><init>(Lcom/google/android/finsky/billing/carrierbilling/api/DcbApi;Lcom/android/volley/Response$ErrorListener;)V

    invoke-direct {v2, v3, v0, v4, v5}, Lcom/android/volley/toolbox/JsonObjectRequest;-><init>(Ljava/lang/String;Lorg/json/JSONObject;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 76
    .local v2, request:Lcom/android/volley/toolbox/JsonObjectRequest;
    new-instance v3, Lcom/android/volley/DefaultRetryPolicy;

    sget v4, Lcom/google/android/finsky/billing/carrierbilling/api/DcbApi;->DCB_TIMEOUT_MS:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    invoke-virtual {v2, v3}, Lcom/android/volley/toolbox/JsonObjectRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)V

    .line 78
    iget-object v3, p0, Lcom/google/android/finsky/billing/carrierbilling/api/DcbApi;->mRequestQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v3}, Lcom/android/volley/RequestQueue;->start()V

    .line 79
    iget-object v3, p0, Lcom/google/android/finsky/billing/carrierbilling/api/DcbApi;->mRequestQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v3, v2}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    move-result-object v3

    return-object v3

    .line 70
    .end local v0           #jsonRequest:Lorg/json/JSONObject;
    .end local v2           #request:Lcom/android/volley/toolbox/JsonObjectRequest;
    :cond_43
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/google/android/finsky/billing/carrierbilling/api/DcbApi;->getProvisioningParametersAsJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .restart local v0       #jsonRequest:Lorg/json/JSONObject;
    goto :goto_18
.end method

.method getProvisioningParametersAsJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 7
    .parameter "acceptedTosVersion"

    .prologue
    .line 155
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/api/DcbApi;->getBaseParametersAsJsonObject()Lorg/json/JSONObject;

    move-result-object v0

    .line 157
    .local v0, jsonObject:Lorg/json/JSONObject;
    if-eqz p1, :cond_b

    .line 158
    const-string v2, "acceptedTosVersion"

    invoke-virtual {v0, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_b
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_b} :catch_c

    .line 164
    .end local v0           #jsonObject:Lorg/json/JSONObject;
    :cond_b
    :goto_b
    return-object v0

    .line 162
    :catch_c
    move-exception v1

    .line 163
    .local v1, jsone:Lorg/json/JSONException;
    const-string v2, "JSONException while creating provisioning request: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 164
    const/4 v0, 0x0

    goto :goto_b
.end method

.class public Lcom/google/android/vending/remoting/api/VendingApiContext;
.super Ljava/lang/Object;
.source "VendingApiContext.java"


# instance fields
.field private final mAuthenticator:Lcom/android/volley/toolbox/AndroidAuthenticator;

.field private final mContext:Landroid/content/Context;

.field private mHasPerformedInitialSecureTokenInvalidation:Z

.field private mHasPerformedInitialTokenInvalidation:Z

.field private final mHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLastAuthToken:Ljava/lang/String;

.field private mLastSecureAuthToken:Ljava/lang/String;

.field private mReauthenticate:Z

.field private mRequestProperties:Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/accounts/Account;Ljava/util/Locale;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 18
    .parameter "context"
    .parameter "account"
    .parameter "userLocale"
    .parameter "aid"
    .parameter "softwareVersion"
    .parameter "operatorName"
    .parameter "simOperatorName"
    .parameter "operatorNumericName"
    .parameter "simOperatorNumericName"
    .parameter "deviceName"
    .parameter "sdkVersion"
    .parameter "clientId"
    .parameter "loggingId"

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/vending/remoting/api/VendingApiContext;->mReauthenticate:Z

    .line 35
    invoke-static {}, Lcom/google/android/finsky/utils/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/vending/remoting/api/VendingApiContext;->mHeaders:Ljava/util/Map;

    .line 41
    iput-object p1, p0, Lcom/google/android/vending/remoting/api/VendingApiContext;->mContext:Landroid/content/Context;

    .line 42
    iget-object v1, p0, Lcom/google/android/vending/remoting/api/VendingApiContext;->mHeaders:Ljava/util/Map;

    const-string v2, "User-Agent"

    const-string v3, "Android-Market/2"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    new-instance v1, Lcom/android/volley/toolbox/AndroidAuthenticator;

    invoke-direct {v1, p1, p2}, Lcom/android/volley/toolbox/AndroidAuthenticator;-><init>(Landroid/content/Context;Landroid/accounts/Account;)V

    iput-object v1, p0, Lcom/google/android/vending/remoting/api/VendingApiContext;->mAuthenticator:Lcom/android/volley/toolbox/AndroidAuthenticator;

    .line 44
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;-><init>()V

    iput-object v1, p0, Lcom/google/android/vending/remoting/api/VendingApiContext;->mRequestProperties:Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;

    .line 45
    iget-object v1, p0, Lcom/google/android/vending/remoting/api/VendingApiContext;->mRequestProperties:Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;

    invoke-virtual {v1, p4}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->setAid(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;

    .line 46
    iget-object v1, p0, Lcom/google/android/vending/remoting/api/VendingApiContext;->mRequestProperties:Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;

    invoke-virtual {p3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->setUserCountry(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;

    .line 47
    iget-object v1, p0, Lcom/google/android/vending/remoting/api/VendingApiContext;->mRequestProperties:Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;

    invoke-virtual {p3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->setUserLanguage(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;

    .line 48
    iget-object v1, p0, Lcom/google/android/vending/remoting/api/VendingApiContext;->mRequestProperties:Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;

    invoke-virtual {v1, p5}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->setSoftwareVersion(I)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;

    .line 52
    if-eqz p6, :cond_48

    .line 53
    iget-object v1, p0, Lcom/google/android/vending/remoting/api/VendingApiContext;->mRequestProperties:Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;

    invoke-virtual {v1, p6}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->setOperatorName(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;

    .line 55
    :cond_48
    if-eqz p7, :cond_4f

    .line 56
    iget-object v1, p0, Lcom/google/android/vending/remoting/api/VendingApiContext;->mRequestProperties:Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;

    invoke-virtual {v1, p7}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->setSimOperatorName(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;

    .line 58
    :cond_4f
    if-eqz p8, :cond_56

    .line 59
    iget-object v1, p0, Lcom/google/android/vending/remoting/api/VendingApiContext;->mRequestProperties:Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;

    invoke-virtual {v1, p8}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->setOperatorNumericName(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;

    .line 61
    :cond_56
    if-eqz p9, :cond_5d

    .line 62
    iget-object v1, p0, Lcom/google/android/vending/remoting/api/VendingApiContext;->mRequestProperties:Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;

    invoke-virtual {v1, p9}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->setSimOperatorNumericName(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;

    .line 65
    :cond_5d
    iget-object v1, p0, Lcom/google/android/vending/remoting/api/VendingApiContext;->mRequestProperties:Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->setProductNameAndVersion(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;

    .line 66
    iget-object v1, p0, Lcom/google/android/vending/remoting/api/VendingApiContext;->mRequestProperties:Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;

    move-object/from16 v0, p12

    invoke-virtual {v1, v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->setClientId(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;

    .line 67
    iget-object v1, p0, Lcom/google/android/vending/remoting/api/VendingApiContext;->mRequestProperties:Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;

    move-object/from16 v0, p13

    invoke-virtual {v1, v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->setLoggingId(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;

    .line 68
    invoke-direct {p0}, Lcom/google/android/vending/remoting/api/VendingApiContext;->checkUrlRewrites()V

    .line 69
    return-void
.end method

.method private checkRewrittenToSecureUrl(Ljava/lang/String;)V
    .registers 6
    .parameter "url"

    .prologue
    .line 93
    iget-object v1, p0, Lcom/google/android/vending/remoting/api/VendingApiContext;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/google/android/volley/UrlTools;->rewrite(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, rewritten:Ljava/lang/String;
    if-nez v0, :cond_21

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "URL blocked: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 95
    :cond_21
    invoke-static {v0}, Lcom/google/android/finsky/utils/Utils;->checkUrlIsSecure(Ljava/lang/String;)V

    .line 97
    return-void
.end method

.method private checkUrlRewrites()V
    .registers 2

    .prologue
    .line 89
    const-string v0, "https://android.clients.google.com/vending/api/ApiRequest"

    invoke-direct {p0, v0}, Lcom/google/android/vending/remoting/api/VendingApiContext;->checkRewrittenToSecureUrl(Ljava/lang/String;)V

    .line 90
    return-void
.end method


# virtual methods
.method public getAccount()Landroid/accounts/Account;
    .registers 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/google/android/vending/remoting/api/VendingApiContext;->mAuthenticator:Lcom/android/volley/toolbox/AndroidAuthenticator;

    invoke-virtual {v0}, Lcom/android/volley/toolbox/AndroidAuthenticator;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    return-object v0
.end method

.method public getAuthToken()Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/AuthFailureError;
        }
    .end annotation

    .prologue
    .line 76
    iget-object v1, p0, Lcom/google/android/vending/remoting/api/VendingApiContext;->mAuthenticator:Lcom/android/volley/toolbox/AndroidAuthenticator;

    sget-object v0, Lcom/google/android/finsky/config/G;->vendingAuthTokenType:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-boolean v2, p0, Lcom/google/android/vending/remoting/api/VendingApiContext;->mReauthenticate:Z

    invoke-virtual {v1, v0, v2}, Lcom/android/volley/toolbox/AndroidAuthenticator;->getAuthToken(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/vending/remoting/api/VendingApiContext;->mLastAuthToken:Ljava/lang/String;

    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/api/VendingApiContext;->mReauthenticate:Z

    .line 78
    iget-object v0, p0, Lcom/google/android/vending/remoting/api/VendingApiContext;->mLastAuthToken:Ljava/lang/String;

    return-object v0
.end method

.method public getHeaders()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/android/vending/remoting/api/VendingApiContext;->mHeaders:Ljava/util/Map;

    return-object v0
.end method

.method public getRequestProperties(Z)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;
    .registers 7
    .parameter "secureToken"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/AuthFailureError;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 103
    if-eqz p1, :cond_7

    iget-boolean v3, p0, Lcom/google/android/vending/remoting/api/VendingApiContext;->mHasPerformedInitialSecureTokenInvalidation:Z

    if-eqz v3, :cond_d

    :cond_7
    if-nez p1, :cond_14

    iget-boolean v3, p0, Lcom/google/android/vending/remoting/api/VendingApiContext;->mHasPerformedInitialTokenInvalidation:Z

    if-nez v3, :cond_14

    .line 105
    :cond_d
    invoke-virtual {p0, p1}, Lcom/google/android/vending/remoting/api/VendingApiContext;->invalidateAuthToken(Z)V

    .line 106
    if-eqz p1, :cond_2f

    .line 107
    iput-boolean v4, p0, Lcom/google/android/vending/remoting/api/VendingApiContext;->mHasPerformedInitialSecureTokenInvalidation:Z

    .line 113
    :cond_14
    :goto_14
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;-><init>()V

    .line 115
    .local v1, result:Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;
    :try_start_19
    iget-object v3, p0, Lcom/google/android/vending/remoting/api/VendingApiContext;->mRequestProperties:Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;

    invoke-virtual {v3}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->toByteArray()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    .line 116
    if-eqz p1, :cond_32

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/api/VendingApiContext;->getSecureAuthToken()Ljava/lang/String;

    move-result-object v2

    .line 117
    .local v2, token:Ljava/lang/String;
    :goto_28
    invoke-virtual {v1, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->setUserAuthToken(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;

    .line 118
    invoke-virtual {v1, p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->setUserAuthTokenSecure(Z)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;
    :try_end_2e
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_19 .. :try_end_2e} :catch_37

    .line 119
    return-object v1

    .line 109
    .end local v1           #result:Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;
    .end local v2           #token:Ljava/lang/String;
    :cond_2f
    iput-boolean v4, p0, Lcom/google/android/vending/remoting/api/VendingApiContext;->mHasPerformedInitialTokenInvalidation:Z

    goto :goto_14

    .line 116
    .restart local v1       #result:Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;
    :cond_32
    :try_start_32
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/api/VendingApiContext;->getAuthToken()Ljava/lang/String;
    :try_end_35
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_32 .. :try_end_35} :catch_37

    move-result-object v2

    goto :goto_28

    .line 120
    :catch_37
    move-exception v0

    .line 121
    .local v0, e:Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Cannot happen."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getSecureAuthToken()Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/AuthFailureError;
        }
    .end annotation

    .prologue
    .line 82
    iget-object v1, p0, Lcom/google/android/vending/remoting/api/VendingApiContext;->mAuthenticator:Lcom/android/volley/toolbox/AndroidAuthenticator;

    sget-object v0, Lcom/google/android/finsky/config/G;->vendingSecureAuthTokenType:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-boolean v2, p0, Lcom/google/android/vending/remoting/api/VendingApiContext;->mReauthenticate:Z

    invoke-virtual {v1, v0, v2}, Lcom/android/volley/toolbox/AndroidAuthenticator;->getAuthToken(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/vending/remoting/api/VendingApiContext;->mLastSecureAuthToken:Ljava/lang/String;

    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/api/VendingApiContext;->mReauthenticate:Z

    .line 85
    iget-object v0, p0, Lcom/google/android/vending/remoting/api/VendingApiContext;->mLastSecureAuthToken:Ljava/lang/String;

    return-object v0
.end method

.method public invalidateAuthToken(Z)V
    .registers 5
    .parameter "secureToken"

    .prologue
    const/4 v2, 0x0

    .line 130
    if-eqz p1, :cond_11

    iget-object v0, p0, Lcom/google/android/vending/remoting/api/VendingApiContext;->mLastSecureAuthToken:Ljava/lang/String;

    .line 131
    .local v0, token:Ljava/lang/String;
    :goto_5
    if-eqz v0, :cond_c

    .line 132
    iget-object v1, p0, Lcom/google/android/vending/remoting/api/VendingApiContext;->mAuthenticator:Lcom/android/volley/toolbox/AndroidAuthenticator;

    invoke-virtual {v1, v0}, Lcom/android/volley/toolbox/AndroidAuthenticator;->invalidateAuthToken(Ljava/lang/String;)V

    .line 134
    :cond_c
    if-eqz p1, :cond_14

    .line 135
    iput-object v2, p0, Lcom/google/android/vending/remoting/api/VendingApiContext;->mLastSecureAuthToken:Ljava/lang/String;

    .line 139
    :goto_10
    return-void

    .line 130
    .end local v0           #token:Ljava/lang/String;
    :cond_11
    iget-object v0, p0, Lcom/google/android/vending/remoting/api/VendingApiContext;->mLastAuthToken:Ljava/lang/String;

    goto :goto_5

    .line 137
    .restart local v0       #token:Ljava/lang/String;
    :cond_14
    iput-object v2, p0, Lcom/google/android/vending/remoting/api/VendingApiContext;->mLastAuthToken:Ljava/lang/String;

    goto :goto_10
.end method

.method public scheduleReauthentication(Z)V
    .registers 3
    .parameter "secureToken"

    .prologue
    .line 142
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/api/VendingApiContext;->mReauthenticate:Z

    .line 143
    return-void
.end method

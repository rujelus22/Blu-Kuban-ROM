.class public Lcom/google/android/apps/plus/network/ApiaryHttpRequestConfiguration;
.super Ljava/lang/Object;
.source "ApiaryHttpRequestConfiguration.java"

# interfaces
.implements Lcom/google/android/apps/plus/network/HttpRequestConfiguration;


# instance fields
.field private final mAccount:Lcom/google/android/apps/plus/content/EsAccount;

.field private final mBackendOverrideUrl:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private final mScope:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "context"
    .parameter "account"
    .parameter "scope"
    .parameter "backendOverrideUrl"

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/google/android/apps/plus/network/ApiaryHttpRequestConfiguration;->mContext:Landroid/content/Context;

    .line 33
    iput-object p2, p0, Lcom/google/android/apps/plus/network/ApiaryHttpRequestConfiguration;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    .line 34
    iput-object p3, p0, Lcom/google/android/apps/plus/network/ApiaryHttpRequestConfiguration;->mScope:Ljava/lang/String;

    .line 35
    iput-object p4, p0, Lcom/google/android/apps/plus/network/ApiaryHttpRequestConfiguration;->mBackendOverrideUrl:Ljava/lang/String;

    .line 36
    return-void
.end method


# virtual methods
.method public addHeaders(Lorg/apache/http/client/methods/HttpRequestBase;)V
    .registers 11
    .parameter "method"

    .prologue
    .line 43
    const-string v6, "Accept-Encoding"

    const-string v7, "gzip"

    invoke-virtual {p1, v6, v7}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    const-string v6, "Accept-Language"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v6, v7}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    const-string v6, "User-Agent"

    iget-object v7, p0, Lcom/google/android/apps/plus/network/ApiaryHttpRequestConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v7}, Lcom/google/android/apps/plus/network/ApiaryHttpRequestConfiguration;->getUserAgentHeader(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v6, v7}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    const-string v6, "Content-Type"

    const-string v7, "application/json"

    invoke-virtual {p1, v6, v7}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    iget-object v6, p0, Lcom/google/android/apps/plus/network/ApiaryHttpRequestConfiguration;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/google/android/apps/plus/util/AndroidUtils;->getNetworkId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 51
    .local v5, networkId:Ljava/lang/String;
    const-string v6, "X-Network-ID"

    invoke-virtual {p1, v6, v5}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    iget-object v6, p0, Lcom/google/android/apps/plus/network/ApiaryHttpRequestConfiguration;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    if-eqz v6, :cond_70

    .line 58
    :try_start_35
    iget-object v6, p0, Lcom/google/android/apps/plus/network/ApiaryHttpRequestConfiguration;->mScope:Ljava/lang/String;

    invoke-static {v6}, Lcom/google/android/apps/plus/network/ApiaryAuthDataFactory;->getAuthData(Ljava/lang/String;)Lcom/google/android/apps/plus/network/ApiaryAuthDataFactory$ApiaryAuthData;

    move-result-object v0

    .line 59
    .local v0, authData:Lcom/google/android/apps/plus/network/ApiaryAuthDataFactory$ApiaryAuthData;
    iget-object v6, p0, Lcom/google/android/apps/plus/network/ApiaryHttpRequestConfiguration;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/google/android/apps/plus/network/ApiaryHttpRequestConfiguration;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v7}, Lcom/google/android/apps/plus/content/EsAccount;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v6, v7}, Lcom/google/android/apps/plus/network/ApiaryAuthDataFactory$ApiaryAuthData;->getAuthToken(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 60
    .local v2, authToken:Ljava/lang/String;
    invoke-interface {v0, v2}, Lcom/google/android/apps/plus/network/ApiaryAuthDataFactory$ApiaryAuthData;->getAuthTime(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_52} :catch_b0

    move-result-object v1

    .line 65
    .local v1, authTime:Ljava/lang/String;
    const-string v6, "Authorization"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Bearer "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v6, v7}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    const-string v6, "X-Auth-Time"

    invoke-virtual {p1, v6, v1}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .end local v0           #authData:Lcom/google/android/apps/plus/network/ApiaryAuthDataFactory$ApiaryAuthData;
    .end local v1           #authTime:Ljava/lang/String;
    .end local v2           #authToken:Ljava/lang/String;
    :cond_70
    iget-object v6, p0, Lcom/google/android/apps/plus/network/ApiaryHttpRequestConfiguration;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->getStickyC2dmId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 71
    .local v3, c2dmRegistrationId:Ljava/lang/String;
    if-eqz v3, :cond_7d

    .line 72
    const-string v6, "X-Android-App-ID"

    invoke-virtual {p1, v6, v3}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    :cond_7d
    iget-object v6, p0, Lcom/google/android/apps/plus/network/ApiaryHttpRequestConfiguration;->mBackendOverrideUrl:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_af

    .line 81
    const-string v6, "HttpTransaction"

    const/4 v7, 0x3

    invoke-static {v6, v7}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_a8

    .line 82
    const-string v6, "HttpTransaction"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Setting backend override url "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/google/android/apps/plus/network/ApiaryHttpRequestConfiguration;->mBackendOverrideUrl:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :cond_a8
    const-string v6, "X-Google-Backend-Override"

    iget-object v7, p0, Lcom/google/android/apps/plus/network/ApiaryHttpRequestConfiguration;->mBackendOverrideUrl:Ljava/lang/String;

    invoke-virtual {p1, v6, v7}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    :cond_af
    return-void

    .line 61
    .end local v3           #c2dmRegistrationId:Ljava/lang/String;
    :catch_b0
    move-exception v4

    .line 62
    .local v4, e:Ljava/lang/Exception;
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "Cannot obtain authentication token"

    invoke-direct {v6, v7, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
.end method

.method protected getUserAgentHeader(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .parameter "context"

    .prologue
    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/google/android/apps/plus/network/UserAgent;->from(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (gzip)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public invalidateAuthToken()V
    .registers 5

    .prologue
    .line 93
    iget-object v1, p0, Lcom/google/android/apps/plus/network/ApiaryHttpRequestConfiguration;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    if-eqz v1, :cond_15

    .line 97
    :try_start_4
    iget-object v1, p0, Lcom/google/android/apps/plus/network/ApiaryHttpRequestConfiguration;->mScope:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/apps/plus/network/ApiaryAuthDataFactory;->getAuthData(Ljava/lang/String;)Lcom/google/android/apps/plus/network/ApiaryAuthDataFactory$ApiaryAuthData;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/network/ApiaryHttpRequestConfiguration;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/apps/plus/network/ApiaryHttpRequestConfiguration;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/content/EsAccount;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/google/android/apps/plus/network/ApiaryAuthDataFactory$ApiaryAuthData;->invalidateAuthToken(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_15} :catch_16

    .line 103
    :cond_15
    return-void

    .line 99
    :catch_16
    move-exception v0

    .line 100
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Cannot invalidate authentication token"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

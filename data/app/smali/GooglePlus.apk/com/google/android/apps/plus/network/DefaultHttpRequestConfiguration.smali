.class public Lcom/google/android/apps/plus/network/DefaultHttpRequestConfiguration;
.super Ljava/lang/Object;
.source "DefaultHttpRequestConfiguration.java"

# interfaces
.implements Lcom/google/android/apps/plus/network/HttpRequestConfiguration;


# static fields
.field private static final sEnabledFeatures:[Ljava/lang/String;


# instance fields
.field private final mAccount:Lcom/google/android/apps/plus/content/EsAccount;

.field private final mAuthTokenType:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 27
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "278"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "296"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "301"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "342"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "383"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/apps/plus/network/DefaultHttpRequestConfiguration;->sEnabledFeatures:[Ljava/lang/String;

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V
    .registers 4
    .parameter "context"
    .parameter "account"

    .prologue
    .line 47
    const-string v0, "webupdates"

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/apps/plus/network/DefaultHttpRequestConfiguration;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)V
    .registers 4
    .parameter "context"
    .parameter "account"
    .parameter "authTokenType"

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/google/android/apps/plus/network/DefaultHttpRequestConfiguration;->mContext:Landroid/content/Context;

    .line 60
    iput-object p2, p0, Lcom/google/android/apps/plus/network/DefaultHttpRequestConfiguration;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    .line 61
    iput-object p3, p0, Lcom/google/android/apps/plus/network/DefaultHttpRequestConfiguration;->mAuthTokenType:Ljava/lang/String;

    .line 62
    return-void
.end method


# virtual methods
.method public addHeaders(Lorg/apache/http/client/methods/HttpRequestBase;)V
    .registers 7
    .parameter "method"

    .prologue
    .line 71
    const-string v2, "Cache-Control"

    const-string v3, "no-cache, no-transform"

    invoke-virtual {p1, v2, v3}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    const-string v2, "X-Wap-Proxy-Cookie"

    const-string v3, "none"

    invoke-virtual {p1, v2, v3}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const-string v2, "X-Mobile-Google-Client"

    const-string v3, "1"

    invoke-virtual {p1, v2, v3}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const-string v2, "Accept-Encoding"

    const-string v3, "gzip"

    invoke-virtual {p1, v2, v3}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const-string v2, "User-Agent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/google/android/apps/plus/network/DefaultHttpRequestConfiguration;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/google/android/apps/plus/network/UserAgent;->from(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (gzip)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-virtual {p1}, Lorg/apache/http/client/methods/HttpRequestBase;->getURI()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v3, "https"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5a

    invoke-virtual {p1}, Lorg/apache/http/client/methods/HttpRequestBase;->getURI()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v2

    const-string v3, "10.0.2.2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_80

    .line 89
    :cond_5a
    :try_start_5a
    iget-object v2, p0, Lcom/google/android/apps/plus/network/DefaultHttpRequestConfiguration;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/apps/plus/network/DefaultHttpRequestConfiguration;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/content/EsAccount;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/apps/plus/network/DefaultHttpRequestConfiguration;->mAuthTokenType:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/google/android/apps/plus/network/AuthData;->getAuthToken(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_67} :catch_a6

    move-result-object v0

    .line 93
    .local v0, authToken:Ljava/lang/String;
    const-string v2, "Authorization"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GoogleLogin auth="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    .end local v0           #authToken:Ljava/lang/String;
    :cond_80
    const-string v2, "X-Mobile-Google-Client-Version"

    iget-object v3, p0, Lcom/google/android/apps/plus/network/DefaultHttpRequestConfiguration;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/google/android/apps/plus/network/ClientVersion;->from(Landroid/content/Context;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    sget-object v2, Lcom/google/android/apps/plus/network/DefaultHttpRequestConfiguration;->sEnabledFeatures:[Ljava/lang/String;

    if-eqz v2, :cond_a5

    sget-object v2, Lcom/google/android/apps/plus/network/DefaultHttpRequestConfiguration;->sEnabledFeatures:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_a5

    .line 100
    const-string v2, "X-Mobile-Google-Features"

    const-string v3, ","

    sget-object v4, Lcom/google/android/apps/plus/network/DefaultHttpRequestConfiguration;->sEnabledFeatures:[Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    :cond_a5
    return-void

    .line 90
    :catch_a6
    move-exception v1

    .line 91
    .local v1, e:Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Cannot obtain authentication token"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public invalidateAuthToken()V
    .registers 5

    .prologue
    .line 114
    :try_start_0
    iget-object v1, p0, Lcom/google/android/apps/plus/network/DefaultHttpRequestConfiguration;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/apps/plus/network/DefaultHttpRequestConfiguration;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/content/EsAccount;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/plus/network/DefaultHttpRequestConfiguration;->mAuthTokenType:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/google/android/apps/plus/network/AuthData;->invalidateAuthToken(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_e

    .line 118
    return-void

    .line 115
    :catch_e
    move-exception v0

    .line 116
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Cannot invalidate authentication token"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.class public Lcom/sprint/w/installer/util/HttpUtil;
.super Ljava/lang/Object;
.source "HttpUtil.java"


# static fields
.field public static final AUTH_APP_ID:Ljava/lang/String; = "SprintID"

.field private static final AUTH_KEY:Ljava/lang/String; = "2Rcdk2geoO8KlmjhVEjlcruTuRfeOpSS"

.field public static final AUTH_PROXY_HOST:Ljava/lang/String; = "63.168.226.150"

.field public static final AUTH_PROXY_PORT:I = 0x128b

.field private static final AUTH_URL:Ljava/lang/String; = "https://63.168.226.150:4443/PSAAuthentication/PsaAuthenticator"

.field public static final CONNECTION_READ_TIMEOUT:I = 0x7530

.field public static final CONNECTION_TIMEOUT:I = 0x7530

.field public static final MAX_CONNECTIONS:I = 0x5

.field private static appVersion:I

.field public static authCookie:Ljava/lang/String;

.field public static authCookieRequested:Z

.field private static log:Lcom/sprint/id/logger/Logger;

.field private static sHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/16 v6, 0x7530

    const/4 v5, 0x0

    .line 65
    const-class v4, Lcom/sprint/w/installer/util/HttpUtil;

    invoke-static {v4}, Lcom/sprint/id/logger/Logger;->getLogger(Ljava/lang/Class;)Lcom/sprint/id/logger/Logger;

    move-result-object v4

    sput-object v4, Lcom/sprint/w/installer/util/HttpUtil;->log:Lcom/sprint/id/logger/Logger;

    .line 81
    const/4 v4, 0x0

    sput-object v4, Lcom/sprint/w/installer/util/HttpUtil;->authCookie:Ljava/lang/String;

    .line 82
    sput-boolean v5, Lcom/sprint/w/installer/util/HttpUtil;->authCookieRequested:Z

    .line 86
    const/4 v4, -0x1

    sput v4, Lcom/sprint/w/installer/util/HttpUtil;->appVersion:I

    .line 90
    new-instance v2, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v2}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 91
    .local v2, params:Lorg/apache/http/params/HttpParams;
    sget-object v4, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v2, v4}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    .line 92
    invoke-static {v2, v6}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 93
    invoke-static {v2, v6}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 96
    new-instance v3, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 97
    .local v3, sr:Lorg/apache/http/conn/scheme/SchemeRegistry;
    new-instance v4, Lorg/apache/http/conn/scheme/Scheme;

    const-string v5, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v6

    const/16 v7, 0x50

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v3, v4}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 98
    new-instance v4, Lorg/apache/http/conn/scheme/Scheme;

    const-string v5, "https"

    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v6

    const/16 v7, 0x1bb

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v3, v4}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 101
    new-instance v0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v0, v2, v3}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 102
    .local v0, cm:Lorg/apache/http/conn/ClientConnectionManager;
    const/4 v4, 0x5

    invoke-static {v2, v4}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxTotalConnections(Lorg/apache/http/params/HttpParams;I)V

    .line 103
    new-instance v4, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v4, v0, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    sput-object v4, Lcom/sprint/w/installer/util/HttpUtil;->sHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 106
    :try_start_58
    invoke-static {}, Lcom/sprint/w/installer/util/Util;->getApplication()Landroid/app/Application;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-static {}, Lcom/sprint/w/installer/util/Util;->getApplication()Landroid/app/Application;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    iget v4, v4, Landroid/content/pm/PackageInfo;->versionCode:I

    sput v4, Lcom/sprint/w/installer/util/HttpUtil;->appVersion:I
    :try_end_71
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_58 .. :try_end_71} :catch_72

    .line 111
    :goto_71
    return-void

    .line 107
    :catch_72
    move-exception v1

    .line 109
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_71
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/sprint/id/logger/Logger;
    .registers 1

    .prologue
    .line 64
    sget-object v0, Lcom/sprint/w/installer/util/HttpUtil;->log:Lcom/sprint/id/logger/Logger;

    return-object v0
.end method

.method public static executeApiGet(Ljava/lang/String;Ljava/util/Hashtable;Z)Ljava/lang/String;
    .registers 12
    .parameter "url"
    .parameter
    .parameter "isPsiCall"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 144
    .local p1, params:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, ""

    .line 149
    .local v0, content:Ljava/lang/String;
    if-eqz p1, :cond_53

    .line 150
    invoke-virtual {p1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 151
    .local v1, e:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    const/4 v2, 0x1

    .line 152
    .local v2, first:Z
    :goto_9
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_53

    .line 154
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 155
    .local v3, key:Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 158
    .local v5, value:Ljava/lang/String;
    if-nez v2, :cond_30

    .line 159
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "&"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 164
    :cond_30
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "UTF-8"

    invoke-static {v5, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 165
    const/4 v2, 0x0

    .line 166
    goto :goto_9

    .line 169
    .end local v1           #e:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    .end local v2           #first:Z
    .end local v3           #key:Ljava/lang/String;
    .end local v5           #value:Ljava/lang/String;
    :cond_53
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_8f

    const-string v6, ""

    :goto_64
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 170
    .local v4, targetUrl:Ljava/lang/String;
    sget-object v6, Lcom/sprint/w/installer/util/HttpUtil;->log:Lcom/sprint/id/logger/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "executeApiGet: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sprint/id/logger/Logger;->v(Ljava/lang/String;)V

    .line 173
    invoke-static {p2}, Lcom/sprint/w/installer/util/HttpUtil;->isAuthDownload(Z)Z

    move-result v6

    if-eqz v6, :cond_a3

    .line 174
    invoke-static {v4}, Lcom/sprint/w/installer/util/HttpUtil;->executeAuthHttp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 176
    :goto_8e
    return-object v6

    .line 169
    .end local v4           #targetUrl:Ljava/lang/String;
    :cond_8f
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "?"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_64

    .line 176
    .restart local v4       #targetUrl:Ljava/lang/String;
    :cond_a3
    invoke-static {v4}, Lcom/sprint/w/installer/util/HttpUtil;->executeHttpGetWithHeaders(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_8e
.end method

.method public static executeAuthHttp(Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .parameter "psiRequestUrl"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;,
            Lcom/sprint/w/installer/util/aes/AuthExpiredException;
        }
    .end annotation

    .prologue
    .line 238
    sget-object v5, Lcom/sprint/w/installer/util/HttpUtil;->log:Lcom/sprint/id/logger/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "executeAuthHttp:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sprint/id/logger/Logger;->v(Ljava/lang/String;)V

    .line 240
    sget-object v5, Lcom/sprint/w/installer/util/HttpUtil;->log:Lcom/sprint/id/logger/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "executeAuthHttp:authCookie:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/sprint/w/installer/util/HttpUtil;->authCookie:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sprint/id/logger/Logger;->v(Ljava/lang/String;)V

    .line 242
    sget-object v5, Lcom/sprint/w/installer/util/HttpUtil;->authCookie:Ljava/lang/String;

    if-nez v5, :cond_40

    .line 243
    sget-object v5, Lcom/sprint/w/installer/util/HttpUtil;->log:Lcom/sprint/id/logger/Logger;

    const-string v6, "REQUESTING AUTH TOKEN FOR THE HTTPGET REQUEST"

    invoke-virtual {v5, v6}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 244
    invoke-static {}, Lcom/sprint/w/installer/util/HttpUtil;->httpAuthRequest()Ljava/lang/String;

    .line 246
    :cond_40
    sget-object v5, Lcom/sprint/w/installer/util/HttpUtil;->authCookie:Ljava/lang/String;

    if-eqz v5, :cond_ec

    .line 248
    new-instance v4, Ljava/net/URL;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "https://63.168.226.150:4747/?uri="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-static {p0, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 249
    .local v4, u:Ljava/net/URL;
    sget-object v5, Lcom/sprint/w/installer/util/HttpUtil;->log:Lcom/sprint/id/logger/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "URL:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sprint/id/logger/Logger;->v(Ljava/lang/String;)V

    .line 250
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v4}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 251
    .local v1, httpget:Lorg/apache/http/client/methods/HttpGet;
    const-string v5, "x-wap-profile"

    invoke-static {}, Lcom/sprint/w/installer/util/Util;->getUaProfile()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/sprint/w/installer/util/Util;->getNai()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":pcs"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 253
    .local v2, naiString:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-static {v5}, Lcom/sprint/w/installer/util/Base64;->encodeBytes([B)Ljava/lang/String;

    move-result-object v0

    .line 254
    .local v0, encodedNai:Ljava/lang/String;
    const-string v5, "Proxy-Authorization"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Basic "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    const-string v5, "Accept"

    const-string v6, "*/*"

    invoke-virtual {v1, v5, v6}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    const-string v5, "Cookie"

    sget-object v6, Lcom/sprint/w/installer/util/HttpUtil;->authCookie:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    const-string v5, "AppAuth"

    const-string v6, "SprintID"

    invoke-virtual {v1, v5, v6}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    new-instance v3, Lcom/sprint/w/installer/util/HttpUtil$2;

    invoke-direct {v3, p0}, Lcom/sprint/w/installer/util/HttpUtil$2;-><init>(Ljava/lang/String;)V

    .line 311
    .local v3, responseHandler:Lorg/apache/http/client/ResponseHandler;,"Lorg/apache/http/client/ResponseHandler<Ljava/lang/String;>;"
    invoke-static {}, Lcom/sprint/w/installer/util/HttpUtil;->getAuthHttpClient()Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v5

    invoke-virtual {v5, v1, v3}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 313
    .end local v0           #encodedNai:Ljava/lang/String;
    .end local v1           #httpget:Lorg/apache/http/client/methods/HttpGet;
    .end local v2           #naiString:Ljava/lang/String;
    .end local v3           #responseHandler:Lorg/apache/http/client/ResponseHandler;,"Lorg/apache/http/client/ResponseHandler<Ljava/lang/String;>;"
    .end local v4           #u:Ljava/net/URL;
    :goto_eb
    return-object v5

    :cond_ec
    const/4 v5, 0x0

    goto :goto_eb
.end method

.method public static executeHttpGetWithHeaders(Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .parameter "targetUrl"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 197
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v1, p0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 198
    .local v1, httpget:Lorg/apache/http/client/methods/HttpGet;
    const-string v6, "x-wap-profile"

    invoke-static {}, Lcom/sprint/w/installer/util/Util;->getUaProfile()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/sprint/w/installer/util/Util;->getNai()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":pcs"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 200
    .local v2, naiString:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-static {v6}, Lcom/sprint/w/installer/util/Base64;->encodeBytes([B)Ljava/lang/String;

    move-result-object v0

    .line 201
    .local v0, encodedNai:Ljava/lang/String;
    const-string v6, "Proxy-Authorization"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Basic "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    const-string v6, "Accept"

    const-string v7, "*/*"

    invoke-virtual {v1, v6, v7}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    const-string v6, "sprintid-version"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget v8, Lcom/sprint/w/installer/util/HttpUtil;->appVersion:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 208
    .local v5, uri:Landroid/net/Uri;
    invoke-static {v5}, Lcom/sprint/w/installer/util/Util;->isUseMagForUri(Landroid/net/Uri;)Z

    move-result v6

    if-eqz v6, :cond_89

    const-string v6, "http"

    invoke-virtual {v5}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_89

    .line 209
    invoke-static {}, Lcom/sprint/w/installer/util/HttpUtil;->getHttpHost()Lorg/apache/http/HttpHost;

    move-result-object v3

    .line 210
    .local v3, proxy:Lorg/apache/http/HttpHost;
    invoke-virtual {v1}, Lorg/apache/http/client/methods/HttpGet;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v6

    const-string v7, "http.route.default-proxy"

    invoke-interface {v6, v7, v3}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 212
    .end local v3           #proxy:Lorg/apache/http/HttpHost;
    :cond_89
    new-instance v4, Lcom/sprint/w/installer/util/HttpUtil$1;

    invoke-direct {v4, p0}, Lcom/sprint/w/installer/util/HttpUtil$1;-><init>(Ljava/lang/String;)V

    .line 227
    .local v4, responseHandler:Lorg/apache/http/client/ResponseHandler;,"Lorg/apache/http/client/ResponseHandler<Ljava/lang/String;>;"
    sget-object v6, Lcom/sprint/w/installer/util/HttpUtil;->sHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v6, v1, v4}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    return-object v6
.end method

.method public static executeHttpPostWithHeaders(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)Ljava/lang/String;
    .registers 25
    .parameter "url"
    .parameter "postData"
    .parameter "contentType"
    .parameter "addHeaderWapPofile"
    .parameter "addHeaderNAI"
    .parameter "addHeaderUA"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 344
    sget-object v16, Lcom/sprint/w/installer/util/HttpUtil;->log:Lcom/sprint/id/logger/Logger;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Util.executeHttpPostWithHeaders: url= "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Lcom/sprint/id/logger/Logger;->v(Ljava/lang/String;)V

    .line 345
    sget-object v16, Lcom/sprint/w/installer/util/HttpUtil;->log:Lcom/sprint/id/logger/Logger;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Util.executeHttpPostWithHeaders: post= "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Lcom/sprint/id/logger/Logger;->v(Ljava/lang/String;)V

    .line 347
    new-instance v8, Lorg/apache/http/client/methods/HttpPost;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 348
    .local v8, httpPost:Lorg/apache/http/client/methods/HttpPost;
    const-string v16, "Accept-Language"

    invoke-static {}, Lcom/sprint/w/installer/util/Util;->getApplication()Landroid/app/Application;

    move-result-object v17

    const v18, 0x7f0600e4

    invoke-virtual/range {v17 .. v18}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v8, v0, v1}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    const-string v16, "sprintid-version"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    sget v18, Lcom/sprint/w/installer/util/HttpUtil;->appVersion:I

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ""

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v8, v0, v1}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    if-eqz p3, :cond_80

    .line 352
    const-string v16, "x-wap-profile"

    invoke-static {}, Lcom/sprint/w/installer/util/Util;->getUaProfile()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v8, v0, v1}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    :cond_80
    if-eqz p4, :cond_bf

    .line 356
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/sprint/w/installer/util/Util;->getNai()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ":pcs"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 357
    .local v12, naiString:Ljava/lang/String;
    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/sprint/w/installer/util/Base64;->encodeBytes([B)Ljava/lang/String;

    move-result-object v6

    .line 358
    .local v6, encodedNai:Ljava/lang/String;
    const-string v16, "Proxy-Authorization"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Basic "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v8, v0, v1}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    .end local v6           #encodedNai:Ljava/lang/String;
    .end local v12           #naiString:Ljava/lang/String;
    :cond_bf
    if-eqz p5, :cond_ce

    .line 362
    const-string v16, "User-Agent"

    invoke-static {}, Lcom/sprint/w/installer/util/Util;->getUserAgent()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v8, v0, v1}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    :cond_ce
    sget-object v3, Lcom/sprint/w/installer/util/HttpUtil;->sHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 367
    .local v3, client:Lorg/apache/http/impl/client/DefaultHttpClient;
    new-instance v14, Lorg/apache/http/entity/StringEntity;

    move-object/from16 v0, p1

    invoke-direct {v14, v0}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V

    .line 368
    .local v14, s:Lorg/apache/http/entity/StringEntity;
    const-string v16, "Content-Type"

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v8, v0, v1}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    invoke-virtual {v8, v14}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 373
    :try_start_e3
    invoke-virtual {v3, v8}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v13

    .line 374
    .local v13, res:Lorg/apache/http/HttpResponse;
    sget-object v16, Lcom/sprint/w/installer/util/HttpUtil;->log:Lcom/sprint/id/logger/Logger;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Server says: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-interface {v13}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 375
    invoke-interface {v13}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v4

    .line 376
    .local v4, code:I
    const/16 v16, 0xc8

    move/from16 v0, v16

    if-ne v4, v0, :cond_18a

    .line 378
    invoke-interface {v13}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v7

    .line 379
    .local v7, entity:Lorg/apache/http/HttpEntity;
    if-eqz v7, :cond_1ab

    .line 380
    invoke-interface {v7}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v10

    .line 381
    .local v10, len:J
    sget-object v16, Lcom/sprint/w/installer/util/HttpUtil;->log:Lcom/sprint/id/logger/Logger;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Util.executeHttpPostWithHeaders: len= "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 382
    const-wide/16 v16, -0x1

    cmp-long v16, v10, v16

    if-eqz v16, :cond_146

    const-wide/16 v16, 0x800

    cmp-long v16, v10, v16

    if-gez v16, :cond_146

    .line 383
    invoke-static {v7}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v16

    .line 404
    .end local v10           #len:J
    :goto_145
    return-object v16

    .line 386
    .restart local v10       #len:J
    :cond_146
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 388
    .local v15, sb:Ljava/lang/StringBuilder;
    invoke-interface {v7}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v9

    .line 389
    .local v9, is:Ljava/io/InputStream;
    :goto_14f
    invoke-virtual {v9}, Ljava/io/InputStream;->read()I

    move-result v2

    .local v2, ch:I
    const/16 v16, -0x1

    move/from16 v0, v16

    if-eq v2, v0, :cond_185

    .line 390
    int-to-char v0, v2

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_15f
    .catch Ljava/lang/Exception; {:try_start_e3 .. :try_end_15f} :catch_160

    goto :goto_14f

    .line 398
    .end local v2           #ch:I
    .end local v4           #code:I
    .end local v7           #entity:Lorg/apache/http/HttpEntity;
    .end local v9           #is:Ljava/io/InputStream;
    .end local v10           #len:J
    .end local v13           #res:Lorg/apache/http/HttpResponse;
    .end local v15           #sb:Ljava/lang/StringBuilder;
    :catch_160
    move-exception v5

    .line 399
    .local v5, e:Ljava/lang/Exception;
    invoke-virtual {v8}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 400
    new-instance v16, Lorg/apache/http/HttpException;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Http request failed IO: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v5}, Lorg/apache/http/HttpException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v16

    .line 392
    .end local v5           #e:Ljava/lang/Exception;
    .restart local v2       #ch:I
    .restart local v4       #code:I
    .restart local v7       #entity:Lorg/apache/http/HttpEntity;
    .restart local v9       #is:Ljava/io/InputStream;
    .restart local v10       #len:J
    .restart local v13       #res:Lorg/apache/http/HttpResponse;
    .restart local v15       #sb:Ljava/lang/StringBuilder;
    :cond_185
    :try_start_185
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    goto :goto_145

    .line 396
    .end local v2           #ch:I
    .end local v7           #entity:Lorg/apache/http/HttpEntity;
    .end local v9           #is:Ljava/io/InputStream;
    .end local v10           #len:J
    .end local v15           #sb:Ljava/lang/StringBuilder;
    :cond_18a
    new-instance v16, Lorg/apache/http/HttpException;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Http request failed: Server Says "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-interface {v13}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Lorg/apache/http/HttpException;-><init>(Ljava/lang/String;)V

    throw v16
    :try_end_1ab
    .catch Ljava/lang/Exception; {:try_start_185 .. :try_end_1ab} :catch_160

    .line 404
    .restart local v7       #entity:Lorg/apache/http/HttpEntity;
    :cond_1ab
    const/16 v16, 0x0

    goto :goto_145
.end method

.method public static getAuthHttpClient()Lorg/apache/http/impl/client/DefaultHttpClient;
    .registers 11

    .prologue
    .line 114
    const/4 v0, 0x0

    .line 118
    .local v0, aHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    :try_start_1
    new-instance v3, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v3}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 119
    .local v3, params:Lorg/apache/http/params/HttpParams;
    sget-object v7, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v3, v7}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    .line 120
    const/16 v7, 0x7530

    invoke-static {v3, v7}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 121
    const/16 v7, 0x7530

    invoke-static {v3, v7}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 122
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v6

    .line 123
    .local v6, trustStore:Ljava/security/KeyStore;
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 125
    new-instance v5, Lcom/sprint/w/installer/util/WarholSSLSocketFactory;

    invoke-direct {v5, v6}, Lcom/sprint/w/installer/util/WarholSSLSocketFactory;-><init>(Ljava/security/KeyStore;)V

    .line 126
    .local v5, sf:Lorg/apache/http/conn/ssl/SSLSocketFactory;
    sget-object v7, Lorg/apache/http/conn/ssl/SSLSocketFactory;->ALLOW_ALL_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-virtual {v5, v7}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V

    .line 128
    new-instance v4, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v4}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 129
    .local v4, registry:Lorg/apache/http/conn/scheme/SchemeRegistry;
    new-instance v7, Lorg/apache/http/conn/scheme/Scheme;

    const-string v8, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v9

    const/16 v10, 0x50

    invoke-direct {v7, v8, v9, v10}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v4, v7}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 130
    new-instance v7, Lorg/apache/http/conn/scheme/Scheme;

    const-string v8, "https"

    const/16 v9, 0x1bb

    invoke-direct {v7, v8, v5, v9}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v4, v7}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 132
    new-instance v1, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v1, v3, v4}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 133
    .local v1, ccm:Lorg/apache/http/conn/ClientConnectionManager;
    const/4 v7, 0x5

    invoke-static {v3, v7}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxTotalConnections(Lorg/apache/http/params/HttpParams;I)V

    .line 135
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    .end local v0           #aHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    invoke-direct {v0, v1, v3}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_5b} :catch_5c

    .line 139
    .end local v1           #ccm:Lorg/apache/http/conn/ClientConnectionManager;
    .end local v3           #params:Lorg/apache/http/params/HttpParams;
    .end local v4           #registry:Lorg/apache/http/conn/scheme/SchemeRegistry;
    .end local v5           #sf:Lorg/apache/http/conn/ssl/SSLSocketFactory;
    .end local v6           #trustStore:Ljava/security/KeyStore;
    .restart local v0       #aHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    :goto_5b
    return-object v0

    .line 136
    .end local v0           #aHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    :catch_5c
    move-exception v2

    .line 137
    .local v2, e:Ljava/lang/Exception;
    const/4 v0, 0x0

    .restart local v0       #aHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    goto :goto_5b
.end method

.method public static getHttpHost()Lorg/apache/http/HttpHost;
    .registers 5

    .prologue
    .line 318
    invoke-static {}, Lcom/sprint/w/installer/util/Util;->getApplication()Landroid/app/Application;

    move-result-object v2

    const v3, 0x7f06010a

    invoke-virtual {v2, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 319
    .local v0, proxyHost:Ljava/lang/String;
    const/16 v1, 0x50

    .line 321
    .local v1, proxyPort:I
    invoke-static {}, Lcom/sprint/w/installer/util/Util;->getCarrier()Ljava/lang/String;

    move-result-object v2

    const-string v3, "virgin mobile"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 322
    invoke-static {}, Lcom/sprint/w/installer/util/Util;->getApplication()Landroid/app/Application;

    move-result-object v2

    const v3, 0x7f06010b

    invoke-virtual {v2, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 323
    const/16 v1, 0x51

    .line 326
    :cond_26
    sget-object v2, Lcom/sprint/w/installer/util/HttpUtil;->log:Lcom/sprint/id/logger/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Proxy Host: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sprint/id/logger/Logger;->v(Ljava/lang/String;)V

    .line 327
    sget-object v2, Lcom/sprint/w/installer/util/HttpUtil;->log:Lcom/sprint/id/logger/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Proxy Port: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sprint/id/logger/Logger;->v(Ljava/lang/String;)V

    .line 328
    new-instance v2, Lorg/apache/http/HttpHost;

    invoke-direct {v2, v0, v1}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    return-object v2
.end method

.method public static httpAuthRequest()Ljava/lang/String;
    .registers 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidKeyException;,
            Lcom/sprint/internal/SystemPropertiesException;
        }
    .end annotation

    .prologue
    const/16 v16, 0x1

    .line 417
    invoke-static {}, Lcom/sprint/w/installer/util/Util;->getNai()Ljava/lang/String;

    move-result-object v9

    .line 418
    .local v9, nai:Ljava/lang/String;
    invoke-static {}, Lcom/sprint/w/installer/util/Util;->getMEID()Ljava/lang/String;

    move-result-object v8

    .line 421
    .local v8, esn:Ljava/lang/String;
    new-instance v13, Ljava/util/Date;

    invoke-direct {v13}, Ljava/util/Date;-><init>()V

    invoke-virtual {v13}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    .line 422
    .local v4, currDate:J
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "|"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "|"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 423
    .local v1, authString:Ljava/lang/String;
    new-instance v13, Lcom/sprint/w/installer/util/aes/Verifier;

    invoke-direct {v13}, Lcom/sprint/w/installer/util/aes/Verifier;-><init>()V

    invoke-static {v13}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 424
    const/4 v2, 0x0

    .line 429
    .local v2, con:Ljavax/net/ssl/HttpsURLConnection;
    :try_start_3d
    new-instance v10, Lcom/sprint/w/installer/util/aes/Trust;

    invoke-direct {v10}, Lcom/sprint/w/installer/util/aes/Trust;-><init>()V

    .line 430
    .local v10, trust:Lcom/sprint/w/installer/util/aes/Trust;
    const-string v13, "TLS"

    invoke-static {v13}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v3

    .line 431
    .local v3, context:Ljavax/net/ssl/SSLContext;
    const/4 v13, 0x1

    new-array v11, v13, [Ljavax/net/ssl/TrustManager;

    const/4 v13, 0x0

    aput-object v10, v11, v13

    .line 434
    .local v11, trustmanagers:[Ljavax/net/ssl/TrustManager;
    const/4 v13, 0x0

    new-instance v14, Ljava/security/SecureRandom;

    invoke-direct {v14}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v3, v13, v11, v14}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 435
    invoke-virtual {v3}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v13

    invoke-static {v13}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 438
    const-string v13, "2Rcdk2geoO8KlmjhVEjlcruTuRfeOpSS"

    invoke-static {v13, v1}, Lcom/sprint/w/installer/util/aes/AESEncryptor;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 439
    .local v7, encryptAuth:Ljava/lang/String;
    sget-object v13, Lcom/sprint/w/installer/util/HttpUtil;->log:Lcom/sprint/id/logger/Logger;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "encryptAuth: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/sprint/id/logger/Logger;->v(Ljava/lang/String;)V

    .line 440
    new-instance v12, Ljava/net/URL;

    const-string v13, "https://63.168.226.150:4443/PSAAuthentication/PsaAuthenticator"

    invoke-direct {v12, v13}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 442
    .local v12, u:Ljava/net/URL;
    const/4 v2, 0x0

    .line 443
    invoke-virtual {v12}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v13

    move-object v0, v13

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    move-object v2, v0

    .line 444
    const-string v13, "POST"

    invoke-virtual {v2, v13}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 445
    const/4 v13, 0x1

    invoke-virtual {v2, v13}, Ljavax/net/ssl/HttpsURLConnection;->setDoInput(Z)V

    .line 446
    const/4 v13, 0x1

    invoke-virtual {v2, v13}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    .line 447
    const/16 v13, 0x7530

    invoke-virtual {v2, v13}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    .line 448
    const/16 v13, 0x7530

    invoke-virtual {v2, v13}, Ljavax/net/ssl/HttpsURLConnection;->setReadTimeout(I)V

    .line 449
    const-string v13, "ClientAuth"

    invoke-virtual {v2, v13, v7}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    const-string v13, "AppAuth"

    const-string v14, "SprintID"

    invoke-virtual {v2, v13, v14}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    invoke-virtual {v2}, Ljavax/net/ssl/HttpsURLConnection;->connect()V

    .line 456
    const-string v13, "Set-Cookie"

    invoke-virtual {v2, v13}, Ljavax/net/ssl/HttpsURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    sput-object v13, Lcom/sprint/w/installer/util/HttpUtil;->authCookie:Ljava/lang/String;

    .line 457
    sget-object v13, Lcom/sprint/w/installer/util/HttpUtil;->log:Lcom/sprint/id/logger/Logger;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Response Code:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v2}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/sprint/id/logger/Logger;->v(Ljava/lang/String;)V

    .line 458
    sget-object v13, Lcom/sprint/w/installer/util/HttpUtil;->log:Lcom/sprint/id/logger/Logger;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Response Message:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v2}, Ljavax/net/ssl/HttpsURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/sprint/id/logger/Logger;->v(Ljava/lang/String;)V

    .line 459
    sget-object v13, Lcom/sprint/w/installer/util/HttpUtil;->log:Lcom/sprint/id/logger/Logger;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "AuthCookie:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Lcom/sprint/w/installer/util/HttpUtil;->authCookie:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/sprint/id/logger/Logger;->v(Ljava/lang/String;)V

    .line 460
    sget-object v13, Lcom/sprint/w/installer/util/HttpUtil;->authCookie:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    move/from16 v0, v16

    if-gt v13, v0, :cond_119

    .line 461
    const/4 v13, 0x0

    sput-object v13, Lcom/sprint/w/installer/util/HttpUtil;->authCookie:Ljava/lang/String;
    :try_end_119
    .catchall {:try_start_3d .. :try_end_119} :catchall_158
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3d .. :try_end_119} :catch_12a
    .catch Ljava/security/KeyManagementException; {:try_start_3d .. :try_end_119} :catch_141

    .line 468
    :cond_119
    if-eqz v2, :cond_11e

    .line 470
    :try_start_11b
    invoke-virtual {v2}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V
    :try_end_11e
    .catch Ljava/lang/RuntimeException; {:try_start_11b .. :try_end_11e} :catch_121

    .line 476
    .end local v3           #context:Ljavax/net/ssl/SSLContext;
    .end local v7           #encryptAuth:Ljava/lang/String;
    .end local v10           #trust:Lcom/sprint/w/installer/util/aes/Trust;
    .end local v11           #trustmanagers:[Ljavax/net/ssl/TrustManager;
    .end local v12           #u:Ljava/net/URL;
    :cond_11e
    :goto_11e
    sget-object v13, Lcom/sprint/w/installer/util/HttpUtil;->authCookie:Ljava/lang/String;

    return-object v13

    .line 471
    .restart local v3       #context:Ljavax/net/ssl/SSLContext;
    .restart local v7       #encryptAuth:Ljava/lang/String;
    .restart local v10       #trust:Lcom/sprint/w/installer/util/aes/Trust;
    .restart local v11       #trustmanagers:[Ljavax/net/ssl/TrustManager;
    .restart local v12       #u:Ljava/net/URL;
    :catch_121
    move-exception v6

    .line 472
    .local v6, e:Ljava/lang/RuntimeException;
    sget-object v13, Lcom/sprint/w/installer/util/HttpUtil;->log:Lcom/sprint/id/logger/Logger;

    const-string v14, "Failed to Close Network Connection"

    invoke-virtual {v13, v14}, Lcom/sprint/id/logger/Logger;->e(Ljava/lang/String;)V

    goto :goto_11e

    .line 463
    .end local v3           #context:Ljavax/net/ssl/SSLContext;
    .end local v6           #e:Ljava/lang/RuntimeException;
    .end local v7           #encryptAuth:Ljava/lang/String;
    .end local v10           #trust:Lcom/sprint/w/installer/util/aes/Trust;
    .end local v11           #trustmanagers:[Ljavax/net/ssl/TrustManager;
    .end local v12           #u:Ljava/net/URL;
    :catch_12a
    move-exception v6

    .line 464
    .local v6, e:Ljava/security/NoSuchAlgorithmException;
    :try_start_12b
    sget-object v13, Lcom/sprint/w/installer/util/HttpUtil;->log:Lcom/sprint/id/logger/Logger;

    const-string v14, "Unexpected error"

    invoke-virtual {v13, v14, v6}, Lcom/sprint/id/logger/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_132
    .catchall {:try_start_12b .. :try_end_132} :catchall_158

    .line 468
    if-eqz v2, :cond_11e

    .line 470
    :try_start_134
    invoke-virtual {v2}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V
    :try_end_137
    .catch Ljava/lang/RuntimeException; {:try_start_134 .. :try_end_137} :catch_138

    goto :goto_11e

    .line 471
    :catch_138
    move-exception v6

    .line 472
    .local v6, e:Ljava/lang/RuntimeException;
    sget-object v13, Lcom/sprint/w/installer/util/HttpUtil;->log:Lcom/sprint/id/logger/Logger;

    const-string v14, "Failed to Close Network Connection"

    invoke-virtual {v13, v14}, Lcom/sprint/id/logger/Logger;->e(Ljava/lang/String;)V

    goto :goto_11e

    .line 465
    .end local v6           #e:Ljava/lang/RuntimeException;
    :catch_141
    move-exception v6

    .line 466
    .local v6, e:Ljava/security/KeyManagementException;
    :try_start_142
    sget-object v13, Lcom/sprint/w/installer/util/HttpUtil;->log:Lcom/sprint/id/logger/Logger;

    const-string v14, "Unexpected error"

    invoke-virtual {v13, v14, v6}, Lcom/sprint/id/logger/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_149
    .catchall {:try_start_142 .. :try_end_149} :catchall_158

    .line 468
    if-eqz v2, :cond_11e

    .line 470
    :try_start_14b
    invoke-virtual {v2}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V
    :try_end_14e
    .catch Ljava/lang/RuntimeException; {:try_start_14b .. :try_end_14e} :catch_14f

    goto :goto_11e

    .line 471
    :catch_14f
    move-exception v6

    .line 472
    .local v6, e:Ljava/lang/RuntimeException;
    sget-object v13, Lcom/sprint/w/installer/util/HttpUtil;->log:Lcom/sprint/id/logger/Logger;

    const-string v14, "Failed to Close Network Connection"

    invoke-virtual {v13, v14}, Lcom/sprint/id/logger/Logger;->e(Ljava/lang/String;)V

    goto :goto_11e

    .line 468
    .end local v6           #e:Ljava/lang/RuntimeException;
    :catchall_158
    move-exception v13

    if-eqz v2, :cond_15e

    .line 470
    :try_start_15b
    invoke-virtual {v2}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V
    :try_end_15e
    .catch Ljava/lang/RuntimeException; {:try_start_15b .. :try_end_15e} :catch_15f

    .line 473
    :cond_15e
    :goto_15e
    throw v13

    .line 471
    :catch_15f
    move-exception v6

    .line 472
    .restart local v6       #e:Ljava/lang/RuntimeException;
    sget-object v14, Lcom/sprint/w/installer/util/HttpUtil;->log:Lcom/sprint/id/logger/Logger;

    const-string v15, "Failed to Close Network Connection"

    invoke-virtual {v14, v15}, Lcom/sprint/id/logger/Logger;->e(Ljava/lang/String;)V

    goto :goto_15e
.end method

.method public static isAuthDownload(Z)Z
    .registers 2
    .parameter "isPsiCall"

    .prologue
    .line 183
    const/4 v0, 0x0

    return v0
.end method

.method public static openUrl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    .registers 14
    .parameter "context"
    .parameter "url"
    .parameter "username"
    .parameter "password"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;
        }
    .end annotation

    .prologue
    .line 483
    new-instance v4, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v4, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 484
    .local v4, get:Lorg/apache/http/client/methods/HttpGet;
    const-string v7, "user-agent"

    const v8, 0x7f06012c

    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    sget-object v1, Lcom/sprint/w/installer/util/HttpUtil;->sHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 487
    .local v1, client:Lorg/apache/http/impl/client/DefaultHttpClient;
    if-eqz p2, :cond_32

    .line 488
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 489
    .local v6, uri:Landroid/net/Uri;
    new-instance v0, Lorg/apache/http/auth/AuthScope;

    invoke-virtual {v6}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Landroid/net/Uri;->getPort()I

    move-result v8

    invoke-direct {v0, v7, v8}, Lorg/apache/http/auth/AuthScope;-><init>(Ljava/lang/String;I)V

    .line 490
    .local v0, authScope:Lorg/apache/http/auth/AuthScope;
    new-instance v2, Lorg/apache/http/auth/UsernamePasswordCredentials;

    invoke-direct {v2, p2, p3}, Lorg/apache/http/auth/UsernamePasswordCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    .local v2, creds:Lorg/apache/http/auth/UsernamePasswordCredentials;
    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getCredentialsProvider()Lorg/apache/http/client/CredentialsProvider;

    move-result-object v7

    invoke-interface {v7, v0, v2}, Lorg/apache/http/client/CredentialsProvider;->setCredentials(Lorg/apache/http/auth/AuthScope;Lorg/apache/http/auth/Credentials;)V

    .line 496
    .end local v0           #authScope:Lorg/apache/http/auth/AuthScope;
    .end local v2           #creds:Lorg/apache/http/auth/UsernamePasswordCredentials;
    .end local v6           #uri:Landroid/net/Uri;
    :cond_32
    :try_start_32
    invoke-virtual {v1, v4}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v5

    .line 497
    .local v5, res:Lorg/apache/http/HttpResponse;
    sget-object v7, Lcom/sprint/w/installer/util/HttpUtil;->log:Lcom/sprint/id/logger/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Server says: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 498
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_59} :catch_5b

    move-result-object v7

    return-object v7

    .line 499
    .end local v5           #res:Lorg/apache/http/HttpResponse;
    :catch_5b
    move-exception v3

    .line 500
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v4}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 501
    new-instance v7, Lorg/apache/http/HttpException;

    const-string v8, "Http request failed"

    invoke-direct {v7, v8, v3}, Lorg/apache/http/HttpException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7
.end method

.method public static openUrlWithAuthReponse(Ljava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    .registers 22
    .parameter "url"
    .parameter "addHeaderWapPofile"
    .parameter "addHeaderNAI"
    .parameter "addHeaderUA"
    .parameter "userName"
    .parameter "password"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Lorg/apache/http/auth/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 522
    new-instance v9, Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 523
    .local v9, httpget:Lorg/apache/http/client/methods/HttpGet;
    const-string v13, "Accept-Language"

    invoke-static {}, Lcom/sprint/w/installer/util/Util;->getApplication()Landroid/app/Application;

    move-result-object v14

    const v15, 0x7f0600e4

    invoke-virtual {v14, v15}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v13, v14}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    if-eqz p1, :cond_22

    .line 526
    const-string v13, "x-wap-profile"

    invoke-static {}, Lcom/sprint/w/installer/util/Util;->getUaProfile()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v13, v14}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    :cond_22
    if-eqz p2, :cond_5b

    .line 530
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/sprint/w/installer/util/Util;->getNai()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ":pcs"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 531
    .local v10, naiString:Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    invoke-static {v13}, Lcom/sprint/w/installer/util/Base64;->encodeBytes([B)Ljava/lang/String;

    move-result-object v8

    .line 532
    .local v8, encodedNai:Ljava/lang/String;
    const-string v13, "Proxy-Authorization"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Basic "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v13, v14}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    .end local v8           #encodedNai:Ljava/lang/String;
    .end local v10           #naiString:Ljava/lang/String;
    :cond_5b
    if-eqz p3, :cond_66

    .line 536
    const-string v13, "User-Agent"

    invoke-static {}, Lcom/sprint/w/installer/util/Util;->getUserAgent()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v13, v14}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    :cond_66
    sget-object v4, Lcom/sprint/w/installer/util/HttpUtil;->sHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 541
    .local v4, client:Lorg/apache/http/impl/client/DefaultHttpClient;
    if-eqz p4, :cond_c0

    .line 542
    invoke-static/range {p0 .. p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    .line 543
    .local v12, uri:Landroid/net/Uri;
    new-instance v3, Lorg/apache/http/auth/AuthScope;

    invoke-virtual {v12}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12}, Landroid/net/Uri;->getPort()I

    move-result v14

    invoke-direct {v3, v13, v14}, Lorg/apache/http/auth/AuthScope;-><init>(Ljava/lang/String;I)V

    .line 544
    .local v3, authScope:Lorg/apache/http/auth/AuthScope;
    new-instance v6, Lorg/apache/http/auth/UsernamePasswordCredentials;

    move-object/from16 v0, p4

    move-object/from16 v1, p5

    invoke-direct {v6, v0, v1}, Lorg/apache/http/auth/UsernamePasswordCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    .local v6, creds:Lorg/apache/http/auth/UsernamePasswordCredentials;
    invoke-virtual {v4}, Lorg/apache/http/impl/client/DefaultHttpClient;->getCredentialsProvider()Lorg/apache/http/client/CredentialsProvider;

    move-result-object v13

    invoke-interface {v13, v3, v6}, Lorg/apache/http/client/CredentialsProvider;->setCredentials(Lorg/apache/http/auth/AuthScope;Lorg/apache/http/auth/Credentials;)V

    .line 553
    .end local v3           #authScope:Lorg/apache/http/auth/AuthScope;
    .end local v6           #creds:Lorg/apache/http/auth/UsernamePasswordCredentials;
    .end local v12           #uri:Landroid/net/Uri;
    :goto_8b
    :try_start_8b
    invoke-virtual {v4, v9}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v11

    .line 554
    .local v11, res:Lorg/apache/http/HttpResponse;
    sget-object v13, Lcom/sprint/w/installer/util/HttpUtil;->log:Lcom/sprint/id/logger/Logger;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Server says: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-interface {v11}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 555
    invoke-interface {v11}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v13

    invoke-interface {v13}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v5

    .line 556
    .local v5, code:I
    const/16 v13, 0x190

    if-ge v5, v13, :cond_c8

    .line 558
    invoke-interface {v11}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v13

    invoke-interface {v13}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_be
    .catch Lorg/apache/http/auth/AuthenticationException; {:try_start_8b .. :try_end_be} :catch_d8
    .catch Ljava/lang/Exception; {:try_start_8b .. :try_end_be} :catch_105

    move-result-object v13

    return-object v13

    .line 548
    .end local v5           #code:I
    .end local v11           #res:Lorg/apache/http/HttpResponse;
    :cond_c0
    invoke-virtual {v4}, Lorg/apache/http/impl/client/DefaultHttpClient;->getCredentialsProvider()Lorg/apache/http/client/CredentialsProvider;

    move-result-object v13

    invoke-interface {v13}, Lorg/apache/http/client/CredentialsProvider;->clear()V

    goto :goto_8b

    .line 559
    .restart local v5       #code:I
    .restart local v11       #res:Lorg/apache/http/HttpResponse;
    :cond_c8
    const/16 v13, 0x191

    if-eq v5, v13, :cond_d0

    const/16 v13, 0x193

    if-ne v5, v13, :cond_da

    .line 560
    :cond_d0
    :try_start_d0
    new-instance v13, Lorg/apache/http/auth/AuthenticationException;

    const-string v14, "Authentication Exception"

    invoke-direct {v13, v14}, Lorg/apache/http/auth/AuthenticationException;-><init>(Ljava/lang/String;)V

    throw v13
    :try_end_d8
    .catch Lorg/apache/http/auth/AuthenticationException; {:try_start_d0 .. :try_end_d8} :catch_d8
    .catch Ljava/lang/Exception; {:try_start_d0 .. :try_end_d8} :catch_105

    .line 564
    .end local v5           #code:I
    .end local v11           #res:Lorg/apache/http/HttpResponse;
    :catch_d8
    move-exception v2

    .line 565
    .local v2, ae:Lorg/apache/http/auth/AuthenticationException;
    throw v2

    .line 562
    .end local v2           #ae:Lorg/apache/http/auth/AuthenticationException;
    .restart local v5       #code:I
    .restart local v11       #res:Lorg/apache/http/HttpResponse;
    :cond_da
    :try_start_da
    new-instance v13, Lorg/apache/http/HttpException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Http request failed: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-interface {v11}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v15

    invoke-interface {v15}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Lorg/apache/http/HttpException;-><init>(Ljava/lang/String;)V

    throw v13
    :try_end_105
    .catch Lorg/apache/http/auth/AuthenticationException; {:try_start_da .. :try_end_105} :catch_d8
    .catch Ljava/lang/Exception; {:try_start_da .. :try_end_105} :catch_105

    .line 566
    .end local v5           #code:I
    .end local v11           #res:Lorg/apache/http/HttpResponse;
    :catch_105
    move-exception v7

    .line 567
    .local v7, e:Ljava/lang/Exception;
    invoke-virtual {v9}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 568
    new-instance v13, Lorg/apache/http/HttpException;

    const-string v14, "Http request failed IO"

    invoke-direct {v13, v14, v7}, Lorg/apache/http/HttpException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v13
.end method

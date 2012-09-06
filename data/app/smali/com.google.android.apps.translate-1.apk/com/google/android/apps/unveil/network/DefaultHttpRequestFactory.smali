.class public Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory;
.super Ljava/lang/Object;
.source "DefaultHttpRequestFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory$ContentType;,
        Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory$InstallationIdProvider;,
        Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory$ApplicationAuthenticationProvider;,
        Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory$StaticHeaderProvider;,
        Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory$HeaderProvider;
    }
.end annotation


# static fields
.field private static ACCEPT_ENCODING_HEADER:Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory$HeaderProvider; = null

.field public static final COOKIE_HEADER:Ljava/lang/String; = "Cookie"

.field public static final USER_AGENT_HEADER:Ljava/lang/String; = "User-Agent"


# instance fields
.field private final headerProviders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory$HeaderProvider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 87
    new-instance v0, Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory$StaticHeaderProvider;

    const-string v1, "Accept-Encoding"

    const-string v2, "gzip"

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory$StaticHeaderProvider;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory;->ACCEPT_ENCODING_HEADER:Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory$HeaderProvider;

    return-void
.end method

.method constructor <init>(Ljava/util/List;)V
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory$HeaderProvider;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 139
    .local p1, providers:Ljava/util/List;,"Ljava/util/List<+Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory$HeaderProvider;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory;->headerProviders:Ljava/util/List;

    .line 141
    iget-object v0, p0, Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory;->headerProviders:Ljava/util/List;

    sget-object v1, Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory;->ACCEPT_ENCODING_HEADER:Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory$HeaderProvider;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 28
    invoke-static {p0}, Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory;->toSidCookieValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private addHeaders(Lorg/apache/http/HttpRequest;)V
    .registers 5
    .parameter "request"

    .prologue
    .line 223
    iget-object v2, p0, Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory;->headerProviders:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory$HeaderProvider;

    .line 224
    .local v0, headerProvider:Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory$HeaderProvider;
    invoke-interface {v0, p1}, Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory$HeaderProvider;->attachHeader(Lorg/apache/http/HttpRequest;)V

    goto :goto_6

    .line 226
    .end local v0           #headerProvider:Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory$HeaderProvider;
    :cond_16
    return-void
.end method

.method public static newAnonymousRequestFactory(Lcom/google/android/apps/unveil/UnveilContext;)Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory;
    .registers 2
    .parameter "application"

    .prologue
    .line 169
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory;->newAnonymousRequestFactory(Lcom/google/android/apps/unveil/UnveilContext;Ljava/util/List;)Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory;

    move-result-object v0

    return-object v0
.end method

.method public static newAnonymousRequestFactory(Lcom/google/android/apps/unveil/UnveilContext;Ljava/util/List;)Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory;
    .registers 5
    .parameter "application"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/unveil/UnveilContext;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory$HeaderProvider;",
            ">;)",
            "Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory;"
        }
    .end annotation

    .prologue
    .line 181
    .local p1, customProviders:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory$HeaderProvider;>;"
    new-instance v0, Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory;

    invoke-direct {v0, p1}, Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory;-><init>(Ljava/util/List;)V

    const-string v1, "User-Agent"

    invoke-interface {p0}, Lcom/google/android/apps/unveil/UnveilContext;->getFullUserAgent()Lcom/google/android/apps/unveil/env/Provider;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory;->newDynamicProvider(Ljava/lang/String;Lcom/google/android/apps/unveil/env/Provider;)Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory$HeaderProvider;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory;->addHeaderProvider(Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory$HeaderProvider;)Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory;

    move-result-object v0

    return-object v0
.end method

.method public static newAnonymousRequestFactory(Lcom/google/android/apps/unveil/env/Provider;Ljava/lang/String;)Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory;
    .registers 7
    .parameter
    .parameter "installationId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/unveil/env/Provider",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory;"
        }
    .end annotation

    .prologue
    .line 191
    .local p0, userAgent:Lcom/google/android/apps/unveil/env/Provider;,"Lcom/google/android/apps/unveil/env/Provider<Ljava/lang/String;>;"
    new-instance v0, Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory$HeaderProvider;

    const/4 v2, 0x0

    const-string v3, "User-Agent"

    invoke-static {v3, p0}, Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory;->newDynamicProvider(Ljava/lang/String;Lcom/google/android/apps/unveil/env/Provider;)Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory$HeaderProvider;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory$StaticHeaderProvider;

    const-string v4, "X-Goggles-InstallationId"

    invoke-direct {v3, v4, p1}, Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory$StaticHeaderProvider;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public static newAnonymousRequestFactory(Ljava/lang/String;)Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory;
    .registers 4
    .parameter "userAgent"

    .prologue
    .line 203
    new-instance v0, Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory;

    new-instance v1, Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory$StaticHeaderProvider;

    const-string v2, "User-Agent"

    invoke-direct {v1, v2, p0}, Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory$StaticHeaderProvider;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public static newAuthenticatedRequestFactory(Lcom/google/android/apps/unveil/UnveilContext;)Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory;
    .registers 6
    .parameter "application"

    .prologue
    .line 158
    new-instance v0, Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory$HeaderProvider;

    const/4 v2, 0x0

    const-string v3, "User-Agent"

    invoke-interface {p0}, Lcom/google/android/apps/unveil/UnveilContext;->getFullUserAgent()Lcom/google/android/apps/unveil/env/Provider;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory;->newDynamicProvider(Ljava/lang/String;Lcom/google/android/apps/unveil/env/Provider;)Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory$HeaderProvider;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p0}, Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory;->newAuthenticationProvider(Lcom/google/android/apps/unveil/UnveilContext;)Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory$HeaderProvider;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p0}, Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory;->newInstallationIdProvider(Lcom/google/android/apps/unveil/UnveilContext;)Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory$HeaderProvider;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public static newAuthenticationProvider(Lcom/google/android/apps/unveil/UnveilContext;)Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory$HeaderProvider;
    .registers 3
    .parameter "application"

    .prologue
    .line 95
    new-instance v0, Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory$ApplicationAuthenticationProvider;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory$ApplicationAuthenticationProvider;-><init>(Lcom/google/android/apps/unveil/UnveilContext;Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory$1;)V

    return-object v0
.end method

.method public static final newDynamicProvider(Ljava/lang/String;Lcom/google/android/apps/unveil/env/Provider;)Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory$HeaderProvider;
    .registers 3
    .parameter "name"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/apps/unveil/env/Provider",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory$HeaderProvider;"
        }
    .end annotation

    .prologue
    .line 54
    .local p1, value:Lcom/google/android/apps/unveil/env/Provider;,"Lcom/google/android/apps/unveil/env/Provider<Ljava/lang/String;>;"
    new-instance v0, Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory$1;-><init>(Ljava/lang/String;Lcom/google/android/apps/unveil/env/Provider;)V

    return-object v0
.end method

.method public static newInstallationIdProvider(Lcom/google/android/apps/unveil/UnveilContext;)Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory$HeaderProvider;
    .registers 3
    .parameter "application"

    .prologue
    .line 120
    new-instance v0, Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory$InstallationIdProvider;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory$InstallationIdProvider;-><init>(Lcom/google/android/apps/unveil/UnveilContext;Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory$1;)V

    return-object v0
.end method

.method public static newStaticAuthenticationProvider(Ljava/lang/String;)Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory$HeaderProvider;
    .registers 4
    .parameter "authToken"

    .prologue
    .line 102
    new-instance v0, Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory$StaticHeaderProvider;

    const-string v1, "Cookie"

    invoke-static {p0}, Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory;->toSidCookieValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory$StaticHeaderProvider;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static newStringEntity(Ljava/lang/String;)Lorg/apache/http/HttpEntity;
    .registers 3
    .parameter "body"

    .prologue
    .line 230
    :try_start_0
    new-instance v1, Lorg/apache/http/entity/StringEntity;

    invoke-direct {v1, p0}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_5} :catch_6

    return-object v1

    .line 231
    :catch_6
    move-exception v0

    .line 232
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static toSidCookieValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "authToken"

    .prologue
    .line 63
    const-string v0, "SID=%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addHeaderProvider(Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory$HeaderProvider;)Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory;
    .registers 3
    .parameter "provider"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory;->headerProviders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    return-object p0
.end method

.method public newGetRequest(Ljava/lang/String;)Lorg/apache/http/client/methods/HttpGet;
    .registers 3
    .parameter "url"

    .prologue
    .line 208
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 209
    .local v0, httpGet:Lorg/apache/http/client/methods/HttpGet;
    invoke-direct {p0, v0}, Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory;->addHeaders(Lorg/apache/http/HttpRequest;)V

    .line 210
    return-object v0
.end method

.method public newPostRequest(Ljava/lang/String;Lorg/apache/http/HttpEntity;Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory$ContentType;)Lorg/apache/http/client/methods/HttpPost;
    .registers 7
    .parameter "url"
    .parameter "entity"
    .parameter "contentType"

    .prologue
    .line 215
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 216
    .local v0, postRequest:Lorg/apache/http/client/methods/HttpPost;
    invoke-virtual {v0, p2}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 217
    const-string v1, "Content-Type"

    iget-object v2, p3, Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory$ContentType;->typeString:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    invoke-direct {p0, v0}, Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory;->addHeaders(Lorg/apache/http/HttpRequest;)V

    .line 219
    return-object v0
.end method

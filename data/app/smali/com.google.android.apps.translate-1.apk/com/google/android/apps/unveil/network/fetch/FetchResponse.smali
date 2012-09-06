.class public Lcom/google/android/apps/unveil/network/fetch/FetchResponse;
.super Ljava/lang/Object;
.source "FetchResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/unveil/network/fetch/FetchResponse$HttpResponseHandler;,
        Lcom/google/android/apps/unveil/network/fetch/FetchResponse$HttpClientCookieProvider;,
        Lcom/google/android/apps/unveil/network/fetch/FetchResponse$Handler;
    }
.end annotation


# static fields
.field static final BUFFER_SIZE:I = 0x8000

.field public static final RESPONSE_TOO_LARGE:I = -0x2

.field private static final logger:Lcom/google/android/apps/unveil/env/UnveilLogger;


# instance fields
.field private final cookies:Ljava/util/Map;
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

.field private final data:[B

.field private final reasonPhrase:Ljava/lang/String;

.field private final statusCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 30
    new-instance v0, Lcom/google/android/apps/unveil/env/UnveilLogger;

    invoke-direct {v0}, Lcom/google/android/apps/unveil/env/UnveilLogger;-><init>()V

    sput-object v0, Lcom/google/android/apps/unveil/network/fetch/FetchResponse;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    return-void
.end method

.method public constructor <init>([BILjava/util/Map;Ljava/lang/String;)V
    .registers 6
    .parameter "data"
    .parameter "statusCode"
    .parameter
    .parameter "reasonPhrase"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 132
    .local p3, cookies:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    iput-object p1, p0, Lcom/google/android/apps/unveil/network/fetch/FetchResponse;->data:[B

    .line 134
    iput p2, p0, Lcom/google/android/apps/unveil/network/fetch/FetchResponse;->statusCode:I

    .line 135
    iput-object p4, p0, Lcom/google/android/apps/unveil/network/fetch/FetchResponse;->reasonPhrase:Ljava/lang/String;

    .line 136
    invoke-static {p3}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/unveil/network/fetch/FetchResponse;->cookies:Ljava/util/Map;

    .line 137
    return-void
.end method

.method static synthetic access$000()Lcom/google/android/apps/unveil/env/UnveilLogger;
    .registers 1

    .prologue
    .line 29
    sget-object v0, Lcom/google/android/apps/unveil/network/fetch/FetchResponse;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    return-object v0
.end method

.method static extractCookiesFromClient(Lorg/apache/http/client/HttpClient;)Ljava/util/Map;
    .registers 7
    .parameter "client"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/client/HttpClient;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 198
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 199
    .local v1, cookieMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    instance-of v4, p0, Lorg/apache/http/impl/client/AbstractHttpClient;

    if-eqz v4, :cond_34

    .line 200
    new-instance v2, Ljava/util/ArrayList;

    check-cast p0, Lorg/apache/http/impl/client/DefaultHttpClient;

    .end local p0
    invoke-virtual {p0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getCookieStore()Lorg/apache/http/client/CookieStore;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/client/CookieStore;->getCookies()Ljava/util/List;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 202
    .local v2, cookies:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/cookie/Cookie;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_1c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_34

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/cookie/Cookie;

    .line 203
    .local v0, cookie:Lorg/apache/http/cookie/Cookie;
    invoke-interface {v0}, Lorg/apache/http/cookie/Cookie;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0}, Lorg/apache/http/cookie/Cookie;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1c

    .line 206
    .end local v0           #cookie:Lorg/apache/http/cookie/Cookie;
    .end local v2           #cookies:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/cookie/Cookie;>;"
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_34
    return-object v1
.end method

.method public static isValid(Lcom/google/android/apps/unveil/network/fetch/FetchResponse;)Z
    .registers 5
    .parameter "response"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 213
    if-nez p0, :cond_e

    .line 214
    sget-object v1, Lcom/google/android/apps/unveil/network/fetch/FetchResponse;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v2, "Null response!"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/apps/unveil/env/UnveilLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 220
    :goto_d
    return v0

    .line 216
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/network/fetch/FetchResponse;->getStatusCode()I

    move-result v2

    const/16 v3, 0xc8

    if-eq v2, v3, :cond_22

    .line 217
    sget-object v2, Lcom/google/android/apps/unveil/network/fetch/FetchResponse;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v3, "Invalid response %s"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v0

    invoke-virtual {v2, v3, v1}, Lcom/google/android/apps/unveil/env/UnveilLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_d

    :cond_22
    move v0, v1

    .line 220
    goto :goto_d
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .parameter "obj"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 162
    if-ne p0, p1, :cond_5

    .line 178
    :cond_4
    :goto_4
    return v1

    .line 164
    :cond_5
    if-nez p1, :cond_9

    move v1, v2

    .line 165
    goto :goto_4

    .line 166
    :cond_9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_15

    move v1, v2

    .line 167
    goto :goto_4

    :cond_15
    move-object v0, p1

    .line 168
    check-cast v0, Lcom/google/android/apps/unveil/network/fetch/FetchResponse;

    .line 169
    .local v0, other:Lcom/google/android/apps/unveil/network/fetch/FetchResponse;
    iget-object v3, p0, Lcom/google/android/apps/unveil/network/fetch/FetchResponse;->cookies:Ljava/util/Map;

    if-nez v3, :cond_22

    .line 170
    iget-object v3, v0, Lcom/google/android/apps/unveil/network/fetch/FetchResponse;->cookies:Ljava/util/Map;

    if-eqz v3, :cond_2e

    move v1, v2

    .line 171
    goto :goto_4

    .line 172
    :cond_22
    iget-object v3, p0, Lcom/google/android/apps/unveil/network/fetch/FetchResponse;->cookies:Ljava/util/Map;

    iget-object v4, v0, Lcom/google/android/apps/unveil/network/fetch/FetchResponse;->cookies:Ljava/util/Map;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2e

    move v1, v2

    .line 173
    goto :goto_4

    .line 174
    :cond_2e
    iget-object v3, p0, Lcom/google/android/apps/unveil/network/fetch/FetchResponse;->data:[B

    iget-object v4, v0, Lcom/google/android/apps/unveil/network/fetch/FetchResponse;->data:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-nez v3, :cond_3a

    move v1, v2

    .line 175
    goto :goto_4

    .line 176
    :cond_3a
    iget v3, p0, Lcom/google/android/apps/unveil/network/fetch/FetchResponse;->statusCode:I

    iget v4, v0, Lcom/google/android/apps/unveil/network/fetch/FetchResponse;->statusCode:I

    if-eq v3, v4, :cond_4

    move v1, v2

    .line 177
    goto :goto_4
.end method

.method public getCookie(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "key"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/google/android/apps/unveil/network/fetch/FetchResponse;->cookies:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getCookies()Ljava/util/Map;
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
    .line 157
    iget-object v0, p0, Lcom/google/android/apps/unveil/network/fetch/FetchResponse;->cookies:Ljava/util/Map;

    return-object v0
.end method

.method public getData()[B
    .registers 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/google/android/apps/unveil/network/fetch/FetchResponse;->data:[B

    return-object v0
.end method

.method public getReasonPhrase()Ljava/lang/String;
    .registers 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/google/android/apps/unveil/network/fetch/FetchResponse;->reasonPhrase:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusCode()I
    .registers 2

    .prologue
    .line 140
    iget v0, p0, Lcom/google/android/apps/unveil/network/fetch/FetchResponse;->statusCode:I

    return v0
.end method

.method public hashCode()I
    .registers 5

    .prologue
    .line 183
    const/16 v0, 0x1f

    .line 184
    .local v0, prime:I
    const/4 v1, 0x1

    .line 185
    .local v1, result:I
    iget-object v2, p0, Lcom/google/android/apps/unveil/network/fetch/FetchResponse;->cookies:Ljava/util/Map;

    if-nez v2, :cond_1b

    const/4 v2, 0x0

    :goto_8
    add-int/lit8 v1, v2, 0x1f

    .line 186
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lcom/google/android/apps/unveil/network/fetch/FetchResponse;->data:[B

    invoke-static {v3}, Ljava/util/Arrays;->hashCode([B)I

    move-result v3

    add-int v1, v2, v3

    .line 187
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lcom/google/android/apps/unveil/network/fetch/FetchResponse;->statusCode:I

    add-int v1, v2, v3

    .line 188
    return v1

    .line 185
    :cond_1b
    iget-object v2, p0, Lcom/google/android/apps/unveil/network/fetch/FetchResponse;->cookies:Ljava/util/Map;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_8
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 193
    const-string v0, "FetchResponse [statusCode=%d, reasonPhrase=%s]"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/google/android/apps/unveil/network/fetch/FetchResponse;->statusCode:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/android/apps/unveil/network/fetch/FetchResponse;->reasonPhrase:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

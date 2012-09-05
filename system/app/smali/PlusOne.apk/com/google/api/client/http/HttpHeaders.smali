.class public Lcom/google/api/client/http/HttpHeaders;
.super Lcom/google/api/client/util/GenericData;
.source "HttpHeaders.java"


# instance fields
.field private accept:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "Accept"
    .end annotation
.end field

.field private acceptEncoding:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "Accept-Encoding"
    .end annotation
.end field

.field private authenticate:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "WWW-Authenticate"
    .end annotation
.end field

.field private authorization:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "Authorization"
    .end annotation
.end field

.field private cacheControl:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "Cache-Control"
    .end annotation
.end field

.field private contentEncoding:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "Content-Encoding"
    .end annotation
.end field

.field private contentLength:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "Content-Length"
    .end annotation
.end field

.field private contentMD5:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "Content-MD5"
    .end annotation
.end field

.field private contentRange:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "Content-Range"
    .end annotation
.end field

.field private contentType:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "Content-Type"
    .end annotation
.end field

.field private cookie:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "Cookie"
    .end annotation
.end field

.field private date:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "Date"
    .end annotation
.end field

.field private etag:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "ETag"
    .end annotation
.end field

.field private expires:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "Expires"
    .end annotation
.end field

.field private ifMatch:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "If-Match"
    .end annotation
.end field

.field private ifModifiedSince:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "If-Modified-Since"
    .end annotation
.end field

.field private ifNoneMatch:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "If-None-Match"
    .end annotation
.end field

.field private ifUnmodifiedSince:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "If-Unmodified-Since"
    .end annotation
.end field

.field private lastModified:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "Last-Modified"
    .end annotation
.end field

.field private location:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "Location"
    .end annotation
.end field

.field private mimeVersion:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "MIME-Version"
    .end annotation
.end field

.field private range:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "Range"
    .end annotation
.end field

.field private retryAfter:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "Retry-After"
    .end annotation
.end field

.field private userAgent:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "User-Agent"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/google/api/client/util/GenericData;-><init>()V

    .line 47
    const-string v0, "gzip"

    iput-object v0, p0, Lcom/google/api/client/http/HttpHeaders;->acceptEncoding:Ljava/lang/String;

    return-void
.end method

.method static getFieldNameMap(Ljava/lang/Class;)Ljava/util/HashMap;
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/api/client/http/HttpHeaders;",
            ">;)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 596
    .local p0, headersClass:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/google/api/client/http/HttpHeaders;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 597
    .local v0, fieldNameMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p0}, Lcom/google/api/client/util/ClassInfo;->of(Ljava/lang/Class;)Lcom/google/api/client/util/ClassInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/api/client/util/ClassInfo;->getNames()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 598
    .local v2, keyName:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_11

    .line 600
    .end local v2           #keyName:Ljava/lang/String;
    :cond_25
    return-object v0
.end method


# virtual methods
.method public clone()Lcom/google/api/client/http/HttpHeaders;
    .registers 2

    .prologue
    .line 140
    invoke-super {p0}, Lcom/google/api/client/util/GenericData;->clone()Lcom/google/api/client/util/GenericData;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/http/HttpHeaders;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/api/client/util/GenericData;
    .registers 2

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/google/api/client/http/HttpHeaders;->clone()Lcom/google/api/client/http/HttpHeaders;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/google/api/client/http/HttpHeaders;->clone()Lcom/google/api/client/http/HttpHeaders;

    move-result-object v0

    return-object v0
.end method

.method public final getAuthorization()Ljava/lang/String;
    .registers 2

    .prologue
    .line 189
    iget-object v0, p0, Lcom/google/api/client/http/HttpHeaders;->authorization:Ljava/lang/String;

    return-object v0
.end method

.method public final getLocation()Ljava/lang/String;
    .registers 2

    .prologue
    .line 477
    iget-object v0, p0, Lcom/google/api/client/http/HttpHeaders;->location:Ljava/lang/String;

    return-object v0
.end method

.method public final getUserAgent()Ljava/lang/String;
    .registers 2

    .prologue
    .line 549
    iget-object v0, p0, Lcom/google/api/client/http/HttpHeaders;->userAgent:Ljava/lang/String;

    return-object v0
.end method

.method public final setAuthorization(Ljava/lang/String;)V
    .registers 2
    .parameter "authorization"

    .prologue
    .line 198
    iput-object p1, p0, Lcom/google/api/client/http/HttpHeaders;->authorization:Ljava/lang/String;

    .line 199
    return-void
.end method

.method public final setBasicAuthentication(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "username"
    .parameter "password"

    .prologue
    .line 586
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/api/client/util/Strings;->toBytesUtf8(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/api/client/util/Base64;->encode([B)[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/api/client/util/Strings;->fromBytesUtf8([B)Ljava/lang/String;

    move-result-object v0

    .line 588
    .local v0, encoded:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Basic "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/api/client/http/HttpHeaders;->authorization:Ljava/lang/String;

    .line 589
    return-void
.end method

.method public final setMimeVersion(Ljava/lang/String;)V
    .registers 2
    .parameter "mimeVersion"

    .prologue
    .line 504
    iput-object p1, p0, Lcom/google/api/client/http/HttpHeaders;->mimeVersion:Ljava/lang/String;

    .line 505
    return-void
.end method

.method public final setUserAgent(Ljava/lang/String;)V
    .registers 2
    .parameter "userAgent"

    .prologue
    .line 558
    iput-object p1, p0, Lcom/google/api/client/http/HttpHeaders;->userAgent:Ljava/lang/String;

    .line 559
    return-void
.end method

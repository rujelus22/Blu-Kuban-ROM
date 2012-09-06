.class public final Lcom/google/api/client/http/j;
.super Lcom/google/api/client/util/o;
.source "SourceFile"


# instance fields
.field private accept:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/r;
        a = "Accept"
    .end annotation
.end field

.field private acceptEncoding:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/r;
        a = "Accept-Encoding"
    .end annotation
.end field

.field private authenticate:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/r;
        a = "WWW-Authenticate"
    .end annotation
.end field

.field private authorization:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/r;
        a = "Authorization"
    .end annotation
.end field

.field private cacheControl:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/r;
        a = "Cache-Control"
    .end annotation
.end field

.field private contentEncoding:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/r;
        a = "Content-Encoding"
    .end annotation
.end field

.field private contentLength:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/r;
        a = "Content-Length"
    .end annotation
.end field

.field private contentMD5:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/r;
        a = "Content-MD5"
    .end annotation
.end field

.field private contentRange:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/r;
        a = "Content-Range"
    .end annotation
.end field

.field private contentType:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/r;
        a = "Content-Type"
    .end annotation
.end field

.field private cookie:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/r;
        a = "Cookie"
    .end annotation
.end field

.field private date:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/r;
        a = "Date"
    .end annotation
.end field

.field private etag:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/r;
        a = "ETag"
    .end annotation
.end field

.field private expires:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/r;
        a = "Expires"
    .end annotation
.end field

.field private ifMatch:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/r;
        a = "If-Match"
    .end annotation
.end field

.field private ifModifiedSince:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/r;
        a = "If-Modified-Since"
    .end annotation
.end field

.field private ifNoneMatch:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/r;
        a = "If-None-Match"
    .end annotation
.end field

.field private ifUnmodifiedSince:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/r;
        a = "If-Unmodified-Since"
    .end annotation
.end field

.field private lastModified:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/r;
        a = "Last-Modified"
    .end annotation
.end field

.field private location:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/r;
        a = "Location"
    .end annotation
.end field

.field private mimeVersion:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/r;
        a = "MIME-Version"
    .end annotation
.end field

.field private range:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/r;
        a = "Range"
    .end annotation
.end field

.field private retryAfter:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/r;
        a = "Retry-After"
    .end annotation
.end field

.field private userAgent:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/r;
        a = "User-Agent"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/google/api/client/util/o;-><init>()V

    .line 48
    const-string v0, "gzip"

    iput-object v0, p0, Lcom/google/api/client/http/j;->acceptEncoding:Ljava/lang/String;

    return-void
.end method

.method static a(Ljava/lang/Class;)Ljava/util/HashMap;
    .registers 5
    .parameter

    .prologue
    .line 598
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 599
    invoke-static {p0}, Lcom/google/api/client/util/g;->a(Ljava/lang/Class;)Lcom/google/api/client/util/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/client/util/g;->b()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 600
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_11

    .line 602
    :cond_25
    return-object v1
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 190
    iget-object v0, p0, Lcom/google/api/client/http/j;->authorization:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 199
    iput-object p1, p0, Lcom/google/api/client/http/j;->authorization:Ljava/lang/String;

    .line 200
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 587
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 589
    invoke-static {v0}, Lcom/google/api/client/util/t;->a(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/api/client/repackaged/org/apache/commons/codec/a/a;->a([B)Ljava/lang/String;

    move-result-object v0

    .line 590
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Basic "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/client/http/j;->authorization:Ljava/lang/String;

    .line 591
    return-void
.end method

.method public final b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 478
    iget-object v0, p0, Lcom/google/api/client/http/j;->location:Ljava/lang/String;

    return-object v0
.end method

.method public final b(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 559
    iput-object p1, p0, Lcom/google/api/client/http/j;->userAgent:Ljava/lang/String;

    .line 560
    return-void
.end method

.method public final c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 550
    iget-object v0, p0, Lcom/google/api/client/http/j;->userAgent:Ljava/lang/String;

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/api/client/util/o;
    .registers 2

    .prologue
    .line 41
    invoke-super {p0}, Lcom/google/api/client/util/o;->clone()Lcom/google/api/client/util/o;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/http/j;

    return-object v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 41
    invoke-super {p0}, Lcom/google/api/client/util/o;->clone()Lcom/google/api/client/util/o;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/http/j;

    return-object v0
.end method

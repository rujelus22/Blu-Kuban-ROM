.class public final Lcom/google/api/client/http/i;
.super Lcom/google/api/client/util/p;
.source "SourceFile"


# instance fields
.field public accept:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/s;
        a = "Accept"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public acceptEncoding:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/s;
        a = "Accept-Encoding"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public authenticate:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/s;
        a = "WWW-Authenticate"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public authorization:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/s;
        a = "Authorization"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public cacheControl:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/s;
        a = "Cache-Control"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public contentEncoding:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/s;
        a = "Content-Encoding"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public contentLength:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/s;
        a = "Content-Length"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public contentMD5:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/s;
        a = "Content-MD5"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public contentRange:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/s;
        a = "Content-Range"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public contentType:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/s;
        a = "Content-Type"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public date:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/s;
        a = "Date"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public etag:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/s;
        a = "ETag"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public expires:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/s;
        a = "Expires"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public ifMatch:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/s;
        a = "If-Match"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public ifModifiedSince:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/s;
        a = "If-Modified-Since"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public ifNoneMatch:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/s;
        a = "If-None-Match"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public ifUnmodifiedSince:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/s;
        a = "If-Unmodified-Since"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public lastModified:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/s;
        a = "Last-Modified"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public location:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/s;
        a = "Location"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public mimeVersion:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/s;
        a = "MIME-Version"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public range:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/s;
        a = "Range"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public retryAfter:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/s;
        a = "Retry-After"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public userAgent:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/s;
        a = "User-Agent"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/google/api/client/util/p;-><init>()V

    .line 57
    const-string v0, "gzip"

    iput-object v0, p0, Lcom/google/api/client/http/i;->acceptEncoding:Ljava/lang/String;

    return-void
.end method

.method static a(Ljava/lang/Class;)Ljava/util/HashMap;
    .registers 5
    .parameter

    .prologue
    .line 708
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 709
    invoke-static {p0}, Lcom/google/api/client/util/h;->a(Ljava/lang/Class;)Lcom/google/api/client/util/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/client/util/h;->b()Ljava/util/Collection;

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

    .line 710
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_11

    .line 712
    :cond_25
    return-object v1
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 319
    iget-object v0, p0, Lcom/google/api/client/http/i;->authorization:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 328
    iput-object p1, p0, Lcom/google/api/client/http/i;->authorization:Ljava/lang/String;

    .line 329
    return-void
.end method

.method public final bridge synthetic b()Lcom/google/api/client/util/p;
    .registers 2

    .prologue
    .line 40
    invoke-super {p0}, Lcom/google/api/client/util/p;->b()Lcom/google/api/client/util/p;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/http/i;

    return-object v0
.end method

.method public final b(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 670
    iput-object p1, p0, Lcom/google/api/client/http/i;->userAgent:Ljava/lang/String;

    .line 671
    return-void
.end method

.method public final c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 661
    iget-object v0, p0, Lcom/google/api/client/http/i;->userAgent:Ljava/lang/String;

    return-object v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 40
    invoke-super {p0}, Lcom/google/api/client/util/p;->b()Lcom/google/api/client/util/p;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/http/i;

    return-object v0
.end method

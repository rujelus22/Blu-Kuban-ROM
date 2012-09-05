.class Llibcore/net/http/HttpResponseCache$Entry$1;
.super Ljava/net/CacheResponse;
.source "HttpResponseCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llibcore/net/http/HttpResponseCache$Entry;->newCacheResponse(Ljava/io/InputStream;)Ljava/net/CacheResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Llibcore/net/http/HttpResponseCache$Entry;

.field final synthetic val$in:Ljava/io/InputStream;


# direct methods
.method constructor <init>(Llibcore/net/http/HttpResponseCache$Entry;Ljava/io/InputStream;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 488
    iput-object p1, p0, Llibcore/net/http/HttpResponseCache$Entry$1;->this$0:Llibcore/net/http/HttpResponseCache$Entry;

    iput-object p2, p0, Llibcore/net/http/HttpResponseCache$Entry$1;->val$in:Ljava/io/InputStream;

    invoke-direct {p0}, Ljava/net/CacheResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public getBody()Ljava/io/InputStream;
    .registers 2

    .prologue
    .line 494
    iget-object v0, p0, Llibcore/net/http/HttpResponseCache$Entry$1;->val$in:Ljava/io/InputStream;

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
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 490
    iget-object v0, p0, Llibcore/net/http/HttpResponseCache$Entry$1;->this$0:Llibcore/net/http/HttpResponseCache$Entry;

    #getter for: Llibcore/net/http/HttpResponseCache$Entry;->responseHeaders:Llibcore/net/http/RawHeaders;
    invoke-static {v0}, Llibcore/net/http/HttpResponseCache$Entry;->access$400(Llibcore/net/http/HttpResponseCache$Entry;)Llibcore/net/http/RawHeaders;

    move-result-object v0

    invoke-virtual {v0}, Llibcore/net/http/RawHeaders;->toMultimap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

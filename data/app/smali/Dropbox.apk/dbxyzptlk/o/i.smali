.class final Ldbxyzptlk/o/i;
.super Lorg/apache/http/entity/HttpEntityWrapper;
.source "panda.py"


# direct methods
.method public constructor <init>(Lorg/apache/http/HttpEntity;)V
    .registers 2
    .parameter

    .prologue
    .line 577
    invoke-direct {p0, p1}, Lorg/apache/http/entity/HttpEntityWrapper;-><init>(Lorg/apache/http/HttpEntity;)V

    .line 578
    return-void
.end method


# virtual methods
.method public final getContent()Ljava/io/InputStream;
    .registers 3

    .prologue
    .line 585
    iget-object v0, p0, Ldbxyzptlk/o/i;->wrappedEntity:Lorg/apache/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    .line 587
    new-instance v1, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v1
.end method

.method public final getContentLength()J
    .registers 3

    .prologue
    .line 593
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.class final Lcom/google/api/client/http/GZipContent;
.super Lcom/google/api/client/http/AbstractHttpContent;
.source "GZipContent.java"


# instance fields
.field private final contentType:Ljava/lang/String;

.field private final httpContent:Lcom/google/api/client/http/HttpContent;


# direct methods
.method constructor <init>(Lcom/google/api/client/http/HttpContent;Ljava/lang/String;)V
    .registers 3
    .parameter "httpContent"
    .parameter "contentType"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/google/api/client/http/AbstractHttpContent;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/google/api/client/http/GZipContent;->httpContent:Lcom/google/api/client/http/HttpContent;

    .line 41
    iput-object p2, p0, Lcom/google/api/client/http/GZipContent;->contentType:Ljava/lang/String;

    .line 42
    return-void
.end method


# virtual methods
.method public getEncoding()Ljava/lang/String;
    .registers 2

    .prologue
    .line 52
    const-string v0, "gzip"

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/api/client/http/GZipContent;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public retrySupported()Z
    .registers 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/api/client/http/GZipContent;->httpContent:Lcom/google/api/client/http/HttpContent;

    invoke-interface {v0}, Lcom/google/api/client/http/HttpContent;->retrySupported()Z

    move-result v0

    return v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .registers 4
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 45
    new-instance v0, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v0, p1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 46
    .local v0, zipper:Ljava/util/zip/GZIPOutputStream;
    iget-object v1, p0, Lcom/google/api/client/http/GZipContent;->httpContent:Lcom/google/api/client/http/HttpContent;

    invoke-interface {v1, v0}, Lcom/google/api/client/http/HttpContent;->writeTo(Ljava/io/OutputStream;)V

    .line 47
    invoke-virtual {v0}, Ljava/util/zip/GZIPOutputStream;->finish()V

    .line 48
    return-void
.end method

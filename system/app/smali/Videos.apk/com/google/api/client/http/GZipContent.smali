.class final Lcom/google/api/client/http/GZipContent;
.super Ljava/lang/Object;
.source "GZipContent.java"

# interfaces
.implements Lcom/google/api/client/http/HttpContent;


# instance fields
.field private final contentType:Ljava/lang/String;

.field private final httpContent:Lcom/google/api/client/http/HttpContent;


# direct methods
.method constructor <init>(Lcom/google/api/client/http/HttpContent;Ljava/lang/String;)V
    .registers 3
    .parameter "httpContent"
    .parameter "contentType"

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/google/api/client/http/GZipContent;->httpContent:Lcom/google/api/client/http/HttpContent;

    .line 37
    iput-object p2, p0, Lcom/google/api/client/http/GZipContent;->contentType:Ljava/lang/String;

    .line 38
    return-void
.end method


# virtual methods
.method public getEncoding()Ljava/lang/String;
    .registers 2

    .prologue
    .line 47
    const-string v0, "gzip"

    return-object v0
.end method

.method public getLength()J
    .registers 3

    .prologue
    .line 51
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/api/client/http/GZipContent;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public retrySupported()Z
    .registers 2

    .prologue
    .line 59
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
    .line 41
    new-instance v0, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v0, p1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 42
    .local v0, zipper:Ljava/util/zip/GZIPOutputStream;
    iget-object v1, p0, Lcom/google/api/client/http/GZipContent;->httpContent:Lcom/google/api/client/http/HttpContent;

    invoke-interface {v1, v0}, Lcom/google/api/client/http/HttpContent;->writeTo(Ljava/io/OutputStream;)V

    .line 43
    invoke-virtual {v0}, Ljava/util/zip/GZIPOutputStream;->finish()V

    .line 44
    return-void
.end method

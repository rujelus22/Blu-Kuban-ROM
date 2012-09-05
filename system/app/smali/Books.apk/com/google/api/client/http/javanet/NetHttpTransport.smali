.class public final Lcom/google/api/client/http/javanet/NetHttpTransport;
.super Lcom/google/api/client/http/HttpTransport;
.source "NetHttpTransport.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/google/api/client/http/HttpTransport;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic buildDeleteRequest(Ljava/lang/String;)Lcom/google/api/client/http/LowLevelHttpRequest;
    .registers 3
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Lcom/google/api/client/http/javanet/NetHttpTransport;->buildDeleteRequest(Ljava/lang/String;)Lcom/google/api/client/http/javanet/NetHttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildDeleteRequest(Ljava/lang/String;)Lcom/google/api/client/http/javanet/NetHttpRequest;
    .registers 4
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 41
    new-instance v0, Lcom/google/api/client/http/javanet/NetHttpRequest;

    const-string v1, "DELETE"

    invoke-direct {v0, v1, p1}, Lcom/google/api/client/http/javanet/NetHttpRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic buildGetRequest(Ljava/lang/String;)Lcom/google/api/client/http/LowLevelHttpRequest;
    .registers 3
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Lcom/google/api/client/http/javanet/NetHttpTransport;->buildGetRequest(Ljava/lang/String;)Lcom/google/api/client/http/javanet/NetHttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildGetRequest(Ljava/lang/String;)Lcom/google/api/client/http/javanet/NetHttpRequest;
    .registers 4
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 46
    new-instance v0, Lcom/google/api/client/http/javanet/NetHttpRequest;

    const-string v1, "GET"

    invoke-direct {v0, v1, p1}, Lcom/google/api/client/http/javanet/NetHttpRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic buildHeadRequest(Ljava/lang/String;)Lcom/google/api/client/http/LowLevelHttpRequest;
    .registers 3
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Lcom/google/api/client/http/javanet/NetHttpTransport;->buildHeadRequest(Ljava/lang/String;)Lcom/google/api/client/http/javanet/NetHttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildHeadRequest(Ljava/lang/String;)Lcom/google/api/client/http/javanet/NetHttpRequest;
    .registers 4
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 51
    new-instance v0, Lcom/google/api/client/http/javanet/NetHttpRequest;

    const-string v1, "HEAD"

    invoke-direct {v0, v1, p1}, Lcom/google/api/client/http/javanet/NetHttpRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic buildPostRequest(Ljava/lang/String;)Lcom/google/api/client/http/LowLevelHttpRequest;
    .registers 3
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Lcom/google/api/client/http/javanet/NetHttpTransport;->buildPostRequest(Ljava/lang/String;)Lcom/google/api/client/http/javanet/NetHttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPostRequest(Ljava/lang/String;)Lcom/google/api/client/http/javanet/NetHttpRequest;
    .registers 4
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 56
    new-instance v0, Lcom/google/api/client/http/javanet/NetHttpRequest;

    const-string v1, "POST"

    invoke-direct {v0, v1, p1}, Lcom/google/api/client/http/javanet/NetHttpRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic buildPutRequest(Ljava/lang/String;)Lcom/google/api/client/http/LowLevelHttpRequest;
    .registers 3
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Lcom/google/api/client/http/javanet/NetHttpTransport;->buildPutRequest(Ljava/lang/String;)Lcom/google/api/client/http/javanet/NetHttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPutRequest(Ljava/lang/String;)Lcom/google/api/client/http/javanet/NetHttpRequest;
    .registers 4
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 61
    new-instance v0, Lcom/google/api/client/http/javanet/NetHttpRequest;

    const-string v1, "PUT"

    invoke-direct {v0, v1, p1}, Lcom/google/api/client/http/javanet/NetHttpRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public supportsHead()Z
    .registers 2

    .prologue
    .line 36
    const/4 v0, 0x1

    return v0
.end method

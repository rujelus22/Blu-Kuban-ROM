.class public final Llibcore/net/http/HttpsHandler;
.super Ljava/net/URLStreamHandler;
.source "HttpsHandler.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/net/URLStreamHandler;-><init>()V

    return-void
.end method


# virtual methods
.method protected getDefaultPort()I
    .registers 2

    .prologue
    .line 40
    const/16 v0, 0x1bb

    return v0
.end method

.method protected openConnection(Ljava/net/URL;)Ljava/net/URLConnection;
    .registers 4
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 29
    new-instance v0, Llibcore/net/http/HttpsURLConnectionImpl;

    invoke-virtual {p0}, Llibcore/net/http/HttpsHandler;->getDefaultPort()I

    move-result v1

    invoke-direct {v0, p1, v1}, Llibcore/net/http/HttpsURLConnectionImpl;-><init>(Ljava/net/URL;I)V

    return-object v0
.end method

.method protected openConnection(Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/URLConnection;
    .registers 5
    .parameter "url"
    .parameter "proxy"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 33
    if-eqz p1, :cond_4

    if-nez p2, :cond_c

    .line 34
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "url == null || proxy == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36
    :cond_c
    new-instance v0, Llibcore/net/http/HttpsURLConnectionImpl;

    invoke-virtual {p0}, Llibcore/net/http/HttpsHandler;->getDefaultPort()I

    move-result v1

    invoke-direct {v0, p1, v1, p2}, Llibcore/net/http/HttpsURLConnectionImpl;-><init>(Ljava/net/URL;ILjava/net/Proxy;)V

    return-object v0
.end method

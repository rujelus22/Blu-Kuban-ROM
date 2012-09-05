.class Lorg/cups4j/operations/IppOperation$1;
.super Ljava/lang/Object;
.source "IppOperation.java"

# interfaces
.implements Lorg/apache/http/client/ResponseHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cups4j/operations/IppOperation;->sendRequest(Ljava/net/URL;Ljava/nio/ByteBuffer;Ljava/io/InputStream;)Lch/ethz/vppserver/ippclient/IppResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/http/client/ResponseHandler",
        "<[B>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cups4j/operations/IppOperation;


# direct methods
.method constructor <init>(Lorg/cups4j/operations/IppOperation;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/cups4j/operations/IppOperation$1;->this$0:Lorg/cups4j/operations/IppOperation;

    .line 191
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic handleResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/Object;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lorg/cups4j/operations/IppOperation$1;->handleResponse(Lorg/apache/http/HttpResponse;)[B

    move-result-object v0

    return-object v0
.end method

.method public handleResponse(Lorg/apache/http/HttpResponse;)[B
    .registers 5
    .parameter "response"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 193
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 194
    .local v0, entity:Lorg/apache/http/HttpEntity;
    iget-object v1, p0, Lorg/cups4j/operations/IppOperation$1;->this$0:Lorg/cups4j/operations/IppOperation;

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lorg/cups4j/operations/IppOperation;->httpStatusLine:Ljava/lang/String;

    .line 195
    if-eqz v0, :cond_17

    .line 196
    invoke-static {v0}, Lorg/apache/http/util/EntityUtils;->toByteArray(Lorg/apache/http/HttpEntity;)[B

    move-result-object v1

    .line 198
    :goto_16
    return-object v1

    :cond_17
    const/4 v1, 0x0

    goto :goto_16
.end method

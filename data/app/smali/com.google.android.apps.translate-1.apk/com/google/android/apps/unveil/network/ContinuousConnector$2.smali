.class final Lcom/google/android/apps/unveil/network/ContinuousConnector$2;
.super Ljava/lang/Object;
.source "ContinuousConnector.java"

# interfaces
.implements Lcom/google/android/apps/unveil/network/ContinuousConnector$Network;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/unveil/network/ContinuousConnector;->connectorNetwork(Lcom/google/android/apps/unveil/network/HttpUrlConnectionConnector;)Lcom/google/android/apps/unveil/network/ContinuousConnector$Network;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$connector:Lcom/google/android/apps/unveil/network/HttpUrlConnectionConnector;


# direct methods
.method constructor <init>(Lcom/google/android/apps/unveil/network/HttpUrlConnectionConnector;)V
    .registers 2
    .parameter

    .prologue
    .line 164
    iput-object p1, p0, Lcom/google/android/apps/unveil/network/ContinuousConnector$2;->val$connector:Lcom/google/android/apps/unveil/network/HttpUrlConnectionConnector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)Lorg/apache/http/HttpResponse;
    .registers 6
    .parameter "host"
    .parameter "request"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 168
    instance-of v1, p2, Lorg/apache/http/client/methods/HttpRequestBase;

    if-eqz v1, :cond_25

    move-object v0, p2

    .line 171
    check-cast v0, Lorg/apache/http/client/methods/HttpRequestBase;

    .line 172
    .local v0, httpRequestBase:Lorg/apache/http/client/methods/HttpRequestBase;
    invoke-virtual {p1}, Lorg/apache/http/HttpHost;->toURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpRequestBase;->getURI()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/http/client/methods/HttpRequestBase;->setURI(Ljava/net/URI;)V

    .line 174
    iget-object v1, p0, Lcom/google/android/apps/unveil/network/ContinuousConnector$2;->val$connector:Lcom/google/android/apps/unveil/network/HttpUrlConnectionConnector;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/unveil/network/HttpUrlConnectionConnector;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    return-object v1

    .line 177
    .end local v0           #httpRequestBase:Lorg/apache/http/client/methods/HttpRequestBase;
    :cond_25
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

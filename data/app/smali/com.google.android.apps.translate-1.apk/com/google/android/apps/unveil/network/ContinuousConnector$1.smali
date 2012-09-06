.class final Lcom/google/android/apps/unveil/network/ContinuousConnector$1;
.super Ljava/lang/Object;
.source "ContinuousConnector.java"

# interfaces
.implements Lcom/google/android/apps/unveil/network/ContinuousConnector$Network;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/unveil/network/ContinuousConnector;->httpClientNetwork(Lorg/apache/http/client/HttpClient;)Lcom/google/android/apps/unveil/network/ContinuousConnector$Network;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$client:Lorg/apache/http/client/HttpClient;


# direct methods
.method constructor <init>(Lorg/apache/http/client/HttpClient;)V
    .registers 2
    .parameter

    .prologue
    .line 154
    iput-object p1, p0, Lcom/google/android/apps/unveil/network/ContinuousConnector$1;->val$client:Lorg/apache/http/client/HttpClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)Lorg/apache/http/HttpResponse;
    .registers 4
    .parameter "host"
    .parameter "request"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 158
    iget-object v0, p0, Lcom/google/android/apps/unveil/network/ContinuousConnector$1;->val$client:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0, p1, p2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

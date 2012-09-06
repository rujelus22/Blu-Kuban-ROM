.class public Lcom/google/research/handwriting/networkrecognizer/HandwritingHttpClient;
.super Lorg/apache/http/impl/client/DefaultHttpClient;
.source "HandwritingHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/research/handwriting/networkrecognizer/HandwritingHttpClient$RunAfterAuthentication;
    }
.end annotation


# static fields
.field protected static final CONNECTION_REUSE_MILLISECONDS:J = 0x186a0L

.field protected static final CONNECTION_TIMEOUT_MILLIS:I = 0x7530

.field protected static final SOCKET_TIMEOUT_MILLIS:I = 0x7530


# instance fields
.field protected status:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V
    .registers 4
    .parameter "cm"
    .parameter "params"

    .prologue
    .line 91
    invoke-direct {p0, p1, p2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    .line 92
    new-instance v0, Lcom/google/research/handwriting/networkrecognizer/HandwritingHttpClient$1;

    invoke-direct {v0, p0}, Lcom/google/research/handwriting/networkrecognizer/HandwritingHttpClient$1;-><init>(Lcom/google/research/handwriting/networkrecognizer/HandwritingHttpClient;)V

    invoke-virtual {p0, v0}, Lcom/google/research/handwriting/networkrecognizer/HandwritingHttpClient;->setKeepAliveStrategy(Lorg/apache/http/conn/ConnectionKeepAliveStrategy;)V

    .line 99
    return-void
.end method

.method public static getNewHttpClient()Lcom/google/research/handwriting/networkrecognizer/HandwritingHttpClient;
    .registers 10

    .prologue
    const/16 v9, 0x7530

    .line 62
    new-instance v3, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 63
    .local v3, schemeRegistry:Lorg/apache/http/conn/scheme/SchemeRegistry;
    new-instance v5, Lorg/apache/http/conn/scheme/Scheme;

    const-string v6, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v7

    const/16 v8, 0x50

    invoke-direct {v5, v6, v7, v8}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v3, v5}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 64
    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v4

    .line 65
    .local v4, sslfactory:Lorg/apache/http/conn/ssl/SSLSocketFactory;
    sget-object v1, Lorg/apache/http/conn/ssl/SSLSocketFactory;->ALLOW_ALL_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    .line 67
    .local v1, hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;
    check-cast v1, Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    .end local v1           #hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;
    invoke-virtual {v4, v1}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V

    .line 68
    new-instance v5, Lorg/apache/http/conn/scheme/Scheme;

    const-string v6, "https"

    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v7

    const/16 v8, 0x1bb

    invoke-direct {v5, v6, v7, v8}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v3, v5}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 70
    new-instance v2, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v2}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 72
    .local v2, params:Lorg/apache/http/params/HttpParams;
    invoke-static {v2, v9}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 75
    invoke-static {v2, v9}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 77
    new-instance v0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v0, v2, v3}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 79
    .local v0, cm:Lorg/apache/http/conn/ClientConnectionManager;
    new-instance v5, Lcom/google/research/handwriting/networkrecognizer/HandwritingHttpClient;

    invoke-direct {v5, v0, v2}, Lcom/google/research/handwriting/networkrecognizer/HandwritingHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    return-object v5
.end method


# virtual methods
.method public authenticate(Landroid/content/Context;Lcom/google/research/handwriting/networkrecognizer/HandwritingHttpClient$RunAfterAuthentication;)V
    .registers 3
    .parameter "context"
    .parameter "runWhenAuthenticated"

    .prologue
    .line 104
    return-void
.end method

.method public isAuthenticated()Z
    .registers 2

    .prologue
    .line 111
    const/4 v0, 0x0

    return v0
.end method

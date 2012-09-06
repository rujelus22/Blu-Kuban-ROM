.class public Lcom/google/android/apps/unveil/network/FroyoSchemeRegistryFactory;
.super Ljava/lang/Object;
.source "FroyoSchemeRegistryFactory.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static get(Landroid/content/Context;)Lorg/apache/http/conn/scheme/SchemeRegistry;
    .registers 8
    .parameter "context"

    .prologue
    .line 24
    :try_start_0
    new-instance v2, Landroid/net/SSLSessionCache;

    invoke-direct {v2, p0}, Landroid/net/SSLSessionCache;-><init>(Landroid/content/Context;)V
    :try_end_5
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_5} :catch_2d

    .line 28
    .local v2, sessionCache:Landroid/net/SSLSessionCache;
    :goto_5
    new-instance v1, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 29
    .local v1, schemeRegistry:Lorg/apache/http/conn/scheme/SchemeRegistry;
    new-instance v3, Lorg/apache/http/conn/scheme/Scheme;

    const-string v4, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v5

    const/16 v6, 0x50

    invoke-direct {v3, v4, v5, v6}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v1, v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 30
    new-instance v3, Lorg/apache/http/conn/scheme/Scheme;

    const-string v4, "https"

    const/16 v5, 0x7530

    invoke-static {v5, v2}, Landroid/net/SSLCertificateSocketFactory;->getHttpSocketFactory(ILandroid/net/SSLSessionCache;)Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v5

    const/16 v6, 0x1bb

    invoke-direct {v3, v4, v5, v6}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v1, v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 33
    return-object v1

    .line 25
    .end local v1           #schemeRegistry:Lorg/apache/http/conn/scheme/SchemeRegistry;
    .end local v2           #sessionCache:Landroid/net/SSLSessionCache;
    :catch_2d
    move-exception v0

    .line 26
    .local v0, e:Ljava/lang/NullPointerException;
    const/4 v2, 0x0

    .restart local v2       #sessionCache:Landroid/net/SSLSessionCache;
    goto :goto_5
.end method

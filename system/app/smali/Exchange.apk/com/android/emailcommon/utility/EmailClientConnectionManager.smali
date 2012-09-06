.class public Lcom/android/emailcommon/utility/EmailClientConnectionManager;
.super Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;
.source "EmailClientConnectionManager.java"


# instance fields
.field private final mTrackingKeyManager:Lcom/android/emailcommon/utility/SSLUtils$TrackingKeyManager;


# direct methods
.method private constructor <init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;Lcom/android/emailcommon/utility/SSLUtils$TrackingKeyManager;)V
    .registers 4
    .parameter "params"
    .parameter "registry"
    .parameter "keyManager"

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 57
    iput-object p3, p0, Lcom/android/emailcommon/utility/EmailClientConnectionManager;->mTrackingKeyManager:Lcom/android/emailcommon/utility/SSLUtils$TrackingKeyManager;

    .line 58
    return-void
.end method

.method public static makeScheme(ZZLjava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "useSsl"
    .parameter "trustAllServerCerts"
    .parameter "clientCertAlias"

    .prologue
    .line 124
    if-eqz p2, :cond_7

    .line 125
    invoke-static {p2, p1}, Lcom/android/emailcommon/utility/EmailClientConnectionManager;->makeSchemeForClientCert(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 127
    :goto_6
    return-object v0

    :cond_7
    if-eqz p0, :cond_11

    if-eqz p1, :cond_e

    const-string v0, "httpts"

    goto :goto_6

    :cond_e
    const-string v0, "https"

    goto :goto_6

    :cond_11
    const-string v0, "http"

    goto :goto_6
.end method

.method private static makeSchemeForClientCert(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 5
    .parameter "clientCertAlias"
    .parameter "trustAllServerCerts"

    .prologue
    .line 136
    invoke-static {p0}, Lcom/android/emailcommon/utility/SSLUtils;->escapeForSchemeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 137
    .local v0, safeAlias:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_20

    const-string v1, "httpts"

    :goto_d
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "+clientCert+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_20
    const-string v1, "https"

    goto :goto_d
.end method

.method public static newInstance(Lorg/apache/http/params/HttpParams;)Lcom/android/emailcommon/utility/EmailClientConnectionManager;
    .registers 8
    .parameter "params"

    .prologue
    const/16 v6, 0x1bb

    .line 61
    new-instance v0, Lcom/android/emailcommon/utility/SSLUtils$TrackingKeyManager;

    invoke-direct {v0}, Lcom/android/emailcommon/utility/SSLUtils$TrackingKeyManager;-><init>()V

    .line 64
    .local v0, keyManager:Lcom/android/emailcommon/utility/SSLUtils$TrackingKeyManager;
    new-instance v1, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 65
    .local v1, registry:Lorg/apache/http/conn/scheme/SchemeRegistry;
    new-instance v2, Lorg/apache/http/conn/scheme/Scheme;

    const-string v3, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v4

    const/16 v5, 0x50

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v1, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 67
    new-instance v2, Lorg/apache/http/conn/scheme/Scheme;

    const-string v3, "https"

    const/4 v4, 0x0

    invoke-static {v4, v0}, Lcom/android/emailcommon/utility/SSLUtils;->getHttpSocketFactory(ZLjavax/net/ssl/KeyManager;)Lcom/android/emailcommon/utility/SSLSocketFactory;

    move-result-object v4

    invoke-direct {v2, v3, v4, v6}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v1, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 71
    new-instance v2, Lorg/apache/http/conn/scheme/Scheme;

    const-string v3, "httpts"

    const/4 v4, 0x1

    invoke-static {v4, v0}, Lcom/android/emailcommon/utility/SSLUtils;->getHttpSocketFactory(ZLjavax/net/ssl/KeyManager;)Lcom/android/emailcommon/utility/SSLSocketFactory;

    move-result-object v4

    invoke-direct {v2, v3, v4, v6}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v1, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 74
    new-instance v2, Lcom/android/emailcommon/utility/EmailClientConnectionManager;

    invoke-direct {v2, p0, v1, v0}, Lcom/android/emailcommon/utility/EmailClientConnectionManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;Lcom/android/emailcommon/utility/SSLUtils$TrackingKeyManager;)V

    return-object v2
.end method


# virtual methods
.method public declared-synchronized hasDetectedUnsatisfiedCertReq(J)Z
    .registers 5
    .parameter "since"

    .prologue
    .line 146
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/emailcommon/utility/EmailClientConnectionManager;->mTrackingKeyManager:Lcom/android/emailcommon/utility/SSLUtils$TrackingKeyManager;

    invoke-virtual {v0}, Lcom/android/emailcommon/utility/SSLUtils$TrackingKeyManager;->getLastCertReqTime()J
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_10

    move-result-wide v0

    cmp-long v0, v0, p1

    if-ltz v0, :cond_e

    const/4 v0, 0x1

    :goto_c
    monitor-exit p0

    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_c

    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized registerClientCert(Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 12
    .parameter "context"
    .parameter "clientCertAlias"
    .parameter "trustAllServerCerts"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 87
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/android/emailcommon/utility/EmailClientConnectionManager;->getSchemeRegistry()Lorg/apache/http/conn/scheme/SchemeRegistry;

    move-result-object v2

    .line 88
    .local v2, registry:Lorg/apache/http/conn/scheme/SchemeRegistry;
    invoke-static {p2, p3}, Lcom/android/emailcommon/utility/EmailClientConnectionManager;->makeSchemeForClientCert(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    .line 89
    .local v3, schemeName:Ljava/lang/String;
    invoke-virtual {v2, v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;->get(Ljava/lang/String;)Lorg/apache/http/conn/scheme/Scheme;

    move-result-object v0

    .line 90
    .local v0, existing:Lorg/apache/http/conn/scheme/Scheme;
    if-nez v0, :cond_2f

    .line 95
    invoke-static {p1, p2}, Lcom/android/emailcommon/utility/SSLUtils$KeyChainKeyManager;->fromAlias(Landroid/content/Context;Ljava/lang/String;)Lcom/android/emailcommon/utility/SSLUtils$KeyChainKeyManager;

    move-result-object v1

    .line 96
    .local v1, keyManager:Ljavax/net/ssl/KeyManager;
    invoke-static {p3}, Lcom/android/emailcommon/utility/SSLUtils;->getSSLSocketFactory(Z)Landroid/net/SSLCertificateSocketFactory;

    move-result-object v4

    .line 98
    .local v4, underlying:Landroid/net/SSLCertificateSocketFactory;
    const/4 v5, 0x1

    new-array v5, v5, [Ljavax/net/ssl/KeyManager;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-virtual {v4, v5}, Landroid/net/SSLCertificateSocketFactory;->setKeyManagers([Ljavax/net/ssl/KeyManager;)V

    .line 99
    new-instance v5, Lorg/apache/http/conn/scheme/Scheme;

    new-instance v6, Lcom/android/emailcommon/utility/SSLSocketFactory;

    invoke-direct {v6, v4}, Lcom/android/emailcommon/utility/SSLSocketFactory;-><init>(Ljavax/net/ssl/SSLSocketFactory;)V

    const/16 v7, 0x1bb

    invoke-direct {v5, v3, v6, v7}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v2, v5}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;
    :try_end_2f
    .catchall {:try_start_1 .. :try_end_2f} :catchall_31

    .line 101
    .end local v1           #keyManager:Ljavax/net/ssl/KeyManager;
    .end local v4           #underlying:Landroid/net/SSLCertificateSocketFactory;
    :cond_2f
    monitor-exit p0

    return-void

    .line 87
    .end local v0           #existing:Lorg/apache/http/conn/scheme/Scheme;
    .end local v2           #registry:Lorg/apache/http/conn/scheme/SchemeRegistry;
    .end local v3           #schemeName:Ljava/lang/String;
    :catchall_31
    move-exception v5

    monitor-exit p0

    throw v5
.end method

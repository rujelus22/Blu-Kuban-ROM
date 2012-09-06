.class public Lorg/apache/commons/net/util/SSLContextUtils;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createSSLContext(Ljava/lang/String;Ljavax/net/ssl/KeyManager;Ljavax/net/ssl/TrustManager;)Ljavax/net/ssl/SSLContext;
    .registers 7

    const/4 v0, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_d

    move-object v1, v0

    :goto_6
    if-nez p2, :cond_12

    :goto_8
    invoke-static {p0, v1, v0}, Lorg/apache/commons/net/util/SSLContextUtils;->createSSLContext(Ljava/lang/String;[Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    return-object v0

    :cond_d
    new-array v1, v3, [Ljavax/net/ssl/KeyManager;

    aput-object p1, v1, v2

    goto :goto_6

    :cond_12
    new-array v0, v3, [Ljavax/net/ssl/TrustManager;

    aput-object p2, v0, v2

    goto :goto_8
.end method

.method public static createSSLContext(Ljava/lang/String;[Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;)Ljavax/net/ssl/SSLContext;
    .registers 6

    :try_start_0
    invoke-static {p0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
    :try_end_8
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    :catch_9
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    const-string v2, "Could not initialize SSL context"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v1
.end method

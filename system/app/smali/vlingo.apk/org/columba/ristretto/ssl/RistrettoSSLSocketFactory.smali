.class public Lorg/columba/ristretto/ssl/RistrettoSSLSocketFactory;
.super Ljava/lang/Object;
.source "RistrettoSSLSocketFactory.java"


# static fields
.field private static myInstance:Lorg/columba/ristretto/ssl/RistrettoSSLSocketFactory;


# instance fields
.field private socketFactory:Ljavax/net/ssl/SSLSocketFactory;


# direct methods
.method protected constructor <init>()V
    .registers 7

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    :try_start_3
    const-string v2, "TLS"

    invoke-static {v2}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    .line 79
    .local v1, sslContext:Ljavax/net/ssl/SSLContext;
    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljavax/net/ssl/TrustManager;

    const/4 v4, 0x0

    new-instance v5, Lorg/columba/ristretto/ssl/DefaultTrustManager;

    invoke-direct {v5}, Lorg/columba/ristretto/ssl/DefaultTrustManager;-><init>()V

    aput-object v5, v3, v4

    new-instance v4, Ljava/security/SecureRandom;

    invoke-direct {v4}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v1, v2, v3, v4}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 81
    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    iput-object v2, p0, Lorg/columba/ristretto/ssl/RistrettoSSLSocketFactory;->socketFactory:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_23
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_23} :catch_24
    .catch Ljava/security/KeyManagementException; {:try_start_3 .. :try_end_23} :catch_2b

    .line 87
    .end local v1           #sslContext:Ljavax/net/ssl/SSLContext;
    :goto_23
    return-void

    .line 82
    :catch_24
    move-exception v0

    .line 83
    .local v0, e:Ljava/security/NoSuchAlgorithmException;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, v2}, Ljava/security/NoSuchAlgorithmException;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_23

    .line 84
    .end local v0           #e:Ljava/security/NoSuchAlgorithmException;
    :catch_2b
    move-exception v0

    .line 85
    .local v0, e:Ljava/security/KeyManagementException;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, v2}, Ljava/security/KeyManagementException;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_23
.end method

.method public static getInstance()Lorg/columba/ristretto/ssl/RistrettoSSLSocketFactory;
    .registers 1

    .prologue
    .line 68
    sget-object v0, Lorg/columba/ristretto/ssl/RistrettoSSLSocketFactory;->myInstance:Lorg/columba/ristretto/ssl/RistrettoSSLSocketFactory;

    if-nez v0, :cond_b

    .line 69
    new-instance v0, Lorg/columba/ristretto/ssl/RistrettoSSLSocketFactory;

    invoke-direct {v0}, Lorg/columba/ristretto/ssl/RistrettoSSLSocketFactory;-><init>()V

    sput-object v0, Lorg/columba/ristretto/ssl/RistrettoSSLSocketFactory;->myInstance:Lorg/columba/ristretto/ssl/RistrettoSSLSocketFactory;

    .line 72
    :cond_b
    sget-object v0, Lorg/columba/ristretto/ssl/RistrettoSSLSocketFactory;->myInstance:Lorg/columba/ristretto/ssl/RistrettoSSLSocketFactory;

    return-object v0
.end method


# virtual methods
.method public createSocket(Ljava/lang/String;I)Ljava/net/Socket;
    .registers 4
    .parameter "host"
    .parameter "port"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 162
    iget-object v0, p0, Lorg/columba/ristretto/ssl/RistrettoSSLSocketFactory;->socketFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .registers 6
    .parameter "host"
    .parameter "port"
    .parameter "localHost"
    .parameter "localPort"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 176
    iget-object v0, p0, Lorg/columba/ristretto/ssl/RistrettoSSLSocketFactory;->socketFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;
    .registers 4
    .parameter "address"
    .parameter "port"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 136
    iget-object v0, p0, Lorg/columba/ristretto/ssl/RistrettoSSLSocketFactory;->socketFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .registers 6
    .parameter "address"
    .parameter "port"
    .parameter "localAddress"
    .parameter "localPort"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 150
    iget-object v0, p0, Lorg/columba/ristretto/ssl/RistrettoSSLSocketFactory;->socketFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    .registers 6
    .parameter "socket"
    .parameter "host"
    .parameter "port"
    .parameter "autoClose"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 190
    iget-object v0, p0, Lorg/columba/ristretto/ssl/RistrettoSSLSocketFactory;->socketFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public setKeyManager(Ljavax/net/ssl/KeyManager;)V
    .registers 7
    .parameter "km"

    .prologue
    .line 115
    :try_start_0
    const-string v2, "TLS"

    invoke-static {v2}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    .line 117
    .local v1, sslContext:Ljavax/net/ssl/SSLContext;
    const/4 v2, 0x1

    new-array v2, v2, [Ljavax/net/ssl/KeyManager;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x0

    new-instance v4, Ljava/security/SecureRandom;

    invoke-direct {v4}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v1, v2, v3, v4}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 119
    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    iput-object v2, p0, Lorg/columba/ristretto/ssl/RistrettoSSLSocketFactory;->socketFactory:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_1b
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_1b} :catch_1c
    .catch Ljava/security/KeyManagementException; {:try_start_0 .. :try_end_1b} :catch_23

    .line 125
    .end local v1           #sslContext:Ljavax/net/ssl/SSLContext;
    :goto_1b
    return-void

    .line 120
    :catch_1c
    move-exception v0

    .line 121
    .local v0, e:Ljava/security/NoSuchAlgorithmException;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, v2}, Ljava/security/NoSuchAlgorithmException;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_1b

    .line 122
    .end local v0           #e:Ljava/security/NoSuchAlgorithmException;
    :catch_23
    move-exception v0

    .line 123
    .local v0, e:Ljava/security/KeyManagementException;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, v2}, Ljava/security/KeyManagementException;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_1b
.end method

.method public setTrustManager(Ljavax/net/ssl/TrustManager;)V
    .registers 7
    .parameter "tm"

    .prologue
    .line 96
    :try_start_0
    const-string v2, "TLS"

    invoke-static {v2}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    .line 98
    .local v1, sslContext:Ljavax/net/ssl/SSLContext;
    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljavax/net/ssl/TrustManager;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    new-instance v4, Ljava/security/SecureRandom;

    invoke-direct {v4}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v1, v2, v3, v4}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 100
    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    iput-object v2, p0, Lorg/columba/ristretto/ssl/RistrettoSSLSocketFactory;->socketFactory:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_1b
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_1b} :catch_1c
    .catch Ljava/security/KeyManagementException; {:try_start_0 .. :try_end_1b} :catch_23

    .line 106
    .end local v1           #sslContext:Ljavax/net/ssl/SSLContext;
    :goto_1b
    return-void

    .line 101
    :catch_1c
    move-exception v0

    .line 102
    .local v0, e:Ljava/security/NoSuchAlgorithmException;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, v2}, Ljava/security/NoSuchAlgorithmException;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_1b

    .line 103
    .end local v0           #e:Ljava/security/NoSuchAlgorithmException;
    :catch_23
    move-exception v0

    .line 104
    .local v0, e:Ljava/security/KeyManagementException;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, v2}, Ljava/security/KeyManagementException;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_1b
.end method

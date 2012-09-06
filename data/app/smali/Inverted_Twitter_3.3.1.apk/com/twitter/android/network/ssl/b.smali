.class public final Lcom/twitter/android/network/ssl/b;
.super Lorg/apache/http/conn/ssl/SSLSocketFactory;


# static fields
.field private static final a:Ljava/util/Set;


# instance fields
.field private final b:Ljavax/net/ssl/SSLSocketFactory;

.field private final c:Ljavax/net/ssl/SSLSocketFactory;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/twitter/android/network/ssl/b;->a:Ljava/util/Set;

    const-string v1, "api.twitter.com"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 10

    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lorg/apache/http/conn/ssl/SSLSocketFactory;-><init>(Ljava/security/KeyStore;)V

    invoke-static {p1}, Lcom/twitter/android/network/ssl/d;->a(Landroid/content/Context;)Lcom/twitter/android/network/ssl/d;

    move-result-object v0

    const-string v1, "TLS"

    invoke-static {v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    const-string v2, "TLS"

    invoke-static {v2}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljavax/net/ssl/TrustManager;

    const/4 v4, 0x0

    new-instance v5, Lcom/twitter/android/network/ssl/c;

    sget-object v6, Lcom/twitter/android/network/ssl/e;->b:[Ljava/lang/String;

    invoke-direct {v5, v0, v6}, Lcom/twitter/android/network/ssl/c;-><init>(Lcom/twitter/android/network/ssl/d;[Ljava/lang/String;)V

    aput-object v5, v3, v4

    const-string v4, "X509"

    invoke-static {v4}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v4

    iget-object v0, v0, Lcom/twitter/android/network/ssl/d;->a:Ljava/security/KeyStore;

    invoke-virtual {v4, v0}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    invoke-virtual {v4}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v0

    invoke-virtual {v1, v7, v3, v7}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    invoke-virtual {v2, v7, v0, v7}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/network/ssl/b;->b:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v2}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/network/ssl/b;->c:Ljavax/net/ssl/SSLSocketFactory;

    return-void
.end method


# virtual methods
.method public final connectSocket(Ljava/net/Socket;Ljava/lang/String;ILjava/net/InetAddress;ILorg/apache/http/params/HttpParams;)Ljava/net/Socket;
    .registers 11

    if-eqz p1, :cond_2d

    move-object v0, p1

    :goto_3
    check-cast v0, Ljavax/net/ssl/SSLSocket;

    if-nez p4, :cond_9

    if-lez p5, :cond_14

    :cond_9
    if-gez p5, :cond_c

    const/4 p5, 0x0

    :cond_c
    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-direct {v1, p4, p5}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLSocket;->bind(Ljava/net/SocketAddress;)V

    :cond_14
    invoke-static {p6}, Lorg/apache/http/params/HttpConnectionParams;->getConnectionTimeout(Lorg/apache/http/params/HttpParams;)I

    move-result v1

    invoke-static {p6}, Lorg/apache/http/params/HttpConnectionParams;->getSoTimeout(Lorg/apache/http/params/HttpParams;)I

    move-result v2

    new-instance v3, Ljava/net/InetSocketAddress;

    invoke-direct {v3, p2, p3}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v3, v1}, Ljavax/net/ssl/SSLSocket;->connect(Ljava/net/SocketAddress;I)V

    invoke-virtual {v0, v2}, Ljavax/net/ssl/SSLSocket;->setSoTimeout(I)V

    :try_start_27
    sget-object v1, Lorg/apache/http/conn/ssl/SSLSocketFactory;->STRICT_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-interface {v1, p2, v0}, Lorg/apache/http/conn/ssl/X509HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSocket;)V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_2c} :catch_32

    return-object v0

    :cond_2d
    invoke-virtual {p0}, Lcom/twitter/android/network/ssl/b;->createSocket()Ljava/net/Socket;

    move-result-object v0

    goto :goto_3

    :catch_32
    move-exception v1

    :try_start_33
    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->close()V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_36} :catch_37

    :goto_36
    throw v1

    :catch_37
    move-exception v0

    goto :goto_36
.end method

.method public final createSocket()Ljava/net/Socket;
    .registers 2

    iget-object v0, p0, Lcom/twitter/android/network/ssl/b;->c:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public final createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    .registers 7

    sget-object v0, Lcom/twitter/android/network/ssl/b;->a:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/twitter/android/network/ssl/b;->b:Ljavax/net/ssl/SSLSocketFactory;

    :goto_a
    const/4 v1, -0x1

    if-ne p3, v1, :cond_f

    const/16 p3, 0x1bb

    :cond_f
    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    sget-object v1, Lorg/apache/http/conn/ssl/SSLSocketFactory;->STRICT_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-interface {v1, p2, v0}, Lorg/apache/http/conn/ssl/X509HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSocket;)V

    return-object v0

    :cond_1b
    iget-object v0, p0, Lcom/twitter/android/network/ssl/b;->c:Ljavax/net/ssl/SSLSocketFactory;

    goto :goto_a
.end method

.method public final getHostnameVerifier()Lorg/apache/http/conn/ssl/X509HostnameVerifier;
    .registers 2

    sget-object v0, Lorg/apache/http/conn/ssl/SSLSocketFactory;->STRICT_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    return-object v0
.end method

.method public final setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V
    .registers 4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Only strict hostname verification (default)  is supported!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

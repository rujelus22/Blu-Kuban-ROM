.class public Lcom/android/emailcommon/utility/SSLSocketFactory;
.super Ljava/lang/Object;
.source "SSLSocketFactory.java"

# interfaces
.implements Lorg/apache/http/conn/scheme/LayeredSocketFactory;


# static fields
.field public static final ALLOW_ALL_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

.field public static final BROWSER_COMPATIBLE_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

.field private static final DEFAULT_FACTORY:Lcom/android/emailcommon/utility/SSLSocketFactory;

.field public static final STRICT_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;


# instance fields
.field private hostnameVerifier:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

.field private final nameResolver:Lorg/apache/http/conn/scheme/HostNameResolver;

.field private final socketfactory:Ljavax/net/ssl/SSLSocketFactory;

.field private final sslcontext:Ljavax/net/ssl/SSLContext;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 172
    new-instance v0, Lorg/apache/http/conn/ssl/AllowAllHostnameVerifier;

    invoke-direct {v0}, Lorg/apache/http/conn/ssl/AllowAllHostnameVerifier;-><init>()V

    sput-object v0, Lcom/android/emailcommon/utility/SSLSocketFactory;->ALLOW_ALL_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    .line 174
    new-instance v0, Lorg/apache/http/conn/ssl/BrowserCompatHostnameVerifier;

    invoke-direct {v0}, Lorg/apache/http/conn/ssl/BrowserCompatHostnameVerifier;-><init>()V

    sput-object v0, Lcom/android/emailcommon/utility/SSLSocketFactory;->BROWSER_COMPATIBLE_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    .line 176
    new-instance v0, Lorg/apache/http/conn/ssl/StrictHostnameVerifier;

    invoke-direct {v0}, Lorg/apache/http/conn/ssl/StrictHostnameVerifier;-><init>()V

    sput-object v0, Lcom/android/emailcommon/utility/SSLSocketFactory;->STRICT_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    .line 181
    new-instance v0, Lcom/android/emailcommon/utility/SSLSocketFactory;

    invoke-direct {v0}, Lcom/android/emailcommon/utility/SSLSocketFactory;-><init>()V

    sput-object v0, Lcom/android/emailcommon/utility/SSLSocketFactory;->DEFAULT_FACTORY:Lcom/android/emailcommon/utility/SSLSocketFactory;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 256
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 198
    sget-object v0, Lcom/android/emailcommon/utility/SSLSocketFactory;->BROWSER_COMPATIBLE_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    iput-object v0, p0, Lcom/android/emailcommon/utility/SSLSocketFactory;->hostnameVerifier:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    .line 257
    iput-object v1, p0, Lcom/android/emailcommon/utility/SSLSocketFactory;->sslcontext:Ljavax/net/ssl/SSLContext;

    .line 258
    invoke-static {}, Ljavax/net/ssl/HttpsURLConnection;->getDefaultSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/utility/SSLSocketFactory;->socketfactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 259
    iput-object v1, p0, Lcom/android/emailcommon/utility/SSLSocketFactory;->nameResolver:Lorg/apache/http/conn/scheme/HostNameResolver;

    .line 260
    return-void
.end method

.method public static getSocketFactory()Lcom/android/emailcommon/utility/SSLSocketFactory;
    .registers 1

    .prologue
    .line 189
    sget-object v0, Lcom/android/emailcommon/utility/SSLSocketFactory;->DEFAULT_FACTORY:Lcom/android/emailcommon/utility/SSLSocketFactory;

    return-object v0
.end method


# virtual methods
.method public connectSocket(Ljava/net/Socket;Ljava/lang/String;ILjava/net/InetAddress;ILorg/apache/http/params/HttpParams;)Ljava/net/Socket;
    .registers 15
    .parameter "sock"
    .parameter "host"
    .parameter "port"
    .parameter "localAddress"
    .parameter "localPort"
    .parameter "params"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 296
    if-nez p2, :cond_a

    .line 297
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Target host may not be null."

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 299
    :cond_a
    if-nez p6, :cond_14

    .line 300
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Parameters may not be null."

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 303
    :cond_14
    if-eqz p1, :cond_4b

    move-object v5, p1

    :goto_17
    check-cast v5, Ljavax/net/ssl/SSLSocket;

    .line 305
    .local v5, sslsock:Ljavax/net/ssl/SSLSocket;
    if-nez p4, :cond_1d

    if-lez p5, :cond_28

    .line 308
    :cond_1d
    if-gez p5, :cond_20

    .line 309
    const/4 p5, 0x0

    .line 311
    :cond_20
    new-instance v2, Ljava/net/InetSocketAddress;

    invoke-direct {v2, p4, p5}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 312
    .local v2, isa:Ljava/net/InetSocketAddress;
    invoke-virtual {v5, v2}, Ljavax/net/ssl/SSLSocket;->bind(Ljava/net/SocketAddress;)V

    .line 315
    .end local v2           #isa:Ljava/net/InetSocketAddress;
    :cond_28
    invoke-static {p6}, Lorg/apache/http/params/HttpConnectionParams;->getConnectionTimeout(Lorg/apache/http/params/HttpParams;)I

    move-result v0

    .line 316
    .local v0, connTimeout:I
    invoke-static {p6}, Lorg/apache/http/params/HttpConnectionParams;->getSoTimeout(Lorg/apache/http/params/HttpParams;)I

    move-result v4

    .line 319
    .local v4, soTimeout:I
    iget-object v6, p0, Lcom/android/emailcommon/utility/SSLSocketFactory;->nameResolver:Lorg/apache/http/conn/scheme/HostNameResolver;

    if-eqz v6, :cond_50

    .line 320
    new-instance v3, Ljava/net/InetSocketAddress;

    iget-object v6, p0, Lcom/android/emailcommon/utility/SSLSocketFactory;->nameResolver:Lorg/apache/http/conn/scheme/HostNameResolver;

    invoke-interface {v6, p2}, Lorg/apache/http/conn/scheme/HostNameResolver;->resolve(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v6

    invoke-direct {v3, v6, p3}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 325
    .local v3, remoteAddress:Ljava/net/InetSocketAddress;
    :goto_3f
    invoke-virtual {v5, v3, v0}, Ljavax/net/ssl/SSLSocket;->connect(Ljava/net/SocketAddress;I)V

    .line 327
    invoke-virtual {v5, v4}, Ljavax/net/ssl/SSLSocket;->setSoTimeout(I)V

    .line 329
    :try_start_45
    iget-object v6, p0, Lcom/android/emailcommon/utility/SSLSocketFactory;->hostnameVerifier:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-interface {v6, p2, v5}, Lorg/apache/http/conn/ssl/X509HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSocket;)V
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_4a} :catch_56

    .line 340
    return-object v5

    .line 303
    .end local v0           #connTimeout:I
    .end local v3           #remoteAddress:Ljava/net/InetSocketAddress;
    .end local v4           #soTimeout:I
    .end local v5           #sslsock:Ljavax/net/ssl/SSLSocket;
    :cond_4b
    invoke-virtual {p0}, Lcom/android/emailcommon/utility/SSLSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v5

    goto :goto_17

    .line 322
    .restart local v0       #connTimeout:I
    .restart local v4       #soTimeout:I
    .restart local v5       #sslsock:Ljavax/net/ssl/SSLSocket;
    :cond_50
    new-instance v3, Ljava/net/InetSocketAddress;

    invoke-direct {v3, p2, p3}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .restart local v3       #remoteAddress:Ljava/net/InetSocketAddress;
    goto :goto_3f

    .line 331
    :catch_56
    move-exception v1

    .line 334
    .local v1, iox:Ljava/io/IOException;
    :try_start_57
    invoke-virtual {v5}, Ljavax/net/ssl/SSLSocket;->close()V
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_5a} :catch_5b

    .line 337
    :goto_5a
    throw v1

    .line 335
    :catch_5b
    move-exception v6

    goto :goto_5a
.end method

.method public createSocket()Ljava/net/Socket;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 288
    iget-object v0, p0, Lcom/android/emailcommon/utility/SSLSocketFactory;->socketfactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    return-object v0
.end method

.method public createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    .registers 8
    .parameter "socket"
    .parameter "host"
    .parameter "port"
    .parameter "autoClose"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 374
    iget-object v2, p0, Lcom/android/emailcommon/utility/SSLSocketFactory;->socketfactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v2, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v1

    check-cast v1, Ljavax/net/ssl/SSLSocket;

    .line 377
    .local v1, sslSocket:Ljavax/net/ssl/SSLSocket;
    :try_start_8
    iget-object v2, p0, Lcom/android/emailcommon/utility/SSLSocketFactory;->hostnameVerifier:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-interface {v2, p2, v1}, Lorg/apache/http/conn/ssl/X509HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSocket;)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_d} :catch_e

    .line 389
    return-object v1

    .line 379
    :catch_e
    move-exception v0

    .line 382
    .local v0, iox:Ljava/io/IOException;
    :try_start_f
    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->close()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_12} :catch_13

    .line 385
    :goto_12
    throw v0

    .line 383
    :catch_13
    move-exception v2

    goto :goto_12
.end method

.method public isSecure(Ljava/net/Socket;)Z
    .registers 4
    .parameter "sock"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 355
    if-nez p1, :cond_a

    .line 356
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Socket may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 359
    :cond_a
    instance-of v0, p1, Ljavax/net/ssl/SSLSocket;

    if-nez v0, :cond_16

    .line 360
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Socket not created by this factory."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 363
    :cond_16
    invoke-virtual {p1}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 364
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Socket is closed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 367
    :cond_24
    const/4 v0, 0x1

    return v0
.end method

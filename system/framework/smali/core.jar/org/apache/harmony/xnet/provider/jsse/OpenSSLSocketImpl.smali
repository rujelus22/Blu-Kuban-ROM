.class public Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;
.super Ljavax/net/ssl/SSLSocket;
.source "OpenSSLSocketImpl.java"

# interfaces
.implements Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto$SSLHandshakeCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl$SSLOutputStream;,
        Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl$SSLInputStream;
    }
.end annotation


# instance fields
.field private autoClose:Z

.field private enabledCipherSuites:[Ljava/lang/String;

.field private enabledCompressionMethods:[Ljava/lang/String;

.field private enabledProtocols:[Ljava/lang/String;

.field private final guard:Ldalvik/system/CloseGuard;

.field private handshakeCompleted:Z

.field private final handshakeLock:Ljava/lang/Object;

.field private handshakeStarted:Z

.field private handshakeTimeoutMilliseconds:I

.field private hostname:Ljava/lang/String;

.field private is:Ljava/io/InputStream;

.field private listeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljavax/net/ssl/HandshakeCompletedListener;",
            ">;"
        }
    .end annotation
.end field

.field private os:Ljava/io/OutputStream;

.field private final readLock:Ljava/lang/Object;

.field private final socket:Ljava/net/Socket;

.field private sslNativePointer:I

.field private sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

.field private sslSession:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;

.field private timeoutMilliseconds:I

.field private useSessionTickets:Z

.field private wrappedHost:Ljava/lang/String;

.field private wrappedPort:I

.field private final writeLock:Ljava/lang/Object;


# direct methods
.method protected constructor <init>(Ljava/lang/String;ILjava/net/InetAddress;ILorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;)V
    .registers 8
    .parameter "host"
    .parameter "port"
    .parameter "clientAddress"
    .parameter "clientPort"
    .parameter "sslParameters"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 138
    invoke-direct {p0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocket;-><init>(Ljava/lang/String;ILjava/net/InetAddress;I)V

    .line 70
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeLock:Ljava/lang/Object;

    .line 71
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->readLock:Ljava/lang/Object;

    .line 72
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->writeLock:Ljava/lang/Object;

    .line 82
    iput-boolean v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeStarted:Z

    .line 83
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->guard:Ldalvik/system/CloseGuard;

    .line 91
    iput-boolean v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeCompleted:Z

    .line 101
    iput v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->timeoutMilliseconds:I

    .line 103
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeTimeoutMilliseconds:I

    .line 139
    iput-object p0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->socket:Ljava/net/Socket;

    .line 140
    invoke-direct {p0, p5}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->init(Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;)V

    .line 141
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;ILorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;)V
    .registers 6
    .parameter "host"
    .parameter "port"
    .parameter "sslParameters"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 122
    invoke-direct {p0, p1, p2}, Ljavax/net/ssl/SSLSocket;-><init>(Ljava/lang/String;I)V

    .line 70
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeLock:Ljava/lang/Object;

    .line 71
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->readLock:Ljava/lang/Object;

    .line 72
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->writeLock:Ljava/lang/Object;

    .line 82
    iput-boolean v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeStarted:Z

    .line 83
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->guard:Ldalvik/system/CloseGuard;

    .line 91
    iput-boolean v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeCompleted:Z

    .line 101
    iput v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->timeoutMilliseconds:I

    .line 103
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeTimeoutMilliseconds:I

    .line 123
    iput-object p0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->socket:Ljava/net/Socket;

    .line 124
    invoke-direct {p0, p3}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->init(Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;)V

    .line 125
    return-void
.end method

.method protected constructor <init>(Ljava/net/InetAddress;ILjava/net/InetAddress;ILorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;)V
    .registers 8
    .parameter "address"
    .parameter "port"
    .parameter "clientAddress"
    .parameter "clientPort"
    .parameter "sslParameters"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 146
    invoke-direct {p0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocket;-><init>(Ljava/net/InetAddress;ILjava/net/InetAddress;I)V

    .line 70
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeLock:Ljava/lang/Object;

    .line 71
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->readLock:Ljava/lang/Object;

    .line 72
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->writeLock:Ljava/lang/Object;

    .line 82
    iput-boolean v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeStarted:Z

    .line 83
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->guard:Ldalvik/system/CloseGuard;

    .line 91
    iput-boolean v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeCompleted:Z

    .line 101
    iput v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->timeoutMilliseconds:I

    .line 103
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeTimeoutMilliseconds:I

    .line 147
    iput-object p0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->socket:Ljava/net/Socket;

    .line 148
    invoke-direct {p0, p5}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->init(Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;)V

    .line 149
    return-void
.end method

.method protected constructor <init>(Ljava/net/InetAddress;ILorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;)V
    .registers 6
    .parameter "address"
    .parameter "port"
    .parameter "sslParameters"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 129
    invoke-direct {p0, p1, p2}, Ljavax/net/ssl/SSLSocket;-><init>(Ljava/net/InetAddress;I)V

    .line 70
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeLock:Ljava/lang/Object;

    .line 71
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->readLock:Ljava/lang/Object;

    .line 72
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->writeLock:Ljava/lang/Object;

    .line 82
    iput-boolean v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeStarted:Z

    .line 83
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->guard:Ldalvik/system/CloseGuard;

    .line 91
    iput-boolean v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeCompleted:Z

    .line 101
    iput v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->timeoutMilliseconds:I

    .line 103
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeTimeoutMilliseconds:I

    .line 130
    iput-object p0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->socket:Ljava/net/Socket;

    .line 131
    invoke-direct {p0, p3}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->init(Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;)V

    .line 132
    return-void
.end method

.method protected constructor <init>(Ljava/net/Socket;Ljava/lang/String;IZLorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;)V
    .registers 8
    .parameter "socket"
    .parameter "host"
    .parameter "port"
    .parameter "autoClose"
    .parameter "sslParameters"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 156
    invoke-direct {p0}, Ljavax/net/ssl/SSLSocket;-><init>()V

    .line 70
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeLock:Ljava/lang/Object;

    .line 71
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->readLock:Ljava/lang/Object;

    .line 72
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->writeLock:Ljava/lang/Object;

    .line 82
    iput-boolean v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeStarted:Z

    .line 83
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->guard:Ldalvik/system/CloseGuard;

    .line 91
    iput-boolean v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeCompleted:Z

    .line 101
    iput v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->timeoutMilliseconds:I

    .line 103
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeTimeoutMilliseconds:I

    .line 157
    iput-object p1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->socket:Ljava/net/Socket;

    .line 158
    iput-object p2, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->wrappedHost:Ljava/lang/String;

    .line 159
    iput p3, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->wrappedPort:I

    .line 160
    iput-boolean p4, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->autoClose:Z

    .line 161
    invoke-direct {p0, p5}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->init(Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;)V

    .line 166
    return-void
.end method

.method protected constructor <init>(Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;)V
    .registers 4
    .parameter "sslParameters"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 107
    invoke-direct {p0}, Ljavax/net/ssl/SSLSocket;-><init>()V

    .line 70
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeLock:Ljava/lang/Object;

    .line 71
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->readLock:Ljava/lang/Object;

    .line 72
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->writeLock:Ljava/lang/Object;

    .line 82
    iput-boolean v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeStarted:Z

    .line 83
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->guard:Ldalvik/system/CloseGuard;

    .line 91
    iput-boolean v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeCompleted:Z

    .line 101
    iput v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->timeoutMilliseconds:I

    .line 103
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeTimeoutMilliseconds:I

    .line 108
    iput-object p0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->socket:Ljava/net/Socket;

    .line 109
    invoke-direct {p0, p1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->init(Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;)V

    .line 110
    return-void
.end method

.method protected constructor <init>(Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .registers 7
    .parameter "sslParameters"
    .parameter "enabledProtocols"
    .parameter "enabledCipherSuites"
    .parameter "enabledCompressionMethods"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 115
    invoke-direct {p0}, Ljavax/net/ssl/SSLSocket;-><init>()V

    .line 70
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeLock:Ljava/lang/Object;

    .line 71
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->readLock:Ljava/lang/Object;

    .line 72
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->writeLock:Ljava/lang/Object;

    .line 82
    iput-boolean v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeStarted:Z

    .line 83
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->guard:Ldalvik/system/CloseGuard;

    .line 91
    iput-boolean v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeCompleted:Z

    .line 101
    iput v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->timeoutMilliseconds:I

    .line 103
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeTimeoutMilliseconds:I

    .line 116
    iput-object p0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->socket:Ljava/net/Socket;

    .line 117
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->init(Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 118
    return-void
.end method

.method static synthetic access$000(Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->readLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;)V
    .registers 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 63
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->checkOpen()V

    return-void
.end method

.method static synthetic access$200(Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 63
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslNativePointer:I

    return v0
.end method

.method static synthetic access$300(Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;)Ljava/net/Socket;
    .registers 2
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->socket:Ljava/net/Socket;

    return-object v0
.end method

.method static synthetic access$400(Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->writeLock:Ljava/lang/Object;

    return-object v0
.end method

.method private checkOpen()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 261
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 262
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 264
    :cond_e
    return-void
.end method

.method private static createCertChain([[B)[Ljava/security/cert/X509Certificate;
    .registers 7
    .parameter "certificatesBytes"

    .prologue
    const/4 v3, 0x0

    .line 474
    if-nez p0, :cond_5

    move-object v0, v3

    .line 485
    :cond_4
    :goto_4
    return-object v0

    .line 477
    :cond_5
    array-length v4, p0

    new-array v0, v4, [Ljava/security/cert/X509Certificate;

    .line 478
    .local v0, certificates:[Ljava/security/cert/X509Certificate;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_9
    array-length v4, p0

    if-ge v2, v4, :cond_4

    .line 480
    :try_start_c
    new-instance v4, Lorg/apache/harmony/security/provider/cert/X509CertImpl;

    aget-object v5, p0, v2

    invoke-direct {v4, v5}, Lorg/apache/harmony/security/provider/cert/X509CertImpl;-><init>([B)V

    aput-object v4, v0, v2
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_15} :catch_18

    .line 478
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 481
    :catch_18
    move-exception v1

    .local v1, e:Ljava/io/IOException;
    move-object v0, v3

    .line 482
    goto :goto_4
.end method

.method private free()V
    .registers 2

    .prologue
    .line 957
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslNativePointer:I

    if-nez v0, :cond_5

    .line 963
    :goto_4
    return-void

    .line 960
    :cond_5
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslNativePointer:I

    invoke-static {v0}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->SSL_free(I)V

    .line 961
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslNativePointer:I

    .line 962
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    goto :goto_4
.end method

.method private getCachedClientSession(Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;)Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;
    .registers 18
    .parameter "sessionContext"

    .prologue
    .line 197
    invoke-super/range {p0 .. p0}, Ljavax/net/ssl/SSLSocket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v14

    if-eqz v14, :cond_1a

    invoke-super/range {p0 .. p0}, Ljavax/net/ssl/SSLSocket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v14

    invoke-virtual {v14}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_1a

    invoke-super/range {p0 .. p0}, Ljavax/net/ssl/SSLSocket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v14

    invoke-virtual {v14}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v14

    if-nez v14, :cond_1c

    .line 200
    :cond_1a
    const/4 v13, 0x0

    .line 245
    :cond_1b
    :goto_1b
    return-object v13

    .line 202
    :cond_1c
    invoke-super/range {p0 .. p0}, Ljavax/net/ssl/SSLSocket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v14

    invoke-virtual {v14}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v14

    invoke-super/range {p0 .. p0}, Ljavax/net/ssl/SSLSocket;->getPort()I

    move-result v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;->getSession(Ljava/lang/String;I)Ljavax/net/ssl/SSLSession;

    move-result-object v13

    check-cast v13, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;

    .line 205
    .local v13, session:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;
    if-nez v13, :cond_34

    .line 206
    const/4 v13, 0x0

    goto :goto_1b

    .line 209
    :cond_34
    invoke-virtual {v13}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->getProtocol()Ljava/lang/String;

    move-result-object v11

    .line 210
    .local v11, protocol:Ljava/lang/String;
    const/4 v12, 0x0

    .line 211
    .local v12, protocolFound:Z
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->enabledProtocols:[Ljava/lang/String;

    .local v1, arr$:[Ljava/lang/String;
    array-length v10, v1

    .local v10, len$:I
    const/4 v9, 0x0

    .local v9, i$:I
    :goto_3f
    if-ge v9, v10, :cond_4a

    aget-object v8, v1, v9

    .line 212
    .local v8, enabledProtocol:Ljava/lang/String;
    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4e

    .line 213
    const/4 v12, 0x1

    .line 217
    .end local v8           #enabledProtocol:Ljava/lang/String;
    :cond_4a
    if-nez v12, :cond_51

    .line 218
    const/4 v13, 0x0

    goto :goto_1b

    .line 211
    .restart local v8       #enabledProtocol:Ljava/lang/String;
    :cond_4e
    add-int/lit8 v9, v9, 0x1

    goto :goto_3f

    .line 221
    .end local v8           #enabledProtocol:Ljava/lang/String;
    :cond_51
    invoke-virtual {v13}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->getCipherSuite()Ljava/lang/String;

    move-result-object v2

    .line 222
    .local v2, cipherSuite:Ljava/lang/String;
    const/4 v3, 0x0

    .line 223
    .local v3, cipherSuiteFound:Z
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->enabledCipherSuites:[Ljava/lang/String;

    array-length v10, v1

    const/4 v9, 0x0

    :goto_5c
    if-ge v9, v10, :cond_67

    aget-object v6, v1, v9

    .line 224
    .local v6, enabledCipherSuite:Ljava/lang/String;
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6b

    .line 225
    const/4 v3, 0x1

    .line 229
    .end local v6           #enabledCipherSuite:Ljava/lang/String;
    :cond_67
    if-nez v3, :cond_6e

    .line 230
    const/4 v13, 0x0

    goto :goto_1b

    .line 223
    .restart local v6       #enabledCipherSuite:Ljava/lang/String;
    :cond_6b
    add-int/lit8 v9, v9, 0x1

    goto :goto_5c

    .line 233
    .end local v6           #enabledCipherSuite:Ljava/lang/String;
    :cond_6e
    invoke-virtual {v13}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->getCompressionMethod()Ljava/lang/String;

    move-result-object v4

    .line 234
    .local v4, compressionMethod:Ljava/lang/String;
    const/4 v5, 0x0

    .line 235
    .local v5, compressionMethodFound:Z
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->enabledCompressionMethods:[Ljava/lang/String;

    array-length v10, v1

    const/4 v9, 0x0

    :goto_79
    if-ge v9, v10, :cond_84

    aget-object v7, v1, v9

    .line 236
    .local v7, enabledCompressionMethod:Ljava/lang/String;
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_88

    .line 237
    const/4 v5, 0x1

    .line 241
    .end local v7           #enabledCompressionMethod:Ljava/lang/String;
    :cond_84
    if-nez v5, :cond_1b

    .line 242
    const/4 v13, 0x0

    goto :goto_1b

    .line 235
    .restart local v7       #enabledCompressionMethod:Ljava/lang/String;
    :cond_88
    add-int/lit8 v9, v9, 0x1

    goto :goto_79
.end method

.method private init(Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;)V
    .registers 5
    .parameter "sslParameters"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 173
    invoke-static {}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->getSupportedProtocols()[Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->getDefaultCipherSuites()[Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->getDefaultCompressionMethods()[Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->init(Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 177
    return-void
.end method

.method private init(Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .registers 5
    .parameter "sslParameters"
    .parameter "enabledProtocols"
    .parameter "enabledCipherSuites"
    .parameter "enabledCompressionMethods"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 187
    iput-object p1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    .line 188
    iput-object p2, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->enabledProtocols:[Ljava/lang/String;

    .line 189
    iput-object p3, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->enabledCipherSuites:[Ljava/lang/String;

    .line 190
    iput-object p4, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->enabledCompressionMethods:[Ljava/lang/String;

    .line 191
    return-void
.end method

.method private notifyHandshakeCompletedListeners()V
    .registers 7

    .prologue
    .line 560
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->listeners:Ljava/util/ArrayList;

    if-eqz v5, :cond_36

    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_36

    .line 562
    new-instance v1, Ljavax/net/ssl/HandshakeCompletedEvent;

    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslSession:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;

    invoke-direct {v1, p0, v5}, Ljavax/net/ssl/HandshakeCompletedEvent;-><init>(Ljavax/net/ssl/SSLSocket;Ljavax/net/ssl/SSLSession;)V

    .line 564
    .local v1, event:Ljavax/net/ssl/HandshakeCompletedEvent;
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_36

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/net/ssl/HandshakeCompletedListener;

    .line 566
    .local v3, listener:Ljavax/net/ssl/HandshakeCompletedListener;
    :try_start_25
    invoke-interface {v3, v1}, Ljavax/net/ssl/HandshakeCompletedListener;->handshakeCompleted(Ljavax/net/ssl/HandshakeCompletedEvent;)V
    :try_end_28
    .catch Ljava/lang/RuntimeException; {:try_start_25 .. :try_end_28} :catch_29

    goto :goto_19

    .line 567
    :catch_29
    move-exception v0

    .line 573
    .local v0, e:Ljava/lang/RuntimeException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    .line 574
    .local v4, thread:Ljava/lang/Thread;
    invoke-virtual {v4}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v5

    invoke-interface {v5, v4, v0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_19

    .line 578
    .end local v0           #e:Ljava/lang/RuntimeException;
    .end local v1           #event:Ljavax/net/ssl/HandshakeCompletedEvent;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #listener:Ljavax/net/ssl/HandshakeCompletedListener;
    .end local v4           #thread:Ljava/lang/Thread;
    :cond_36
    return-void
.end method

.method private setCertificate(Ljava/lang/String;)V
    .registers 7
    .parameter "alias"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;,
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    .line 489
    if-nez p1, :cond_3

    .line 509
    :cond_2
    :goto_2
    return-void

    .line 492
    :cond_3
    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v4}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getKeyManager()Ljavax/net/ssl/X509KeyManager;

    move-result-object v4

    invoke-interface {v4, p1}, Ljavax/net/ssl/X509KeyManager;->getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;

    move-result-object v2

    .line 493
    .local v2, privateKey:Ljava/security/PrivateKey;
    if-eqz v2, :cond_2

    .line 496
    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v4}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getKeyManager()Ljavax/net/ssl/X509KeyManager;

    move-result-object v4

    invoke-interface {v4, p1}, Ljavax/net/ssl/X509KeyManager;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/X509Certificate;

    move-result-object v1

    .line 497
    .local v1, certificates:[Ljava/security/cert/X509Certificate;
    if-eqz v1, :cond_2

    .line 501
    invoke-interface {v2}, Ljava/security/PrivateKey;->getEncoded()[B

    move-result-object v3

    .line 502
    .local v3, privateKeyBytes:[B
    invoke-static {v1}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->encodeCertificates([Ljava/security/cert/Certificate;)[[B

    move-result-object v0

    .line 503
    .local v0, certificateBytes:[[B
    iget v4, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslNativePointer:I

    invoke-static {v4, v3}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->SSL_use_PrivateKey(I[B)V

    .line 504
    iget v4, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslNativePointer:I

    invoke-static {v4, v0}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->SSL_use_certificate(I[[B)V

    .line 508
    iget v4, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslNativePointer:I

    invoke-static {v4}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->SSL_check_private_key(I)V

    goto :goto_2
.end method


# virtual methods
.method public addHandshakeCompletedListener(Ljavax/net/ssl/HandshakeCompletedListener;)V
    .registers 4
    .parameter "listener"

    .prologue
    .line 735
    if-nez p1, :cond_a

    .line 736
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Provided listener is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 738
    :cond_a
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->listeners:Ljava/util/ArrayList;

    if-nez v0, :cond_15

    .line 739
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->listeners:Ljava/util/ArrayList;

    .line 741
    :cond_15
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 742
    return-void
.end method

.method public clientCertificateRequested([B[[B)V
    .registers 8
    .parameter "keyTypeBytes"
    .parameter "asn1DerEncodedPrincipals"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;,
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    .line 515
    array-length v3, p1

    new-array v2, v3, [Ljava/lang/String;

    .line 516
    .local v2, keyTypes:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_4
    array-length v3, p1

    if-ge v0, v3, :cond_12

    .line 517
    aget-byte v3, p1, v0

    invoke-static {v3}, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->getClientKeyType(B)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 516
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 521
    :cond_12
    if-nez p2, :cond_23

    .line 522
    const/4 v1, 0x0

    .line 529
    .local v1, issuers:[Ljavax/security/auth/x500/X500Principal;
    :cond_15
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v3}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getKeyManager()Ljavax/net/ssl/X509KeyManager;

    move-result-object v3

    invoke-interface {v3, v2, v1, p0}, Ljavax/net/ssl/X509KeyManager;->chooseClientAlias([Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->setCertificate(Ljava/lang/String;)V

    .line 530
    return-void

    .line 524
    .end local v1           #issuers:[Ljavax/security/auth/x500/X500Principal;
    :cond_23
    array-length v3, p2

    new-array v1, v3, [Ljavax/security/auth/x500/X500Principal;

    .line 525
    .restart local v1       #issuers:[Ljavax/security/auth/x500/X500Principal;
    const/4 v0, 0x0

    :goto_27
    array-length v3, p2

    if-ge v0, v3, :cond_15

    .line 526
    new-instance v3, Ljavax/security/auth/x500/X500Principal;

    aget-object v4, p2, v0

    invoke-direct {v3, v4}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V

    aput-object v3, v1, v0

    .line 525
    add-int/lit8 v0, v0, 0x1

    goto :goto_27
.end method

.method public close()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 894
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 895
    :try_start_3
    iget-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeStarted:Z

    if-nez v0, :cond_36

    .line 897
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeStarted:Z

    .line 899
    monitor-enter p0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_33

    .line 900
    :try_start_b
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->free()V

    .line 902
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->socket:Ljava/net/Socket;

    if-eq v0, p0, :cond_26

    .line 903
    iget-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->autoClose:Z

    if-eqz v0, :cond_23

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_23

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 907
    :cond_23
    :goto_23
    monitor-exit p0
    :try_end_24
    .catchall {:try_start_b .. :try_end_24} :catchall_30

    .line 909
    :try_start_24
    monitor-exit v1
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_33

    .line 954
    :goto_25
    return-void

    .line 905
    :cond_26
    :try_start_26
    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_23

    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->close()V

    goto :goto_23

    .line 907
    :catchall_30
    move-exception v0

    monitor-exit p0
    :try_end_32
    .catchall {:try_start_26 .. :try_end_32} :catchall_30

    :try_start_32
    throw v0

    .line 911
    :catchall_33
    move-exception v0

    monitor-exit v1
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_33

    throw v0

    :cond_36
    :try_start_36
    monitor-exit v1
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_33

    .line 913
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslNativePointer:I

    invoke-static {v0}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->SSL_interrupt(I)V

    .line 915
    monitor-enter p0

    .line 916
    :try_start_3d
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->writeLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_40
    .catchall {:try_start_3d .. :try_end_40} :catchall_75

    .line 917
    :try_start_40
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->readLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_43
    .catchall {:try_start_40 .. :try_end_43} :catchall_85

    .line 921
    :try_start_43
    iget-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeStarted:Z

    if-eqz v0, :cond_59

    .line 922
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onNetwork()V

    .line 923
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslNativePointer:I

    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->socket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getFileDescriptor$()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-static {v0, v3, p0}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->SSL_shutdown(ILjava/io/FileDescriptor;Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto$SSLHandshakeCallbacks;)V
    :try_end_59
    .catchall {:try_start_43 .. :try_end_59} :catchall_ac
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_59} :catch_88

    .line 939
    :cond_59
    :try_start_59
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->free()V

    .line 941
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->socket:Ljava/net/Socket;

    if-eq v0, p0, :cond_78

    .line 942
    iget-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->autoClose:Z

    if-eqz v0, :cond_71

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_71

    .line 943
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 951
    :cond_71
    :goto_71
    monitor-exit v2
    :try_end_72
    .catchall {:try_start_59 .. :try_end_72} :catchall_82

    .line 952
    :try_start_72
    monitor-exit v1
    :try_end_73
    .catchall {:try_start_72 .. :try_end_73} :catchall_85

    .line 953
    :try_start_73
    monitor-exit p0

    goto :goto_25

    :catchall_75
    move-exception v0

    monitor-exit p0
    :try_end_77
    .catchall {:try_start_73 .. :try_end_77} :catchall_75

    throw v0

    .line 946
    :cond_78
    :try_start_78
    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_71

    .line 947
    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->close()V

    goto :goto_71

    .line 951
    :catchall_82
    move-exception v0

    monitor-exit v2
    :try_end_84
    .catchall {:try_start_78 .. :try_end_84} :catchall_82

    :try_start_84
    throw v0

    .line 952
    :catchall_85
    move-exception v0

    monitor-exit v1
    :try_end_87
    .catchall {:try_start_84 .. :try_end_87} :catchall_85

    :try_start_87
    throw v0
    :try_end_88
    .catchall {:try_start_87 .. :try_end_88} :catchall_75

    .line 926
    :catch_88
    move-exception v0

    .line 939
    :try_start_89
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->free()V

    .line 941
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->socket:Ljava/net/Socket;

    if-eq v0, p0, :cond_a2

    .line 942
    iget-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->autoClose:Z

    if-eqz v0, :cond_71

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_71

    .line 943
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    goto :goto_71

    .line 946
    :cond_a2
    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_71

    .line 947
    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->close()V

    goto :goto_71

    .line 939
    :catchall_ac
    move-exception v0

    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->free()V

    .line 941
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->socket:Ljava/net/Socket;

    if-eq v3, p0, :cond_c6

    .line 942
    iget-boolean v3, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->autoClose:Z

    if-eqz v3, :cond_c5

    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->socket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->isClosed()Z

    move-result v3

    if-nez v3, :cond_c5

    .line 943
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->socket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->close()V

    .line 947
    :cond_c5
    :goto_c5
    throw v0

    .line 946
    :cond_c6
    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->isClosed()Z

    move-result v3

    if-nez v3, :cond_c5

    .line 947
    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->close()V
    :try_end_cf
    .catchall {:try_start_89 .. :try_end_cf} :catchall_82

    goto :goto_c5
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 983
    :try_start_0
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->guard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_9

    .line 984
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 986
    :cond_9
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->free()V
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_10

    .line 988
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 990
    return-void

    .line 988
    :catchall_10
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getEnableSessionCreation()Z
    .registers 2

    .prologue
    .line 760
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getEnableSessionCreation()Z

    move-result v0

    return v0
.end method

.method public getEnabledCipherSuites()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 772
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->enabledCipherSuites:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getEnabledCompressionMethods()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 807
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->enabledCompressionMethods:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getEnabledProtocols()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 784
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->enabledProtocols:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getFileDescriptor$()Ljava/io/FileDescriptor;
    .registers 2

    .prologue
    .line 994
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->socket:Ljava/net/Socket;

    if-ne v0, p0, :cond_9

    .line 995
    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->getFileDescriptor$()Ljava/io/FileDescriptor;

    move-result-object v0

    .line 997
    :goto_8
    return-object v0

    :cond_9
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getFileDescriptor$()Ljava/io/FileDescriptor;

    move-result-object v0

    goto :goto_8
.end method

.method public getInputStream()Ljava/io/InputStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 611
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->checkOpen()V

    .line 612
    monitor-enter p0

    .line 613
    :try_start_4
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->is:Ljava/io/InputStream;

    if-nez v0, :cond_f

    .line 614
    new-instance v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl$SSLInputStream;

    invoke-direct {v0, p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl$SSLInputStream;-><init>(Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;)V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->is:Ljava/io/InputStream;

    .line 617
    :cond_f
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->is:Ljava/io/InputStream;

    monitor-exit p0

    return-object v0

    .line 618
    :catchall_13
    move-exception v0

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_4 .. :try_end_15} :catchall_13

    throw v0
.end method

.method public getNeedClientAuth()Z
    .registers 2

    .prologue
    .line 855
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getNeedClientAuth()Z

    move-result v0

    return v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 622
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->checkOpen()V

    .line 623
    monitor-enter p0

    .line 624
    :try_start_4
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->os:Ljava/io/OutputStream;

    if-nez v0, :cond_f

    .line 625
    new-instance v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl$SSLOutputStream;

    invoke-direct {v0, p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl$SSLOutputStream;-><init>(Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;)V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->os:Ljava/io/OutputStream;

    .line 628
    :cond_f
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->os:Ljava/io/OutputStream;

    monitor-exit p0

    return-object v0

    .line 629
    :catchall_13
    move-exception v0

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_4 .. :try_end_15} :catchall_13

    throw v0
.end method

.method public getSession()Ljavax/net/ssl/SSLSession;
    .registers 3

    .prologue
    .line 721
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslSession:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;

    if-nez v1, :cond_8

    .line 723
    const/4 v1, 0x1

    :try_start_5
    invoke-virtual {p0, v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->startHandshake(Z)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_8} :catch_b

    .line 730
    :cond_8
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslSession:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;

    :goto_a
    return-object v1

    .line 724
    :catch_b
    move-exception v0

    .line 727
    .local v0, e:Ljava/io/IOException;
    sget-object v1, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->NULL_SESSION:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    goto :goto_a
.end method

.method public getSoTimeout()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 880
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->timeoutMilliseconds:I

    return v0
.end method

.method public getSupportedCipherSuites()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 768
    invoke-static {}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedCompressionMethods()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 797
    invoke-static {}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->getSupportedCompressionMethods()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedProtocols()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 780
    invoke-static {}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->getSupportedProtocols()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUseClientMode()Z
    .registers 2

    .prologue
    .line 839
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getUseClientMode()Z

    move-result v0

    return v0
.end method

.method public getWantClientAuth()Z
    .registers 2

    .prologue
    .line 851
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getWantClientAuth()Z

    move-result v0

    return v0
.end method

.method public handshakeCompleted()V
    .registers 3

    .prologue
    .line 534
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeCompleted:Z

    .line 542
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslSession:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;

    if-nez v1, :cond_8

    .line 557
    :goto_7
    return-void

    .line 548
    :cond_8
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslSession:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;

    invoke-virtual {v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->resetId()V

    .line 549
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v1}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getUseClientMode()Z

    move-result v1

    if-eqz v1, :cond_24

    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v1}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getClientSessionContext()Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;

    move-result-object v0

    .line 553
    .local v0, sessionContext:Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;
    :goto_1b
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslSession:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;

    invoke-virtual {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;->putSession(Ljavax/net/ssl/SSLSession;)V

    .line 556
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->notifyHandshakeCompletedListeners()V

    goto :goto_7

    .line 549
    .end local v0           #sessionContext:Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;
    :cond_24
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v1}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getServerSessionContext()Lorg/apache/harmony/xnet/provider/jsse/ServerSessionContext;

    move-result-object v0

    goto :goto_1b
.end method

.method public removeHandshakeCompletedListener(Ljavax/net/ssl/HandshakeCompletedListener;)V
    .registers 4
    .parameter "listener"

    .prologue
    .line 746
    if-nez p1, :cond_a

    .line 747
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Provided listener is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 749
    :cond_a
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->listeners:Ljava/util/ArrayList;

    if-nez v0, :cond_16

    .line 750
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Provided listener is not registered"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 753
    :cond_16
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    .line 754
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Provided listener is not registered"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 757
    :cond_26
    return-void
.end method

.method public sendUrgentData(I)V
    .registers 4
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 867
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Method sendUrgentData() is not supported."

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setEnableSessionCreation(Z)V
    .registers 3
    .parameter "flag"

    .prologue
    .line 764
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->setEnableSessionCreation(Z)V

    .line 765
    return-void
.end method

.method public setEnabledCipherSuites([Ljava/lang/String;)V
    .registers 3
    .parameter "suites"

    .prologue
    .line 776
    invoke-static {p1}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->checkEnabledCipherSuites([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->enabledCipherSuites:[Ljava/lang/String;

    .line 777
    return-void
.end method

.method public setEnabledCompressionMethods([Ljava/lang/String;)V
    .registers 3
    .parameter "methods"

    .prologue
    .line 817
    invoke-static {p1}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->checkEnabledCompressionMethods([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->enabledCompressionMethods:[Ljava/lang/String;

    .line 818
    return-void
.end method

.method public setEnabledProtocols([Ljava/lang/String;)V
    .registers 3
    .parameter "protocols"

    .prologue
    .line 788
    invoke-static {p1}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->checkEnabledProtocols([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->enabledProtocols:[Ljava/lang/String;

    .line 789
    return-void
.end method

.method public setHandshakeTimeout(I)V
    .registers 2
    .parameter "timeoutMilliseconds"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 888
    iput p1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeTimeoutMilliseconds:I

    .line 889
    return-void
.end method

.method public setHostname(Ljava/lang/String;)V
    .registers 2
    .parameter "hostname"

    .prologue
    .line 835
    iput-object p1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->hostname:Ljava/lang/String;

    .line 836
    return-void
.end method

.method public setNeedClientAuth(Z)V
    .registers 3
    .parameter "need"

    .prologue
    .line 859
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->setNeedClientAuth(Z)V

    .line 860
    return-void
.end method

.method public setOOBInline(Z)V
    .registers 4
    .parameter "on"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 871
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Methods sendUrgentData, setOOBInline are not supported."

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSoTimeout(I)V
    .registers 2
    .parameter "timeoutMilliseconds"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 875
    invoke-super {p0, p1}, Ljavax/net/ssl/SSLSocket;->setSoTimeout(I)V

    .line 876
    iput p1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->timeoutMilliseconds:I

    .line 877
    return-void
.end method

.method public setUseClientMode(Z)V
    .registers 4
    .parameter "mode"

    .prologue
    .line 843
    iget-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeStarted:Z

    if-eqz v0, :cond_c

    .line 844
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Could not change the mode after the initial handshake has begun."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 847
    :cond_c
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->setUseClientMode(Z)V

    .line 848
    return-void
.end method

.method public setUseSessionTickets(Z)V
    .registers 2
    .parameter "useSessionTickets"

    .prologue
    .line 826
    iput-boolean p1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->useSessionTickets:Z

    .line 827
    return-void
.end method

.method public setWantClientAuth(Z)V
    .registers 3
    .parameter "want"

    .prologue
    .line 863
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->setWantClientAuth(Z)V

    .line 864
    return-void
.end method

.method public startHandshake()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 257
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->startHandshake(Z)V

    .line 258
    return-void
.end method

.method public declared-synchronized startHandshake(Z)V
    .registers 33
    .parameter "full"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 272
    monitor-enter p0

    :try_start_1
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_7f

    .line 273
    :try_start_6
    invoke-direct/range {p0 .. p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->checkOpen()V

    .line 274
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeStarted:Z

    if-nez v2, :cond_79

    .line 275
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeStarted:Z

    .line 279
    monitor-exit v6
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_7c

    .line 282
    const/16 v25, 0x400

    .line 283
    .local v25, seedLengthInBytes:I
    :try_start_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v2}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getSecureRandomMember()Ljava/security/SecureRandom;

    move-result-object v24

    .line 284
    .local v24, secureRandom:Ljava/security/SecureRandom;
    if-nez v24, :cond_82

    .line 285
    const-string v2, "/dev/urandom"

    const-wide/16 v6, 0x400

    invoke-static {v2, v6, v7}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->RAND_load_file(Ljava/lang/String;J)I

    .line 290
    :goto_28
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v2}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getUseClientMode()Z

    move-result v11

    .line 292
    .local v11, client:Z
    if-eqz v11, :cond_8e

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v2}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getClientSessionContext()Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;

    move-result-object v2

    iget v0, v2, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;->sslCtxNativePointer:I

    move/from16 v28, v0

    .line 296
    .local v28, sslCtxNativePointer:I
    :goto_3e
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslNativePointer:I
    :try_end_43
    .catchall {:try_start_17 .. :try_end_43} :catchall_7f

    .line 297
    const/16 v16, 0x1

    .line 299
    .local v16, exception:Z
    :try_start_45
    invoke-static/range {v28 .. v28}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->SSL_new(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslNativePointer:I

    .line 300
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->guard:Ldalvik/system/CloseGuard;

    const-string v6, "close"

    invoke-virtual {v2, v6}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 304
    if-nez v11, :cond_e9

    .line 305
    new-instance v21, Ljava/util/HashSet;

    invoke-direct/range {v21 .. v21}, Ljava/util/HashSet;-><init>()V

    .line 306
    .local v21, keyTypes:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->enabledCipherSuites:[Ljava/lang/String;

    .local v9, arr$:[Ljava/lang/String;
    array-length v0, v9

    move/from16 v22, v0

    .local v22, len$:I
    const/16 v17, 0x0

    .local v17, i$:I
    :goto_66
    move/from16 v0, v17

    move/from16 v1, v22

    if-ge v0, v1, :cond_bb

    aget-object v15, v9, v17

    .line 307
    .local v15, enabledCipherSuite:Ljava/lang/String;
    const-string v2, "TLS_EMPTY_RENEGOTIATION_INFO_SCSV"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_73
    .catchall {:try_start_45 .. :try_end_73} :catchall_b4
    .catch Ljavax/net/ssl/SSLProtocolException; {:try_start_45 .. :try_end_73} :catch_ad

    move-result v2

    if-eqz v2, :cond_9b

    .line 306
    :cond_76
    :goto_76
    add-int/lit8 v17, v17, 0x1

    goto :goto_66

    .line 277
    .end local v9           #arr$:[Ljava/lang/String;
    .end local v11           #client:Z
    .end local v15           #enabledCipherSuite:Ljava/lang/String;
    .end local v16           #exception:Z
    .end local v17           #i$:I
    .end local v21           #keyTypes:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v22           #len$:I
    .end local v24           #secureRandom:Ljava/security/SecureRandom;
    .end local v25           #seedLengthInBytes:I
    .end local v28           #sslCtxNativePointer:I
    :cond_79
    :try_start_79
    monitor-exit v6
    :try_end_7a
    .catchall {:try_start_79 .. :try_end_7a} :catchall_7c

    .line 467
    :cond_7a
    :goto_7a
    monitor-exit p0

    return-void

    .line 279
    :catchall_7c
    move-exception v2

    :try_start_7d
    monitor-exit v6
    :try_end_7e
    .catchall {:try_start_7d .. :try_end_7e} :catchall_7c

    :try_start_7e
    throw v2
    :try_end_7f
    .catchall {:try_start_7e .. :try_end_7f} :catchall_7f

    .line 272
    :catchall_7f
    move-exception v2

    monitor-exit p0

    throw v2

    .line 287
    .restart local v24       #secureRandom:Ljava/security/SecureRandom;
    .restart local v25       #seedLengthInBytes:I
    :cond_82
    const/16 v2, 0x400

    :try_start_84
    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/security/SecureRandom;->generateSeed(I)[B

    move-result-object v2

    invoke-static {v2}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->RAND_seed([B)V

    goto :goto_28

    .line 292
    .restart local v11       #client:Z
    :cond_8e
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v2}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getServerSessionContext()Lorg/apache/harmony/xnet/provider/jsse/ServerSessionContext;

    move-result-object v2

    iget v0, v2, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;->sslCtxNativePointer:I

    move/from16 v28, v0
    :try_end_9a
    .catchall {:try_start_84 .. :try_end_9a} :catchall_7f

    goto :goto_3e

    .line 310
    .restart local v9       #arr$:[Ljava/lang/String;
    .restart local v15       #enabledCipherSuite:Ljava/lang/String;
    .restart local v16       #exception:Z
    .restart local v17       #i$:I
    .restart local v21       #keyTypes:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v22       #len$:I
    .restart local v28       #sslCtxNativePointer:I
    :cond_9b
    :try_start_9b
    invoke-static {v15}, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->getByName(Ljava/lang/String;)Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->getServerKeyType()Ljava/lang/String;

    move-result-object v20

    .line 311
    .local v20, keyType:Ljava/lang/String;
    if-eqz v20, :cond_76

    .line 312
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_ac
    .catchall {:try_start_9b .. :try_end_ac} :catchall_b4
    .catch Ljavax/net/ssl/SSLProtocolException; {:try_start_9b .. :try_end_ac} :catch_ad

    goto :goto_76

    .line 459
    .end local v9           #arr$:[Ljava/lang/String;
    .end local v15           #enabledCipherSuite:Ljava/lang/String;
    .end local v17           #i$:I
    .end local v20           #keyType:Ljava/lang/String;
    .end local v21           #keyTypes:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v22           #len$:I
    :catch_ad
    move-exception v13

    .line 460
    .local v13, e:Ljavax/net/ssl/SSLProtocolException;
    :try_start_ae
    new-instance v2, Ljavax/net/ssl/SSLHandshakeException;

    invoke-direct {v2, v13}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_b4
    .catchall {:try_start_ae .. :try_end_b4} :catchall_b4

    .line 463
    .end local v13           #e:Ljavax/net/ssl/SSLProtocolException;
    :catchall_b4
    move-exception v2

    if-eqz v16, :cond_ba

    .line 464
    :try_start_b7
    invoke-virtual/range {p0 .. p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->close()V

    :cond_ba
    throw v2
    :try_end_bb
    .catchall {:try_start_b7 .. :try_end_bb} :catchall_7f

    .line 315
    .restart local v9       #arr$:[Ljava/lang/String;
    .restart local v17       #i$:I
    .restart local v21       #keyTypes:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v22       #len$:I
    :cond_bb
    :try_start_bb
    invoke-interface/range {v21 .. v21}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, i$:Ljava/util/Iterator;
    :goto_bf
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e9

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;
    :try_end_cb
    .catchall {:try_start_bb .. :try_end_cb} :catchall_b4
    .catch Ljavax/net/ssl/SSLProtocolException; {:try_start_bb .. :try_end_cb} :catch_ad

    .line 317
    .restart local v20       #keyType:Ljava/lang/String;
    :try_start_cb
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v2}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getKeyManager()Ljavax/net/ssl/X509KeyManager;

    move-result-object v2

    const/4 v6, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-interface {v2, v0, v6, v1}, Ljavax/net/ssl/X509KeyManager;->chooseServerAlias(Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->setCertificate(Ljava/lang/String;)V
    :try_end_e1
    .catchall {:try_start_cb .. :try_end_e1} :catchall_b4
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_cb .. :try_end_e1} :catch_e2
    .catch Ljavax/net/ssl/SSLProtocolException; {:try_start_cb .. :try_end_e1} :catch_ad

    goto :goto_bf

    .line 320
    :catch_e2
    move-exception v13

    .line 321
    .local v13, e:Ljava/security/cert/CertificateEncodingException;
    :try_start_e3
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v13}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 326
    .end local v9           #arr$:[Ljava/lang/String;
    .end local v13           #e:Ljava/security/cert/CertificateEncodingException;
    .end local v17           #i$:Ljava/util/Iterator;
    .end local v20           #keyType:Ljava/lang/String;
    .end local v21           #keyTypes:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v22           #len$:I
    :cond_e9
    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslNativePointer:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->enabledProtocols:[Ljava/lang/String;

    invoke-static {v2, v6}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->setEnabledProtocols(I[Ljava/lang/String;)V

    .line 327
    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslNativePointer:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->enabledCipherSuites:[Ljava/lang/String;

    invoke-static {v2, v6}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->setEnabledCipherSuites(I[Ljava/lang/String;)V

    .line 328
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->enabledCompressionMethods:[Ljava/lang/String;

    array-length v2, v2

    if-eqz v2, :cond_111

    .line 329
    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslNativePointer:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->enabledCompressionMethods:[Ljava/lang/String;

    invoke-static {v2, v6}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->setEnabledCompressionMethods(I[Ljava/lang/String;)V

    .line 332
    :cond_111
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->useSessionTickets:Z

    if-eqz v2, :cond_120

    .line 333
    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslNativePointer:I

    const-wide/16 v6, 0x4000

    invoke-static {v2, v6, v7}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->SSL_clear_options(IJ)J

    .line 335
    :cond_120
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->hostname:Ljava/lang/String;

    if-eqz v2, :cond_131

    .line 336
    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslNativePointer:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->hostname:Ljava/lang/String;

    invoke-static {v2, v6}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->SSL_set_tlsext_host_name(ILjava/lang/String;)V

    .line 339
    :cond_131
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v2}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getEnableSessionCreation()Z

    move-result v14

    .line 340
    .local v14, enableSessionCreation:Z
    if-nez v14, :cond_142

    .line 341
    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslNativePointer:I

    invoke-static {v2, v14}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->SSL_set_session_creation_enabled(IZ)V

    .line 346
    :cond_142
    if-eqz v11, :cond_1da

    .line 348
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v2}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getClientSessionContext()Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;

    move-result-object v12

    .line 349
    .local v12, clientSessionContext:Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;
    move-object v8, v12

    .line 350
    .local v8, sessionContext:Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->getCachedClientSession(Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;)Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;

    move-result-object v26

    .line 351
    .local v26, session:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;
    if-eqz v26, :cond_160

    .line 352
    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslNativePointer:I

    move-object/from16 v0, v26

    iget v6, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->sslSessionNativePointer:I

    invoke-static {v2, v6}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->SSL_set_session(II)V

    .line 360
    .end local v12           #clientSessionContext:Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;
    .end local v26           #session:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;
    :cond_160
    :goto_160
    if-eqz v11, :cond_1e4

    .line 396
    :cond_162
    :goto_162
    if-eqz v11, :cond_16f

    if-eqz p1, :cond_16f

    .line 398
    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslNativePointer:I

    const-wide/16 v6, 0x40

    invoke-static {v2, v6, v7}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->SSL_clear_mode(IJ)J

    .line 403
    :cond_16f
    invoke-virtual/range {p0 .. p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->getSoTimeout()I

    move-result v23

    .line 404
    .local v23, savedTimeoutMilliseconds:I
    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeTimeoutMilliseconds:I

    if-ltz v2, :cond_182

    .line 405
    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeTimeoutMilliseconds:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->setSoTimeout(I)V
    :try_end_182
    .catchall {:try_start_e3 .. :try_end_182} :catchall_b4
    .catch Ljavax/net/ssl/SSLProtocolException; {:try_start_e3 .. :try_end_182} :catch_ad

    .line 410
    :cond_182
    :try_start_182
    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslNativePointer:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->socket:Ljava/net/Socket;

    invoke-virtual {v6}, Ljava/net/Socket;->getFileDescriptor$()Ljava/io/FileDescriptor;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->getSoTimeout()I

    move-result v7

    move-object/from16 v0, p0

    invoke-static {v2, v6, v0, v7, v11}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->SSL_do_handshake(ILjava/io/FileDescriptor;Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto$SSLHandshakeCallbacks;IZ)I
    :try_end_197
    .catchall {:try_start_182 .. :try_end_197} :catchall_b4
    .catch Ljava/security/cert/CertificateException; {:try_start_182 .. :try_end_197} :catch_23a
    .catch Ljavax/net/ssl/SSLProtocolException; {:try_start_182 .. :try_end_197} :catch_ad

    move-result v3

    .line 417
    .local v3, sslSessionNativePointer:I
    :try_start_198
    invoke-static {v3}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->SSL_SESSION_session_id(I)[B

    move-result-object v27

    .line 418
    .local v27, sessionId:[B
    move-object/from16 v0, v27

    invoke-virtual {v8, v0}, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;->getSession([B)Ljavax/net/ssl/SSLSession;

    move-result-object v2

    check-cast v2, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslSession:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;

    .line 419
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslSession:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;

    if-eqz v2, :cond_24c

    .line 420
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslSession:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v2, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->lastAccessedTime:J

    .line 421
    invoke-static {v3}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->SSL_SESSION_free(I)V

    .line 449
    :cond_1bb
    :goto_1bb
    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeTimeoutMilliseconds:I

    if-ltz v2, :cond_1c8

    .line 450
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->setSoTimeout(I)V

    .line 454
    :cond_1c8
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeCompleted:Z

    if-eqz v2, :cond_1d1

    .line 455
    invoke-direct/range {p0 .. p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->notifyHandshakeCompletedListeners()V
    :try_end_1d1
    .catchall {:try_start_198 .. :try_end_1d1} :catchall_b4
    .catch Ljavax/net/ssl/SSLProtocolException; {:try_start_198 .. :try_end_1d1} :catch_ad

    .line 458
    :cond_1d1
    const/16 v16, 0x0

    .line 463
    if-eqz v16, :cond_7a

    .line 464
    :try_start_1d5
    invoke-virtual/range {p0 .. p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->close()V
    :try_end_1d8
    .catchall {:try_start_1d5 .. :try_end_1d8} :catchall_7f

    goto/16 :goto_7a

    .line 356
    .end local v3           #sslSessionNativePointer:I
    .end local v8           #sessionContext:Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;
    .end local v23           #savedTimeoutMilliseconds:I
    .end local v27           #sessionId:[B
    :cond_1da
    :try_start_1da
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v2}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getServerSessionContext()Lorg/apache/harmony/xnet/provider/jsse/ServerSessionContext;

    move-result-object v8

    .restart local v8       #sessionContext:Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;
    goto/16 :goto_160

    .line 366
    :cond_1e4
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v2}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getNeedClientAuth()Z

    move-result v2

    if-eqz v2, :cond_21b

    .line 367
    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslNativePointer:I

    const/4 v6, 0x3

    invoke-static {v2, v6}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->SSL_set_verify(II)V

    .line 370
    const/4 v10, 0x1

    .line 381
    .local v10, certRequested:Z
    :goto_1f7
    if-eqz v10, :cond_162

    .line 382
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v2}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getTrustManager()Ljavax/net/ssl/X509TrustManager;

    move-result-object v29

    .line 383
    .local v29, trustManager:Ljavax/net/ssl/X509TrustManager;
    invoke-interface/range {v29 .. v29}, Ljavax/net/ssl/X509TrustManager;->getAcceptedIssuers()[Ljava/security/cert/X509Certificate;

    move-result-object v18

    .line 384
    .local v18, issuers:[Ljava/security/cert/X509Certificate;
    if-eqz v18, :cond_162

    move-object/from16 v0, v18

    array-length v2, v0
    :try_end_20a
    .catchall {:try_start_1da .. :try_end_20a} :catchall_b4
    .catch Ljavax/net/ssl/SSLProtocolException; {:try_start_1da .. :try_end_20a} :catch_ad

    if-eqz v2, :cond_162

    .line 387
    :try_start_20c
    invoke-static/range {v18 .. v18}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->encodeIssuerX509Principals([Ljava/security/cert/X509Certificate;)[[B
    :try_end_20f
    .catchall {:try_start_20c .. :try_end_20f} :catchall_b4
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_20c .. :try_end_20f} :catch_231
    .catch Ljavax/net/ssl/SSLProtocolException; {:try_start_20c .. :try_end_20f} :catch_ad

    move-result-object v19

    .line 391
    .local v19, issuersBytes:[[B
    :try_start_210
    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslNativePointer:I

    move-object/from16 v0, v19

    invoke-static {v2, v0}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->SSL_set_client_CA_list(I[[B)V

    goto/16 :goto_162

    .line 372
    .end local v10           #certRequested:Z
    .end local v18           #issuers:[Ljava/security/cert/X509Certificate;
    .end local v19           #issuersBytes:[[B
    .end local v29           #trustManager:Ljavax/net/ssl/X509TrustManager;
    :cond_21b
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v2}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getWantClientAuth()Z

    move-result v2

    if-eqz v2, :cond_22f

    .line 373
    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslNativePointer:I

    const/4 v6, 0x1

    invoke-static {v2, v6}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->SSL_set_verify(II)V

    .line 375
    const/4 v10, 0x1

    .restart local v10       #certRequested:Z
    goto :goto_1f7

    .line 378
    .end local v10           #certRequested:Z
    :cond_22f
    const/4 v10, 0x0

    .restart local v10       #certRequested:Z
    goto :goto_1f7

    .line 388
    .restart local v18       #issuers:[Ljava/security/cert/X509Certificate;
    .restart local v29       #trustManager:Ljavax/net/ssl/X509TrustManager;
    :catch_231
    move-exception v13

    .line 389
    .restart local v13       #e:Ljava/security/cert/CertificateEncodingException;
    new-instance v2, Ljava/io/IOException;

    const-string v6, "Problem encoding principals"

    invoke-direct {v2, v6, v13}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 412
    .end local v10           #certRequested:Z
    .end local v13           #e:Ljava/security/cert/CertificateEncodingException;
    .end local v18           #issuers:[Ljava/security/cert/X509Certificate;
    .end local v29           #trustManager:Ljavax/net/ssl/X509TrustManager;
    .restart local v23       #savedTimeoutMilliseconds:I
    :catch_23a
    move-exception v13

    .line 413
    .local v13, e:Ljava/security/cert/CertificateException;
    new-instance v30, Ljavax/net/ssl/SSLHandshakeException;

    invoke-virtual {v13}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v30

    invoke-direct {v0, v2}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    .line 414
    .local v30, wrapper:Ljavax/net/ssl/SSLHandshakeException;
    move-object/from16 v0, v30

    invoke-virtual {v0, v13}, Ljavax/net/ssl/SSLHandshakeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 415
    throw v30

    .line 423
    .end local v13           #e:Ljava/security/cert/CertificateException;
    .end local v30           #wrapper:Ljavax/net/ssl/SSLHandshakeException;
    .restart local v3       #sslSessionNativePointer:I
    .restart local v27       #sessionId:[B
    :cond_24c
    if-nez v14, :cond_256

    .line 425
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v6, "SSL Session may not be created"

    invoke-direct {v2, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 427
    :cond_256
    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslNativePointer:I

    invoke-static {v2}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->SSL_get_certificate(I)[[B

    move-result-object v2

    invoke-static {v2}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->createCertChain([[B)[Ljava/security/cert/X509Certificate;

    move-result-object v4

    .line 429
    .local v4, localCertificates:[Ljava/security/cert/X509Certificate;
    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslNativePointer:I

    invoke-static {v2}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->SSL_get_peer_cert_chain(I)[[B

    move-result-object v2

    invoke-static {v2}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->createCertChain([[B)[Ljava/security/cert/X509Certificate;

    move-result-object v5

    .line 431
    .local v5, peerCertificates:[Ljava/security/cert/X509Certificate;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->wrappedHost:Ljava/lang/String;

    if-nez v2, :cond_298

    .line 432
    new-instance v2, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;

    invoke-super/range {p0 .. p0}, Ljavax/net/ssl/SSLSocket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v6

    invoke-super/range {p0 .. p0}, Ljavax/net/ssl/SSLSocket;->getPort()I

    move-result v7

    invoke-direct/range {v2 .. v8}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;-><init>(I[Ljava/security/cert/X509Certificate;[Ljava/security/cert/X509Certificate;Ljava/lang/String;ILorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslSession:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;

    .line 443
    :goto_289
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeCompleted:Z

    if-eqz v2, :cond_1bb

    .line 444
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslSession:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;

    invoke-virtual {v8, v2}, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;->putSession(Ljavax/net/ssl/SSLSession;)V

    goto/16 :goto_1bb

    .line 437
    :cond_298
    new-instance v2, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->wrappedHost:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v7, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->wrappedPort:I

    invoke-direct/range {v2 .. v8}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;-><init>(I[Ljava/security/cert/X509Certificate;[Ljava/security/cert/X509Certificate;Ljava/lang/String;ILorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslSession:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;
    :try_end_2a9
    .catchall {:try_start_210 .. :try_end_2a9} :catchall_b4
    .catch Ljavax/net/ssl/SSLProtocolException; {:try_start_210 .. :try_end_2a9} :catch_ad

    goto :goto_289
.end method

.method public verifyCertificateChain([[BLjava/lang/String;)V
    .registers 10
    .parameter "bytes"
    .parameter "authMethod"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 584
    if-eqz p1, :cond_5

    :try_start_2
    array-length v5, p1

    if-nez v5, :cond_f

    .line 585
    :cond_5
    new-instance v5, Ljavax/net/ssl/SSLException;

    const-string v6, "Peer sent no certificate"

    invoke-direct {v5, v6}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_d
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_d} :catch_d
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_d} :catch_49
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_d} :catch_4b

    .line 601
    :catch_d
    move-exception v2

    .line 602
    .local v2, e:Ljava/security/cert/CertificateException;
    throw v2

    .line 587
    .end local v2           #e:Ljava/security/cert/CertificateException;
    :cond_f
    :try_start_f
    array-length v5, p1

    new-array v4, v5, [Ljava/security/cert/X509Certificate;

    .line 588
    .local v4, peerCertificateChain:[Ljava/security/cert/X509Certificate;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_13
    array-length v5, p1

    if-ge v3, v5, :cond_22

    .line 589
    new-instance v5, Lorg/apache/harmony/security/provider/cert/X509CertImpl;

    aget-object v6, p1, v3

    invoke-direct {v5, v6}, Lorg/apache/harmony/security/provider/cert/X509CertImpl;-><init>([B)V

    aput-object v5, v4, v3

    .line 588
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 591
    :cond_22
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v5}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getUseClientMode()Z

    move-result v1

    .line 592
    .local v1, client:Z
    if-eqz v1, :cond_34

    .line 593
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v5}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getTrustManager()Ljavax/net/ssl/X509TrustManager;

    move-result-object v5

    invoke-interface {v5, v4, p2}, Ljavax/net/ssl/X509TrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    .line 608
    :goto_33
    return-void

    .line 596
    :cond_34
    const/4 v5, 0x0

    aget-object v5, v4, v5

    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v5

    invoke-interface {v5}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    .line 597
    .local v0, authType:Ljava/lang/String;
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v5}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getTrustManager()Ljavax/net/ssl/X509TrustManager;

    move-result-object v5

    invoke-interface {v5, v4, v0}, Ljavax/net/ssl/X509TrustManager;->checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    :try_end_48
    .catch Ljava/security/cert/CertificateException; {:try_start_f .. :try_end_48} :catch_d
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_48} :catch_49
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_48} :catch_4b

    goto :goto_33

    .line 603
    .end local v0           #authType:Ljava/lang/String;
    .end local v1           #client:Z
    .end local v3           #i:I
    .end local v4           #peerCertificateChain:[Ljava/security/cert/X509Certificate;
    :catch_49
    move-exception v2

    .line 604
    .local v2, e:Ljava/lang/RuntimeException;
    throw v2

    .line 605
    .end local v2           #e:Ljava/lang/RuntimeException;
    :catch_4b
    move-exception v2

    .line 606
    .local v2, e:Ljava/lang/Exception;
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method

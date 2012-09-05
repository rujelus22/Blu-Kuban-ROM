.class public Lorg/apache/harmony/xnet/provider/jsse/SSLServerSocketFactoryImpl;
.super Ljavax/net/ssl/SSLServerSocketFactory;
.source "SSLServerSocketFactoryImpl.java"


# instance fields
.field private instantiationException:Ljava/io/IOException;

.field private sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    .line 38
    invoke-direct {p0}, Ljavax/net/ssl/SSLServerSocketFactory;-><init>()V

    .line 40
    :try_start_3
    invoke-static {}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getDefault()Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLServerSocketFactoryImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    .line 41
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLServerSocketFactoryImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->setUseClientMode(Z)V
    :try_end_f
    .catch Ljava/security/KeyManagementException; {:try_start_3 .. :try_end_f} :catch_10

    .line 47
    :goto_f
    return-void

    .line 42
    :catch_10
    move-exception v0

    .line 43
    .local v0, e:Ljava/security/KeyManagementException;
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Delayed instantiation exception:"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLServerSocketFactoryImpl;->instantiationException:Ljava/io/IOException;

    .line 45
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLServerSocketFactoryImpl;->instantiationException:Ljava/io/IOException;

    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    goto :goto_f
.end method

.method protected constructor <init>(Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;)V
    .registers 4
    .parameter "sslParameters"

    .prologue
    .line 52
    invoke-direct {p0}, Ljavax/net/ssl/SSLServerSocketFactory;-><init>()V

    .line 53
    invoke-virtual {p1}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLServerSocketFactoryImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    .line 54
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLServerSocketFactoryImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->setUseClientMode(Z)V

    .line 55
    return-void
.end method


# virtual methods
.method public createServerSocket()Ljava/net/ServerSocket;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 84
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLServerSocketFactoryImpl;->instantiationException:Ljava/io/IOException;

    if-eqz v0, :cond_7

    .line 85
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLServerSocketFactoryImpl;->instantiationException:Ljava/io/IOException;

    throw v0

    .line 87
    :cond_7
    new-instance v1, Lorg/apache/harmony/xnet/provider/jsse/SSLServerSocketImpl;

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLServerSocketFactoryImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-direct {v1, v0}, Lorg/apache/harmony/xnet/provider/jsse/SSLServerSocketImpl;-><init>(Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;)V

    return-object v1
.end method

.method public createServerSocket(I)Ljava/net/ServerSocket;
    .registers 4
    .parameter "port"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 96
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLServerSocketFactoryImpl;->instantiationException:Ljava/io/IOException;

    if-eqz v0, :cond_7

    .line 97
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLServerSocketFactoryImpl;->instantiationException:Ljava/io/IOException;

    throw v0

    .line 99
    :cond_7
    new-instance v1, Lorg/apache/harmony/xnet/provider/jsse/SSLServerSocketImpl;

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLServerSocketFactoryImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-direct {v1, p1, v0}, Lorg/apache/harmony/xnet/provider/jsse/SSLServerSocketImpl;-><init>(ILorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;)V

    return-object v1
.end method

.method public createServerSocket(II)Ljava/net/ServerSocket;
    .registers 5
    .parameter "port"
    .parameter "backlog"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 109
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLServerSocketFactoryImpl;->instantiationException:Ljava/io/IOException;

    if-eqz v0, :cond_7

    .line 110
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLServerSocketFactoryImpl;->instantiationException:Ljava/io/IOException;

    throw v0

    .line 112
    :cond_7
    new-instance v1, Lorg/apache/harmony/xnet/provider/jsse/SSLServerSocketImpl;

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLServerSocketFactoryImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-direct {v1, p1, p2, v0}, Lorg/apache/harmony/xnet/provider/jsse/SSLServerSocketImpl;-><init>(IILorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;)V

    return-object v1
.end method

.method public createServerSocket(IILjava/net/InetAddress;)Ljava/net/ServerSocket;
    .registers 6
    .parameter "port"
    .parameter "backlog"
    .parameter "iAddress"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 122
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLServerSocketFactoryImpl;->instantiationException:Ljava/io/IOException;

    if-eqz v0, :cond_7

    .line 123
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLServerSocketFactoryImpl;->instantiationException:Ljava/io/IOException;

    throw v0

    .line 125
    :cond_7
    new-instance v1, Lorg/apache/harmony/xnet/provider/jsse/SSLServerSocketImpl;

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLServerSocketFactoryImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-direct {v1, p1, p2, p3, v0}, Lorg/apache/harmony/xnet/provider/jsse/SSLServerSocketImpl;-><init>(IILjava/net/InetAddress;Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;)V

    return-object v1
.end method

.method public getDefaultCipherSuites()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 62
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLServerSocketFactoryImpl;->instantiationException:Ljava/io/IOException;

    if-eqz v0, :cond_7

    .line 63
    sget-object v0, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    .line 65
    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLServerSocketFactoryImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method

.method public getSupportedCipherSuites()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 73
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLServerSocketFactoryImpl;->instantiationException:Ljava/io/IOException;

    if-eqz v0, :cond_7

    .line 74
    sget-object v0, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    .line 76
    :goto_6
    return-object v0

    :cond_7
    invoke-static {}, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->getSupportedCipherSuiteNames()[Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method

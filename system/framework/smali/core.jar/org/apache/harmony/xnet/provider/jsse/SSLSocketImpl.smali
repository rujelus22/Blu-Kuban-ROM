.class public Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;
.super Ljavax/net/ssl/SSLSocket;
.source "SSLSocketImpl.java"


# instance fields
.field private alertProtocol:Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;

.field private appDataIS:Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream;

.field private appDataOS:Lorg/apache/harmony/xnet/provider/jsse/SSLSocketOutputStream;

.field private handshakeProtocol:Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;

.field private handshake_started:Z

.field protected input:Ljava/io/InputStream;

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

.field private logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

.field protected output:Ljava/io/OutputStream;

.field protected recordProtocol:Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;

.field private session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

.field private socket_was_closed:Z

.field protected sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;


# direct methods
.method protected constructor <init>(Ljava/lang/String;ILjava/net/InetAddress;ILorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;)V
    .registers 7
    .parameter "host"
    .parameter "port"
    .parameter "localHost"
    .parameter "localPort"
    .parameter "sslParameters"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 122
    invoke-direct {p0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocket;-><init>(Ljava/lang/String;ILjava/net/InetAddress;I)V

    .line 42
    iput-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->handshake_started:Z

    .line 59
    iput-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->socket_was_closed:Z

    .line 74
    const-string v0, "socket"

    invoke-static {v0}, Lorg/apache/harmony/xnet/provider/jsse/Logger;->getStream(Ljava/lang/String;)Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    .line 123
    iput-object p5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    .line 124
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->init()V

    .line 125
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;ILorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;)V
    .registers 5
    .parameter "host"
    .parameter "port"
    .parameter "sslParameters"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 101
    invoke-direct {p0, p1, p2}, Ljavax/net/ssl/SSLSocket;-><init>(Ljava/lang/String;I)V

    .line 42
    iput-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->handshake_started:Z

    .line 59
    iput-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->socket_was_closed:Z

    .line 74
    const-string v0, "socket"

    invoke-static {v0}, Lorg/apache/harmony/xnet/provider/jsse/Logger;->getStream(Ljava/lang/String;)Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    .line 102
    iput-object p3, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    .line 103
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->init()V

    .line 104
    return-void
.end method

.method protected constructor <init>(Ljava/net/InetAddress;ILjava/net/InetAddress;ILorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;)V
    .registers 7
    .parameter "address"
    .parameter "port"
    .parameter "localAddress"
    .parameter "localPort"
    .parameter "sslParameters"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 159
    invoke-direct {p0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocket;-><init>(Ljava/net/InetAddress;ILjava/net/InetAddress;I)V

    .line 42
    iput-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->handshake_started:Z

    .line 59
    iput-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->socket_was_closed:Z

    .line 74
    const-string v0, "socket"

    invoke-static {v0}, Lorg/apache/harmony/xnet/provider/jsse/Logger;->getStream(Ljava/lang/String;)Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    .line 160
    iput-object p5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    .line 161
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->init()V

    .line 162
    return-void
.end method

.method protected constructor <init>(Ljava/net/InetAddress;ILorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;)V
    .registers 5
    .parameter "host"
    .parameter "port"
    .parameter "sslParameters"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 139
    invoke-direct {p0, p1, p2}, Ljavax/net/ssl/SSLSocket;-><init>(Ljava/net/InetAddress;I)V

    .line 42
    iput-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->handshake_started:Z

    .line 59
    iput-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->socket_was_closed:Z

    .line 74
    const-string v0, "socket"

    invoke-static {v0}, Lorg/apache/harmony/xnet/provider/jsse/Logger;->getStream(Ljava/lang/String;)Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    .line 140
    iput-object p3, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    .line 141
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->init()V

    .line 142
    return-void
.end method

.method protected constructor <init>(Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;)V
    .registers 3
    .parameter "sslParameters"

    .prologue
    const/4 v0, 0x0

    .line 84
    invoke-direct {p0}, Ljavax/net/ssl/SSLSocket;-><init>()V

    .line 42
    iput-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->handshake_started:Z

    .line 59
    iput-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->socket_was_closed:Z

    .line 74
    const-string v0, "socket"

    invoke-static {v0}, Lorg/apache/harmony/xnet/provider/jsse/Logger;->getStream(Ljava/lang/String;)Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    .line 85
    iput-object p1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    .line 87
    return-void
.end method

.method private doHandshake()V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 685
    :cond_0
    :goto_0
    :try_start_0
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->handshakeProtocol:Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;

    invoke-virtual {v7}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->getStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v5

    .local v5, status:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    sget-object v7, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->FINISHED:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-virtual {v5, v7}, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_c7

    .line 687
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    if-eqz v7, :cond_3e

    .line 688
    sget-object v7, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-virtual {v5, v7}, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_78

    const-string v3, "NEED_WRAP"

    .line 695
    .local v3, s:Ljava/lang/String;
    :goto_1c
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SSLSocketImpl: HS status: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    .line 697
    .end local v3           #s:Ljava/lang/String;
    :cond_3e
    sget-object v7, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-virtual {v5, v7}, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_86

    .line 698
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->output:Ljava/io/OutputStream;

    iget-object v8, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->handshakeProtocol:Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;

    invoke-virtual {v8}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->wrap()[B

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/OutputStream;->write([B)V

    .line 736
    :cond_51
    :goto_51
    :pswitch_51
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->alertProtocol:Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;

    invoke-virtual {v7}, Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;->hasAlert()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 740
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->output:Ljava/io/OutputStream;

    iget-object v8, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->alertProtocol:Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;

    invoke-virtual {v8}, Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;->wrap()[B

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/OutputStream;->write([B)V

    .line 741
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->alertProtocol:Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;

    invoke-virtual {v7}, Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;->setProcessed()V
    :try_end_69
    .catch Lorg/apache/harmony/xnet/provider/jsse/EndOfSourceException; {:try_start_0 .. :try_end_69} :catch_6a
    .catch Lorg/apache/harmony/xnet/provider/jsse/AlertException; {:try_start_0 .. :try_end_69} :catch_bb

    goto :goto_0

    .line 744
    .end local v5           #status:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    :catch_6a
    move-exception v0

    .line 745
    .local v0, e:Lorg/apache/harmony/xnet/provider/jsse/EndOfSourceException;
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->appDataIS:Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream;

    invoke-virtual {v7}, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream;->setEnd()V

    .line 746
    new-instance v7, Ljava/io/IOException;

    const-string v8, "Connection was closed"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 688
    .end local v0           #e:Lorg/apache/harmony/xnet/provider/jsse/EndOfSourceException;
    .restart local v5       #status:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    :cond_78
    :try_start_78
    sget-object v7, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_UNWRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-virtual {v5, v7}, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_83

    const-string v3, "NEED_UNWRAP"

    goto :goto_1c

    :cond_83
    const-string v3, "STATUS: OTHER!"

    goto :goto_1c

    .line 699
    :cond_86
    sget-object v7, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_UNWRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-virtual {v5, v7}, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f9

    .line 705
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->recordProtocol:Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;

    invoke-virtual {v7}, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->unwrap()I

    move-result v6

    .local v6, type:I
    packed-switch v6, :pswitch_data_118

    .line 725
    const/16 v7, 0xa

    new-instance v8, Ljavax/net/ssl/SSLException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unexpected message of type "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " has been got"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v7, v8}, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->reportFatalAlert(BLjavax/net/ssl/SSLException;)V
    :try_end_ba
    .catch Lorg/apache/harmony/xnet/provider/jsse/EndOfSourceException; {:try_start_78 .. :try_end_ba} :catch_6a
    .catch Lorg/apache/harmony/xnet/provider/jsse/AlertException; {:try_start_78 .. :try_end_ba} :catch_bb

    goto :goto_51

    .line 747
    .end local v5           #status:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .end local v6           #type:I
    :catch_bb
    move-exception v0

    .line 749
    .local v0, e:Lorg/apache/harmony/xnet/provider/jsse/AlertException;
    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/AlertException;->getDescriptionCode()B

    move-result v7

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/AlertException;->getReason()Ljavax/net/ssl/SSLException;

    move-result-object v8

    invoke-direct {p0, v7, v8}, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->reportFatalAlert(BLjavax/net/ssl/SSLException;)V

    .line 752
    .end local v0           #e:Lorg/apache/harmony/xnet/provider/jsse/AlertException;
    :cond_c7
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->recordProtocol:Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;

    invoke-virtual {v7}, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->getSession()Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    move-result-object v7

    iput-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    .line 753
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->listeners:Ljava/util/ArrayList;

    if-eqz v7, :cond_f8

    .line 755
    new-instance v1, Ljavax/net/ssl/HandshakeCompletedEvent;

    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    invoke-direct {v1, p0, v7}, Ljavax/net/ssl/HandshakeCompletedEvent;-><init>(Ljavax/net/ssl/SSLSocket;Ljavax/net/ssl/SSLSession;)V

    .line 757
    .local v1, event:Ljavax/net/ssl/HandshakeCompletedEvent;
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 758
    .local v4, size:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_e1
    if-ge v2, v4, :cond_f8

    .line 759
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljavax/net/ssl/HandshakeCompletedListener;

    invoke-interface {v7, v1}, Ljavax/net/ssl/HandshakeCompletedListener;->handshakeCompleted(Ljavax/net/ssl/HandshakeCompletedEvent;)V

    .line 758
    add-int/lit8 v2, v2, 0x1

    goto :goto_e1

    .line 718
    .end local v1           #event:Ljavax/net/ssl/HandshakeCompletedEvent;
    .end local v2           #i:I
    .end local v4           #size:I
    .restart local v5       #status:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .restart local v6       #type:I
    :pswitch_f1
    :try_start_f1
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->processAlert()V

    .line 719
    iget-boolean v7, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->socket_was_closed:Z

    if-eqz v7, :cond_51

    .line 763
    .end local v5           #status:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .end local v6           #type:I
    :cond_f8
    return-void

    .line 732
    .restart local v5       #status:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    :cond_f9
    const/16 v7, 0x50

    new-instance v8, Ljavax/net/ssl/SSLException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Handshake passed unexpected status: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v7, v8}, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->reportFatalAlert(BLjavax/net/ssl/SSLException;)V
    :try_end_116
    .catch Lorg/apache/harmony/xnet/provider/jsse/EndOfSourceException; {:try_start_f1 .. :try_end_116} :catch_6a
    .catch Lorg/apache/harmony/xnet/provider/jsse/AlertException; {:try_start_f1 .. :try_end_116} :catch_bb

    goto/16 :goto_51

    .line 705
    :pswitch_data_118
    .packed-switch 0x14
        :pswitch_51
        :pswitch_f1
        :pswitch_51
        :pswitch_51
    .end packed-switch
.end method

.method private processAlert()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 769
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->alertProtocol:Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;

    invoke-virtual {v1}, Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;->hasAlert()Z

    move-result v1

    if-nez v1, :cond_9

    .line 794
    :goto_8
    return-void

    .line 772
    :cond_9
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->alertProtocol:Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;

    invoke-virtual {v1}, Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;->isFatalAlert()Z

    move-result v1

    if-eqz v1, :cond_38

    .line 773
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->alertProtocol:Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;

    invoke-virtual {v1}, Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;->setProcessed()V

    .line 774
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fatal alert received "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->alertProtocol:Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;

    invoke-virtual {v2}, Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;->getAlertDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 776
    .local v0, description:Ljava/lang/String;
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->shutdown()V

    .line 777
    new-instance v1, Ljavax/net/ssl/SSLException;

    invoke-direct {v1, v0}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 780
    .end local v0           #description:Ljava/lang/String;
    :cond_38
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    if-eqz v1, :cond_5a

    .line 781
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Warning alert received: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->alertProtocol:Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;

    invoke-virtual {v3}, Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;->getAlertDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    .line 784
    :cond_5a
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->alertProtocol:Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;

    invoke-virtual {v1}, Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;->getDescriptionCode()B

    move-result v1

    packed-switch v1, :pswitch_data_78

    .line 791
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->alertProtocol:Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;

    invoke-virtual {v1}, Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;->setProcessed()V

    goto :goto_8

    .line 786
    :pswitch_69
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->alertProtocol:Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;

    invoke-virtual {v1}, Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;->setProcessed()V

    .line 787
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->appDataIS:Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream;

    invoke-virtual {v1}, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream;->setEnd()V

    .line 788
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->close()V

    goto :goto_8

    .line 784
    nop

    :pswitch_data_78
    .packed-switch 0x0
        :pswitch_69
    .end packed-switch
.end method

.method private reportFatalAlert(BLjavax/net/ssl/SSLException;)V
    .registers 5
    .parameter "description_code"
    .parameter "reason"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 801
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->alertProtocol:Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;->alert(BB)V

    .line 804
    :try_start_6
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->output:Ljava/io/OutputStream;

    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->alertProtocol:Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;

    invoke-virtual {v1}, Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;->wrap()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_11} :catch_1a

    .line 806
    :goto_11
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->alertProtocol:Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;->setProcessed()V

    .line 807
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->shutdown()V

    .line 808
    throw p2

    .line 805
    :catch_1a
    move-exception v0

    goto :goto_11
.end method

.method private shutdown()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 547
    iget-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->handshake_started:Z

    if-eqz v0, :cond_1a

    .line 548
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->alertProtocol:Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;->shutdown()V

    .line 549
    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->alertProtocol:Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;

    .line 550
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->handshakeProtocol:Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->shutdown()V

    .line 551
    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->handshakeProtocol:Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;

    .line 552
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->recordProtocol:Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->shutdown()V

    .line 553
    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->recordProtocol:Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;

    .line 555
    :cond_1a
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->socket_was_closed:Z

    .line 556
    return-void
.end method


# virtual methods
.method public addHandshakeCompletedListener(Ljavax/net/ssl/HandshakeCompletedListener;)V
    .registers 4
    .parameter "listener"

    .prologue
    .line 371
    if-nez p1, :cond_a

    .line 372
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Provided listener is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 374
    :cond_a
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->listeners:Ljava/util/ArrayList;

    if-nez v0, :cond_15

    .line 375
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->listeners:Ljava/util/ArrayList;

    .line 377
    :cond_15
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 378
    return-void
.end method

.method public close()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 508
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    if-eqz v0, :cond_1f

    .line 509
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SSLSocket.close "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->socket_was_closed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    .line 511
    :cond_1f
    iget-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->socket_was_closed:Z

    if-nez v0, :cond_45

    .line 512
    iget-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->handshake_started:Z

    if-eqz v0, :cond_3d

    .line 513
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->alertProtocol:Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;

    const/4 v1, 0x0

    invoke-virtual {v0, v3, v1}, Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;->alert(BB)V

    .line 516
    :try_start_2d
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->output:Ljava/io/OutputStream;

    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->alertProtocol:Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;

    invoke-virtual {v1}, Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;->wrap()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_38} :catch_46

    .line 518
    :goto_38
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->alertProtocol:Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;->setProcessed()V

    .line 520
    :cond_3d
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->shutdown()V

    .line 521
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->closeTransportLayer()V

    .line 522
    iput-boolean v3, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->socket_was_closed:Z

    .line 524
    :cond_45
    return-void

    .line 517
    :catch_46
    move-exception v0

    goto :goto_38
.end method

.method protected closeTransportLayer()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 189
    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->close()V

    .line 190
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->input:Ljava/io/InputStream;

    if-eqz v0, :cond_11

    .line 191
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->input:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 192
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->output:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 194
    :cond_11
    return-void
.end method

.method public connect(Ljava/net/SocketAddress;)V
    .registers 2
    .parameter "endpoint"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 485
    invoke-super {p0, p1}, Ljavax/net/ssl/SSLSocket;->connect(Ljava/net/SocketAddress;)V

    .line 486
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->init()V

    .line 487
    return-void
.end method

.method public connect(Ljava/net/SocketAddress;I)V
    .registers 3
    .parameter "endpoint"
    .parameter "timeout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 497
    invoke-super {p0, p1, p2}, Ljavax/net/ssl/SSLSocket;->connect(Ljava/net/SocketAddress;I)V

    .line 498
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->init()V

    .line 499
    return-void
.end method

.method public getEnableSessionCreation()Z
    .registers 2

    .prologue
    .line 339
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getEnableSessionCreation()Z

    move-result v0

    return v0
.end method

.method public getEnabledCipherSuites()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 215
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEnabledProtocols()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 245
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 459
    iget-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->socket_was_closed:Z

    if-eqz v0, :cond_c

    .line 460
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Socket has already been closed."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 462
    :cond_c
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->appDataIS:Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream;

    return-object v0
.end method

.method public getNeedClientAuth()Z
    .registers 2

    .prologue
    .line 299
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getNeedClientAuth()Z

    move-result v0

    return v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 472
    iget-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->socket_was_closed:Z

    if-eqz v0, :cond_c

    .line 473
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Socket has already been closed."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 475
    :cond_c
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->appDataOS:Lorg/apache/harmony/xnet/provider/jsse/SSLSocketOutputStream;

    return-object v0
.end method

.method public getSession()Ljavax/net/ssl/SSLSession;
    .registers 3

    .prologue
    .line 351
    iget-boolean v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->handshake_started:Z

    if-nez v1, :cond_7

    .line 353
    :try_start_4
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->startHandshake()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_7} :catch_a

    .line 360
    :cond_7
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    :goto_9
    return-object v1

    .line 354
    :catch_a
    move-exception v0

    .line 357
    .local v0, e:Ljava/io/IOException;
    sget-object v1, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->NULL_SESSION:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    goto :goto_9
.end method

.method public getSupportedCipherSuites()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 205
    invoke-static {}, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->getSupportedCipherSuiteNames()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedProtocols()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 235
    sget-object v0, Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;->supportedProtocols:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getUseClientMode()Z
    .registers 2

    .prologue
    .line 279
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getUseClientMode()Z

    move-result v0

    return v0
.end method

.method public getWantClientAuth()Z
    .registers 2

    .prologue
    .line 319
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getWantClientAuth()Z

    move-result v0

    return v0
.end method

.method protected init()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 168
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->appDataIS:Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream;

    if-eqz v0, :cond_5

    .line 175
    :goto_4
    return-void

    .line 172
    :cond_5
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->initTransportLayer()V

    .line 173
    new-instance v0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream;

    invoke-direct {v0, p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream;-><init>(Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;)V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->appDataIS:Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream;

    .line 174
    new-instance v0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketOutputStream;

    invoke-direct {v0, p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketOutputStream;-><init>(Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;)V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->appDataOS:Lorg/apache/harmony/xnet/provider/jsse/SSLSocketOutputStream;

    goto :goto_4
.end method

.method protected initTransportLayer()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 181
    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->input:Ljava/io/InputStream;

    .line 182
    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->output:Ljava/io/OutputStream;

    .line 183
    return-void
.end method

.method protected needAppData()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 565
    iget-boolean v2, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->handshake_started:Z

    if-nez v2, :cond_7

    .line 566
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->startHandshake()V

    .line 569
    :cond_7
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    if-eqz v2, :cond_12

    .line 570
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    const-string v3, "SSLSocket.needAppData.."

    invoke-virtual {v2, v3}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    .line 573
    :cond_12
    :try_start_12
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->appDataIS:Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream;

    invoke-virtual {v2}, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream;->available()I

    move-result v2

    if-nez v2, :cond_86

    .line 578
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->recordProtocol:Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;

    invoke-virtual {v2}, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->unwrap()I

    move-result v1

    .local v1, type:I
    packed-switch v1, :pswitch_data_c4

    .line 602
    const/16 v2, 0xa

    new-instance v3, Ljavax/net/ssl/SSLException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected message of type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " has been got"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v2, v3}, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->reportFatalAlert(BLjavax/net/ssl/SSLException;)V

    .line 606
    :cond_46
    :goto_46
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->alertProtocol:Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;

    invoke-virtual {v2}, Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;->hasAlert()Z

    move-result v2

    if-eqz v2, :cond_5e

    .line 610
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->output:Ljava/io/OutputStream;

    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->alertProtocol:Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;

    invoke-virtual {v3}, Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;->wrap()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V

    .line 611
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->alertProtocol:Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;

    invoke-virtual {v2}, Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;->setProcessed()V

    .line 613
    :cond_5e
    iget-boolean v2, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->socket_was_closed:Z

    if-eqz v2, :cond_12

    .line 614
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->appDataIS:Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream;

    invoke-virtual {v2}, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream;->setEnd()V

    .line 629
    .end local v1           #type:I
    :cond_67
    :goto_67
    return-void

    .line 580
    .restart local v1       #type:I
    :pswitch_68
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->handshakeProtocol:Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;

    invoke-virtual {v2}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->getStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v2

    sget-object v3, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-virtual {v2, v3}, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_46

    .line 585
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->doHandshake()V
    :try_end_79
    .catch Lorg/apache/harmony/xnet/provider/jsse/AlertException; {:try_start_12 .. :try_end_79} :catch_7a
    .catch Lorg/apache/harmony/xnet/provider/jsse/EndOfSourceException; {:try_start_12 .. :try_end_79} :catch_bd

    goto :goto_46

    .line 618
    .end local v1           #type:I
    :catch_7a
    move-exception v0

    .line 620
    .local v0, e:Lorg/apache/harmony/xnet/provider/jsse/AlertException;
    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/AlertException;->getDescriptionCode()B

    move-result v2

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/AlertException;->getReason()Ljavax/net/ssl/SSLException;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->reportFatalAlert(BLjavax/net/ssl/SSLException;)V

    .line 625
    .end local v0           #e:Lorg/apache/harmony/xnet/provider/jsse/AlertException;
    :cond_86
    :goto_86
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    if-eqz v2, :cond_67

    .line 626
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SSLSocket.needAppData: app data len: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->appDataIS:Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream;

    invoke-virtual {v4}, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream;->available()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    goto :goto_67

    .line 589
    .restart local v1       #type:I
    :pswitch_a9
    :try_start_a9
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->processAlert()V

    .line 590
    iget-boolean v2, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->socket_was_closed:Z

    if-eqz v2, :cond_46

    goto :goto_67

    .line 595
    :pswitch_b1
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    if-eqz v2, :cond_46

    .line 596
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    const-string v3, "SSLSocket.needAppData: got the data"

    invoke-virtual {v2, v3}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V
    :try_end_bc
    .catch Lorg/apache/harmony/xnet/provider/jsse/AlertException; {:try_start_a9 .. :try_end_bc} :catch_7a
    .catch Lorg/apache/harmony/xnet/provider/jsse/EndOfSourceException; {:try_start_a9 .. :try_end_bc} :catch_bd

    goto :goto_46

    .line 621
    .end local v1           #type:I
    :catch_bd
    move-exception v0

    .line 623
    .local v0, e:Lorg/apache/harmony/xnet/provider/jsse/EndOfSourceException;
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->appDataIS:Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream;

    invoke-virtual {v2}, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream;->setEnd()V

    goto :goto_86

    .line 578
    :pswitch_data_c4
    .packed-switch 0x15
        :pswitch_a9
        :pswitch_68
        :pswitch_b1
    .end packed-switch
.end method

.method public removeHandshakeCompletedListener(Ljavax/net/ssl/HandshakeCompletedListener;)V
    .registers 4
    .parameter "listener"

    .prologue
    .line 388
    if-nez p1, :cond_a

    .line 389
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Provided listener is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 391
    :cond_a
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->listeners:Ljava/util/ArrayList;

    if-nez v0, :cond_16

    .line 392
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Provided listener is not registered"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 395
    :cond_16
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    .line 396
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Provided listener is not registered"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 399
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
    .line 531
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Method sendUrgentData() is not supported."

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setEnableSessionCreation(Z)V
    .registers 3
    .parameter "flag"

    .prologue
    .line 329
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->setEnableSessionCreation(Z)V

    .line 330
    return-void
.end method

.method public setEnabledCipherSuites([Ljava/lang/String;)V
    .registers 3
    .parameter "suites"

    .prologue
    .line 225
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->setEnabledCipherSuites([Ljava/lang/String;)V

    .line 226
    return-void
.end method

.method public setEnabledProtocols([Ljava/lang/String;)V
    .registers 3
    .parameter "protocols"

    .prologue
    .line 255
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->setEnabledProtocols([Ljava/lang/String;)V

    .line 256
    return-void
.end method

.method public setNeedClientAuth(Z)V
    .registers 3
    .parameter "need"

    .prologue
    .line 289
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->setNeedClientAuth(Z)V

    .line 290
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
    .line 540
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Methods sendUrgentData, setOOBInline are not supported."

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setUseClientMode(Z)V
    .registers 4
    .parameter "mode"

    .prologue
    .line 265
    iget-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->handshake_started:Z

    if-eqz v0, :cond_c

    .line 266
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Could not change the mode after the initial handshake has begun."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 269
    :cond_c
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->setUseClientMode(Z)V

    .line 270
    return-void
.end method

.method public setWantClientAuth(Z)V
    .registers 3
    .parameter "want"

    .prologue
    .line 309
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->setWantClientAuth(Z)V

    .line 310
    return-void
.end method

.method public startHandshake()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 412
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->appDataIS:Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream;

    if-nez v0, :cond_c

    .line 413
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Socket is not connected."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 415
    :cond_c
    iget-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->socket_was_closed:Z

    if-eqz v0, :cond_18

    .line 416
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Socket has already been closed."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 419
    :cond_18
    iget-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->handshake_started:Z

    if-nez v0, :cond_56

    .line 420
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->handshake_started:Z

    .line 421
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getUseClientMode()Z

    move-result v0

    if-eqz v0, :cond_75

    .line 422
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    if-eqz v0, :cond_32

    .line 423
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    const-string v1, "SSLSocketImpl: CLIENT"

    invoke-virtual {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    .line 425
    :cond_32
    new-instance v0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;

    invoke-direct {v0, p0}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->handshakeProtocol:Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;

    .line 433
    :goto_39
    new-instance v0, Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;

    invoke-direct {v0}, Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->alertProtocol:Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;

    .line 434
    new-instance v0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;

    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->handshakeProtocol:Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->alertProtocol:Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;

    new-instance v3, Lorg/apache/harmony/xnet/provider/jsse/SSLStreamedInput;

    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->input:Ljava/io/InputStream;

    invoke-direct {v3, v4}, Lorg/apache/harmony/xnet/provider/jsse/SSLStreamedInput;-><init>(Ljava/io/InputStream;)V

    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->appDataIS:Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream;

    iget-object v4, v4, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream;->dataPoint:Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream$Adapter;

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;-><init>(Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;Lorg/apache/harmony/xnet/provider/jsse/SSLInputStream;Lorg/apache/harmony/xnet/provider/jsse/Appendable;)V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->recordProtocol:Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;

    .line 439
    :cond_56
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    if-eqz v0, :cond_61

    .line 440
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    const-string v1, "SSLSocketImpl.startHandshake"

    invoke-virtual {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    .line 443
    :cond_61
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->handshakeProtocol:Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->start()V

    .line 445
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->doHandshake()V

    .line 447
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    if-eqz v0, :cond_74

    .line 448
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    const-string v1, "SSLSocketImpl.startHandshake: END"

    invoke-virtual {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    .line 450
    :cond_74
    return-void

    .line 427
    :cond_75
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    if-eqz v0, :cond_80

    .line 428
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    const-string v1, "SSLSocketImpl: SERVER"

    invoke-virtual {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    .line 430
    :cond_80
    new-instance v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;

    invoke-direct {v0, p0}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->handshakeProtocol:Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;

    goto :goto_39
.end method

.method protected writeAppData([BII)V
    .registers 10
    .parameter "data"
    .parameter "offset"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x4000

    .line 636
    iget-boolean v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->handshake_started:Z

    if-nez v1, :cond_9

    .line 637
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->startHandshake()V

    .line 639
    :cond_9
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    if-eqz v1, :cond_2f

    .line 640
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SSLSocket.writeAppData: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    .line 645
    :cond_2f
    if-ge p3, v5, :cond_3f

    .line 646
    :try_start_31
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->output:Ljava/io/OutputStream;

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->recordProtocol:Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;

    const/16 v3, 0x17

    invoke-virtual {v2, v3, p1, p2, p3}, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->wrap(B[BII)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 666
    :cond_3e
    :goto_3e
    return-void

    .line 649
    :cond_3f
    :goto_3f
    if-lt p3, v5, :cond_55

    .line 650
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->output:Ljava/io/OutputStream;

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->recordProtocol:Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;

    const/16 v3, 0x17

    const/16 v4, 0x4000

    invoke-virtual {v2, v3, p1, p2, v4}, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->wrap(B[BII)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 653
    add-int/lit16 p2, p2, 0x4000

    .line 654
    add-int/lit16 p3, p3, -0x4000

    goto :goto_3f

    .line 656
    :cond_55
    if-lez p3, :cond_3e

    .line 657
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->output:Ljava/io/OutputStream;

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->recordProtocol:Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;

    const/16 v3, 0x17

    invoke-virtual {v2, v3, p1, p2, p3}, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->wrap(B[BII)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V
    :try_end_64
    .catch Lorg/apache/harmony/xnet/provider/jsse/AlertException; {:try_start_31 .. :try_end_64} :catch_65

    goto :goto_3e

    .line 662
    :catch_65
    move-exception v0

    .line 664
    .local v0, e:Lorg/apache/harmony/xnet/provider/jsse/AlertException;
    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/AlertException;->getDescriptionCode()B

    move-result v1

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/AlertException;->getReason()Ljavax/net/ssl/SSLException;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->reportFatalAlert(BLjavax/net/ssl/SSLException;)V

    goto :goto_3e
.end method

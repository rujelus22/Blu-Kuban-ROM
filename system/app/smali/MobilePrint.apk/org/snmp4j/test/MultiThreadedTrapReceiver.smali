.class public Lorg/snmp4j/test/MultiThreadedTrapReceiver;
.super Ljava/lang/Object;
.source "MultiThreadedTrapReceiver.java"

# interfaces
.implements Lorg/snmp4j/CommandResponder;


# instance fields
.field private dispatcher:Lorg/snmp4j/util/MultiThreadedMessageDispatcher;

.field private listenAddress:Lorg/snmp4j/smi/Address;

.field private n:I

.field private snmp:Lorg/snmp4j/Snmp;

.field private start:J

.field private threadPool:Lorg/snmp4j/util/ThreadPool;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 65
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/snmp4j/test/MultiThreadedTrapReceiver;->snmp:Lorg/snmp4j/Snmp;

    .line 61
    const/4 v0, 0x0

    iput v0, p0, Lorg/snmp4j/test/MultiThreadedTrapReceiver;->n:I

    .line 62
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/snmp4j/test/MultiThreadedTrapReceiver;->start:J

    .line 67
    return-void
.end method

.method private init()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 70
    const-string v2, "Trap"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lorg/snmp4j/util/ThreadPool;->create(Ljava/lang/String;I)Lorg/snmp4j/util/ThreadPool;

    move-result-object v2

    iput-object v2, p0, Lorg/snmp4j/test/MultiThreadedTrapReceiver;->threadPool:Lorg/snmp4j/util/ThreadPool;

    .line 71
    new-instance v2, Lorg/snmp4j/util/MultiThreadedMessageDispatcher;

    iget-object v3, p0, Lorg/snmp4j/test/MultiThreadedTrapReceiver;->threadPool:Lorg/snmp4j/util/ThreadPool;

    new-instance v4, Lorg/snmp4j/MessageDispatcherImpl;

    invoke-direct {v4}, Lorg/snmp4j/MessageDispatcherImpl;-><init>()V

    invoke-direct {v2, v3, v4}, Lorg/snmp4j/util/MultiThreadedMessageDispatcher;-><init>(Lorg/snmp4j/util/WorkerPool;Lorg/snmp4j/MessageDispatcher;)V

    iput-object v2, p0, Lorg/snmp4j/test/MultiThreadedTrapReceiver;->dispatcher:Lorg/snmp4j/util/MultiThreadedMessageDispatcher;

    .line 74
    const-string v2, "snmp4j.listenAddress"

    const-string v3, "udp:0.0.0.0/162"

    invoke-static {v2, v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/snmp4j/smi/GenericAddress;->parse(Ljava/lang/String;)Lorg/snmp4j/smi/Address;

    move-result-object v2

    iput-object v2, p0, Lorg/snmp4j/test/MultiThreadedTrapReceiver;->listenAddress:Lorg/snmp4j/smi/Address;

    .line 78
    iget-object v2, p0, Lorg/snmp4j/test/MultiThreadedTrapReceiver;->listenAddress:Lorg/snmp4j/smi/Address;

    instance-of v2, v2, Lorg/snmp4j/smi/UdpAddress;

    if-eqz v2, :cond_87

    .line 79
    new-instance v0, Lorg/snmp4j/transport/DefaultUdpTransportMapping;

    iget-object v2, p0, Lorg/snmp4j/test/MultiThreadedTrapReceiver;->listenAddress:Lorg/snmp4j/smi/Address;

    check-cast v2, Lorg/snmp4j/smi/UdpAddress;

    invoke-direct {v0, v2}, Lorg/snmp4j/transport/DefaultUdpTransportMapping;-><init>(Lorg/snmp4j/smi/UdpAddress;)V

    .line 84
    .local v0, transport:Lorg/snmp4j/TransportMapping;
    :goto_34
    new-instance v2, Lorg/snmp4j/Snmp;

    iget-object v3, p0, Lorg/snmp4j/test/MultiThreadedTrapReceiver;->dispatcher:Lorg/snmp4j/util/MultiThreadedMessageDispatcher;

    invoke-direct {v2, v3, v0}, Lorg/snmp4j/Snmp;-><init>(Lorg/snmp4j/MessageDispatcher;Lorg/snmp4j/TransportMapping;)V

    iput-object v2, p0, Lorg/snmp4j/test/MultiThreadedTrapReceiver;->snmp:Lorg/snmp4j/Snmp;

    .line 85
    iget-object v2, p0, Lorg/snmp4j/test/MultiThreadedTrapReceiver;->snmp:Lorg/snmp4j/Snmp;

    invoke-virtual {v2}, Lorg/snmp4j/Snmp;->getMessageDispatcher()Lorg/snmp4j/MessageDispatcher;

    move-result-object v2

    new-instance v3, Lorg/snmp4j/mp/MPv1;

    invoke-direct {v3}, Lorg/snmp4j/mp/MPv1;-><init>()V

    invoke-interface {v2, v3}, Lorg/snmp4j/MessageDispatcher;->addMessageProcessingModel(Lorg/snmp4j/mp/MessageProcessingModel;)V

    .line 86
    iget-object v2, p0, Lorg/snmp4j/test/MultiThreadedTrapReceiver;->snmp:Lorg/snmp4j/Snmp;

    invoke-virtual {v2}, Lorg/snmp4j/Snmp;->getMessageDispatcher()Lorg/snmp4j/MessageDispatcher;

    move-result-object v2

    new-instance v3, Lorg/snmp4j/mp/MPv2c;

    invoke-direct {v3}, Lorg/snmp4j/mp/MPv2c;-><init>()V

    invoke-interface {v2, v3}, Lorg/snmp4j/MessageDispatcher;->addMessageProcessingModel(Lorg/snmp4j/mp/MessageProcessingModel;)V

    .line 87
    iget-object v2, p0, Lorg/snmp4j/test/MultiThreadedTrapReceiver;->snmp:Lorg/snmp4j/Snmp;

    invoke-virtual {v2}, Lorg/snmp4j/Snmp;->getMessageDispatcher()Lorg/snmp4j/MessageDispatcher;

    move-result-object v2

    new-instance v3, Lorg/snmp4j/mp/MPv3;

    invoke-direct {v3}, Lorg/snmp4j/mp/MPv3;-><init>()V

    invoke-interface {v2, v3}, Lorg/snmp4j/MessageDispatcher;->addMessageProcessingModel(Lorg/snmp4j/mp/MessageProcessingModel;)V

    .line 88
    new-instance v1, Lorg/snmp4j/security/USM;

    invoke-static {}, Lorg/snmp4j/security/SecurityProtocols;->getInstance()Lorg/snmp4j/security/SecurityProtocols;

    move-result-object v2

    new-instance v3, Lorg/snmp4j/smi/OctetString;

    invoke-static {}, Lorg/snmp4j/mp/MPv3;->createLocalEngineID()[B

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/snmp4j/smi/OctetString;-><init>([B)V

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lorg/snmp4j/security/USM;-><init>(Lorg/snmp4j/security/SecurityProtocols;Lorg/snmp4j/smi/OctetString;I)V

    .line 90
    .local v1, usm:Lorg/snmp4j/security/USM;
    invoke-static {}, Lorg/snmp4j/security/SecurityModels;->getInstance()Lorg/snmp4j/security/SecurityModels;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/snmp4j/security/SecurityModels;->addSecurityModel(Lorg/snmp4j/security/SecurityModel;)V

    .line 91
    iget-object v2, p0, Lorg/snmp4j/test/MultiThreadedTrapReceiver;->snmp:Lorg/snmp4j/Snmp;

    invoke-virtual {v2}, Lorg/snmp4j/Snmp;->listen()V

    .line 92
    return-void

    .line 82
    .end local v0           #transport:Lorg/snmp4j/TransportMapping;
    .end local v1           #usm:Lorg/snmp4j/security/USM;
    :cond_87
    new-instance v0, Lorg/snmp4j/transport/DefaultTcpTransportMapping;

    iget-object v2, p0, Lorg/snmp4j/test/MultiThreadedTrapReceiver;->listenAddress:Lorg/snmp4j/smi/Address;

    check-cast v2, Lorg/snmp4j/smi/TcpAddress;

    invoke-direct {v0, v2}, Lorg/snmp4j/transport/DefaultTcpTransportMapping;-><init>(Lorg/snmp4j/smi/TcpAddress;)V

    .restart local v0       #transport:Lorg/snmp4j/TransportMapping;
    goto :goto_34
.end method

.method public static main([Ljava/lang/String;)V
    .registers 2
    .parameter "args"

    .prologue
    .line 105
    new-instance v0, Lorg/snmp4j/test/MultiThreadedTrapReceiver;

    invoke-direct {v0}, Lorg/snmp4j/test/MultiThreadedTrapReceiver;-><init>()V

    .line 107
    .local v0, multithreadedtrapreceiver:Lorg/snmp4j/test/MultiThreadedTrapReceiver;
    invoke-virtual {v0}, Lorg/snmp4j/test/MultiThreadedTrapReceiver;->run()V

    .line 108
    return-void
.end method


# virtual methods
.method public processPdu(Lorg/snmp4j/CommandResponderEvent;)V
    .registers 10
    .parameter "event"

    .prologue
    .line 111
    iget-wide v0, p0, Lorg/snmp4j/test/MultiThreadedTrapReceiver;->start:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_11

    .line 112
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lorg/snmp4j/test/MultiThreadedTrapReceiver;->start:J

    .line 115
    :cond_11
    iget v0, p0, Lorg/snmp4j/test/MultiThreadedTrapReceiver;->n:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/snmp4j/test/MultiThreadedTrapReceiver;->n:I

    .line 116
    iget v0, p0, Lorg/snmp4j/test/MultiThreadedTrapReceiver;->n:I

    rem-int/lit8 v0, v0, 0x64

    const/4 v1, 0x1

    if-ne v0, v1, :cond_54

    .line 117
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Processed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lorg/snmp4j/test/MultiThreadedTrapReceiver;->n:I

    int-to-double v2, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lorg/snmp4j/test/MultiThreadedTrapReceiver;->start:J

    sub-long/2addr v4, v6

    long-to-double v4, v4

    div-double/2addr v2, v4

    const-wide v4, 0x408f400000000000L

    mul-double/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "/s, total="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lorg/snmp4j/test/MultiThreadedTrapReceiver;->n:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 121
    :cond_54
    return-void
.end method

.method public run()V
    .registers 3

    .prologue
    .line 96
    :try_start_0
    invoke-direct {p0}, Lorg/snmp4j/test/MultiThreadedTrapReceiver;->init()V

    .line 97
    iget-object v1, p0, Lorg/snmp4j/test/MultiThreadedTrapReceiver;->snmp:Lorg/snmp4j/Snmp;

    invoke-virtual {v1, p0}, Lorg/snmp4j/Snmp;->addCommandResponder(Lorg/snmp4j/CommandResponder;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    .line 102
    :goto_8
    return-void

    .line 99
    :catch_9
    move-exception v0

    .line 100
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8
.end method

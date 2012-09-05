.class public abstract Lorg/snmp4j/transport/TcpTransportMapping;
.super Lorg/snmp4j/transport/AbstractTransportMapping;
.source "TcpTransportMapping.java"

# interfaces
.implements Lorg/snmp4j/transport/ConnectionOrientedTransportMapping;


# static fields
.field static class$org$snmp4j$smi$TcpAddress:Ljava/lang/Class;

.field static class$org$snmp4j$transport$TcpTransportMapping:Ljava/lang/Class;

.field private static final logger:Lorg/snmp4j/log/LogAdapter;


# instance fields
.field protected tcpAddress:Lorg/snmp4j/smi/TcpAddress;

.field private transient transportStateListeners:Ljava/util/Vector;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 43
    sget-object v0, Lorg/snmp4j/transport/TcpTransportMapping;->class$org$snmp4j$transport$TcpTransportMapping:Ljava/lang/Class;

    if-nez v0, :cond_13

    const-string v0, "org.snmp4j.transport.TcpTransportMapping"

    invoke-static {v0}, Lorg/snmp4j/transport/TcpTransportMapping;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/snmp4j/transport/TcpTransportMapping;->class$org$snmp4j$transport$TcpTransportMapping:Ljava/lang/Class;

    :goto_c
    invoke-static {v0}, Lorg/snmp4j/log/LogFactory;->getLogger(Ljava/lang/Class;)Lorg/snmp4j/log/LogAdapter;

    move-result-object v0

    sput-object v0, Lorg/snmp4j/transport/TcpTransportMapping;->logger:Lorg/snmp4j/log/LogAdapter;

    return-void

    :cond_13
    sget-object v0, Lorg/snmp4j/transport/TcpTransportMapping;->class$org$snmp4j$transport$TcpTransportMapping:Ljava/lang/Class;

    goto :goto_c
.end method

.method public constructor <init>(Lorg/snmp4j/smi/TcpAddress;)V
    .registers 2
    .parameter "tcpAddress"

    .prologue
    .line 49
    invoke-direct {p0}, Lorg/snmp4j/transport/AbstractTransportMapping;-><init>()V

    .line 50
    iput-object p1, p0, Lorg/snmp4j/transport/TcpTransportMapping;->tcpAddress:Lorg/snmp4j/smi/TcpAddress;

    .line 51
    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .registers 3
    .parameter "x0"

    .prologue
    .line 44
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v1

    return-object v1

    :catch_5
    move-exception v0

    .local v0, x1:Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v1}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/NoClassDefFoundError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    throw v1
.end method


# virtual methods
.method public declared-synchronized addTransportStateListener(Lorg/snmp4j/transport/TransportStateListener;)V
    .registers 4
    .parameter "l"

    .prologue
    .line 111
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lorg/snmp4j/transport/TcpTransportMapping;->transportStateListeners:Ljava/util/Vector;

    if-nez v0, :cond_d

    .line 112
    new-instance v0, Ljava/util/Vector;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lorg/snmp4j/transport/TcpTransportMapping;->transportStateListeners:Ljava/util/Vector;

    .line 114
    :cond_d
    iget-object v0, p0, Lorg/snmp4j/transport/TcpTransportMapping;->transportStateListeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_14

    .line 115
    monitor-exit p0

    return-void

    .line 111
    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public abstract close()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected fireConnectionStateChanged(Lorg/snmp4j/transport/TransportStateEvent;)V
    .registers 8
    .parameter "change"

    .prologue
    .line 125
    sget-object v3, Lorg/snmp4j/transport/TcpTransportMapping;->logger:Lorg/snmp4j/log/LogAdapter;

    invoke-interface {v3}, Lorg/snmp4j/log/LogAdapter;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_20

    .line 126
    sget-object v3, Lorg/snmp4j/transport/TcpTransportMapping;->logger:Lorg/snmp4j/log/LogAdapter;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Firing transport state event: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/snmp4j/log/LogAdapter;->debug(Ljava/lang/Object;)V

    .line 128
    :cond_20
    iget-object v3, p0, Lorg/snmp4j/transport/TcpTransportMapping;->transportStateListeners:Ljava/util/Vector;

    if-eqz v3, :cond_39

    .line 129
    iget-object v2, p0, Lorg/snmp4j/transport/TcpTransportMapping;->transportStateListeners:Ljava/util/Vector;

    .line 130
    .local v2, listeners:Ljava/util/Vector;
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v0

    .line 131
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2b
    if-ge v1, v0, :cond_39

    .line 132
    invoke-virtual {v2, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/snmp4j/transport/TransportStateListener;

    invoke-interface {v3, p1}, Lorg/snmp4j/transport/TransportStateListener;->connectionStateChanged(Lorg/snmp4j/transport/TransportStateEvent;)V

    .line 131
    add-int/lit8 v1, v1, 0x1

    goto :goto_2b

    .line 136
    .end local v0           #count:I
    .end local v1           #i:I
    .end local v2           #listeners:Ljava/util/Vector;
    :cond_39
    return-void
.end method

.method public getAddress()Lorg/snmp4j/smi/TcpAddress;
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Lorg/snmp4j/transport/TcpTransportMapping;->tcpAddress:Lorg/snmp4j/smi/TcpAddress;

    return-object v0
.end method

.method public getListenAddress()Lorg/snmp4j/smi/Address;
    .registers 2

    .prologue
    .line 69
    iget-object v0, p0, Lorg/snmp4j/transport/TcpTransportMapping;->tcpAddress:Lorg/snmp4j/smi/TcpAddress;

    return-object v0
.end method

.method public abstract getMessageLengthDecoder()Lorg/snmp4j/transport/MessageLengthDecoder;
.end method

.method public getSupportedAddressClass()Ljava/lang/Class;
    .registers 2

    .prologue
    .line 54
    sget-object v0, Lorg/snmp4j/transport/TcpTransportMapping;->class$org$snmp4j$smi$TcpAddress:Ljava/lang/Class;

    if-nez v0, :cond_d

    const-string v0, "org.snmp4j.smi.TcpAddress"

    invoke-static {v0}, Lorg/snmp4j/transport/TcpTransportMapping;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/snmp4j/transport/TcpTransportMapping;->class$org$snmp4j$smi$TcpAddress:Ljava/lang/Class;

    :goto_c
    return-object v0

    :cond_d
    sget-object v0, Lorg/snmp4j/transport/TcpTransportMapping;->class$org$snmp4j$smi$TcpAddress:Ljava/lang/Class;

    goto :goto_c
.end method

.method public abstract listen()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public declared-synchronized removeTransportStateListener(Lorg/snmp4j/transport/TransportStateListener;)V
    .registers 3
    .parameter "l"

    .prologue
    .line 119
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lorg/snmp4j/transport/TcpTransportMapping;->transportStateListeners:Ljava/util/Vector;

    if-eqz v0, :cond_a

    .line 120
    iget-object v0, p0, Lorg/snmp4j/transport/TcpTransportMapping;->transportStateListeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 122
    :cond_a
    monitor-exit p0

    return-void

    .line 119
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public abstract sendMessage(Lorg/snmp4j/smi/Address;[B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract setConnectionTimeout(J)V
.end method

.method public abstract setMessageLengthDecoder(Lorg/snmp4j/transport/MessageLengthDecoder;)V
.end method

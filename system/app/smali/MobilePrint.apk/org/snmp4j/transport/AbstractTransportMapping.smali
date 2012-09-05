.class public abstract Lorg/snmp4j/transport/AbstractTransportMapping;
.super Ljava/lang/Object;
.source "AbstractTransportMapping.java"

# interfaces
.implements Lorg/snmp4j/TransportMapping;


# instance fields
.field protected asyncMsgProcessingSupported:Z

.field protected maxInboundMessageSize:I

.field protected transportListener:Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 40
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lorg/snmp4j/transport/AbstractTransportMapping;->transportListener:Ljava/util/Vector;

    .line 43
    const v0, 0xffff

    iput v0, p0, Lorg/snmp4j/transport/AbstractTransportMapping;->maxInboundMessageSize:I

    .line 44
    iput-boolean v1, p0, Lorg/snmp4j/transport/AbstractTransportMapping;->asyncMsgProcessingSupported:Z

    return-void
.end method


# virtual methods
.method public addMessageDispatcher(Lorg/snmp4j/MessageDispatcher;)V
    .registers 2
    .parameter "dispatcher"

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lorg/snmp4j/transport/AbstractTransportMapping;->addTransportListener(Lorg/snmp4j/transport/TransportListener;)V

    .line 53
    return-void
.end method

.method public declared-synchronized addTransportListener(Lorg/snmp4j/transport/TransportListener;)V
    .registers 4
    .parameter "l"

    .prologue
    .line 60
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lorg/snmp4j/transport/AbstractTransportMapping;->transportListener:Ljava/util/Vector;

    if-nez v1, :cond_18

    new-instance v0, Ljava/util/Vector;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    .line 62
    .local v0, v:Ljava/util/Vector;
    :goto_b
    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 63
    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 64
    iput-object v0, p0, Lorg/snmp4j/transport/AbstractTransportMapping;->transportListener:Ljava/util/Vector;
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_22

    .line 66
    :cond_16
    monitor-exit p0

    return-void

    .line 60
    .end local v0           #v:Ljava/util/Vector;
    :cond_18
    :try_start_18
    iget-object v1, p0, Lorg/snmp4j/transport/AbstractTransportMapping;->transportListener:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Vector;
    :try_end_20
    .catchall {:try_start_18 .. :try_end_20} :catchall_22

    move-object v0, v1

    goto :goto_b

    :catchall_22
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public abstract close()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected fireProcessMessage(Lorg/snmp4j/smi/Address;Ljava/nio/ByteBuffer;)V
    .registers 6
    .parameter "address"
    .parameter "buf"

    .prologue
    .line 77
    iget-object v2, p0, Lorg/snmp4j/transport/AbstractTransportMapping;->transportListener:Ljava/util/Vector;

    if-eqz v2, :cond_20

    .line 78
    const/4 v0, 0x0

    .local v0, i:I
    :goto_5
    iget-object v2, p0, Lorg/snmp4j/transport/AbstractTransportMapping;->transportListener:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v0, v2, :cond_20

    .line 80
    monitor-enter p0

    .line 81
    :try_start_e
    iget-object v2, p0, Lorg/snmp4j/transport/AbstractTransportMapping;->transportListener:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/snmp4j/transport/TransportListener;

    .line 82
    .local v1, l:Lorg/snmp4j/transport/TransportListener;
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_e .. :try_end_17} :catchall_1d

    .line 83
    invoke-interface {v1, p0, p1, p2}, Lorg/snmp4j/transport/TransportListener;->processMessage(Lorg/snmp4j/TransportMapping;Lorg/snmp4j/smi/Address;Ljava/nio/ByteBuffer;)V

    .line 78
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 82
    .end local v1           #l:Lorg/snmp4j/transport/TransportListener;
    :catchall_1d
    move-exception v2

    :try_start_1e
    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    throw v2

    .line 86
    .end local v0           #i:I
    :cond_20
    return-void
.end method

.method public getMaxInboundMessageSize()I
    .registers 2

    .prologue
    .line 93
    iget v0, p0, Lorg/snmp4j/transport/AbstractTransportMapping;->maxInboundMessageSize:I

    return v0
.end method

.method public abstract getSupportedAddressClass()Ljava/lang/Class;
.end method

.method public isAsyncMsgProcessingSupported()Z
    .registers 2

    .prologue
    .line 106
    iget-boolean v0, p0, Lorg/snmp4j/transport/AbstractTransportMapping;->asyncMsgProcessingSupported:Z

    return v0
.end method

.method public abstract listen()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public removeMessageDispatcher(Lorg/snmp4j/MessageDispatcher;)V
    .registers 2
    .parameter "dispatcher"

    .prologue
    .line 56
    invoke-virtual {p0, p1}, Lorg/snmp4j/transport/AbstractTransportMapping;->removeTransportListener(Lorg/snmp4j/transport/TransportListener;)V

    .line 57
    return-void
.end method

.method public declared-synchronized removeTransportListener(Lorg/snmp4j/transport/TransportListener;)V
    .registers 4
    .parameter "l"

    .prologue
    .line 69
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lorg/snmp4j/transport/AbstractTransportMapping;->transportListener:Ljava/util/Vector;

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lorg/snmp4j/transport/AbstractTransportMapping;->transportListener:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 70
    iget-object v1, p0, Lorg/snmp4j/transport/AbstractTransportMapping;->transportListener:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    .line 71
    .local v0, v:Ljava/util/Vector;
    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    .line 72
    iput-object v0, p0, Lorg/snmp4j/transport/AbstractTransportMapping;->transportListener:Ljava/util/Vector;
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_1c

    .line 74
    .end local v0           #v:Ljava/util/Vector;
    :cond_1a
    monitor-exit p0

    return-void

    .line 69
    :catchall_1c
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public abstract sendMessage(Lorg/snmp4j/smi/Address;[B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public setAsyncMsgProcessingSupported(Z)V
    .registers 2
    .parameter "asyncMsgProcessingSupported"

    .prologue
    .line 123
    iput-boolean p1, p0, Lorg/snmp4j/transport/AbstractTransportMapping;->asyncMsgProcessingSupported:Z

    .line 124
    return-void
.end method

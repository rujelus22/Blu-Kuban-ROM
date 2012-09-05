.class public Lorg/snmp4j/util/MultiThreadedMessageDispatcher;
.super Ljava/lang/Object;
.source "MultiThreadedMessageDispatcher.java"

# interfaces
.implements Lorg/snmp4j/MessageDispatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/snmp4j/util/MultiThreadedMessageDispatcher$MessageTask;
    }
.end annotation


# instance fields
.field private dispatcher:Lorg/snmp4j/MessageDispatcher;

.field private threadPool:Lorg/snmp4j/util/WorkerPool;


# direct methods
.method public constructor <init>(Lorg/snmp4j/util/WorkerPool;Lorg/snmp4j/MessageDispatcher;)V
    .registers 3
    .parameter "workerPool"
    .parameter "decoratedDispatcher"

    .prologue
    .line 73
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lorg/snmp4j/util/MultiThreadedMessageDispatcher;->threadPool:Lorg/snmp4j/util/WorkerPool;

    .line 75
    iput-object p2, p0, Lorg/snmp4j/util/MultiThreadedMessageDispatcher;->dispatcher:Lorg/snmp4j/MessageDispatcher;

    .line 76
    return-void
.end method

.method static access$000(Lorg/snmp4j/util/MultiThreadedMessageDispatcher;)Lorg/snmp4j/MessageDispatcher;
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lorg/snmp4j/util/MultiThreadedMessageDispatcher;->dispatcher:Lorg/snmp4j/MessageDispatcher;

    return-object v0
.end method


# virtual methods
.method public addCommandResponder(Lorg/snmp4j/CommandResponder;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 107
    iget-object v0, p0, Lorg/snmp4j/util/MultiThreadedMessageDispatcher;->dispatcher:Lorg/snmp4j/MessageDispatcher;

    invoke-interface {v0, p1}, Lorg/snmp4j/MessageDispatcher;->addCommandResponder(Lorg/snmp4j/CommandResponder;)V

    .line 108
    return-void
.end method

.method public addMessageProcessingModel(Lorg/snmp4j/mp/MessageProcessingModel;)V
    .registers 3
    .parameter "model"

    .prologue
    .line 83
    iget-object v0, p0, Lorg/snmp4j/util/MultiThreadedMessageDispatcher;->dispatcher:Lorg/snmp4j/MessageDispatcher;

    invoke-interface {v0, p1}, Lorg/snmp4j/MessageDispatcher;->addMessageProcessingModel(Lorg/snmp4j/mp/MessageProcessingModel;)V

    .line 84
    return-void
.end method

.method public addTransportMapping(Lorg/snmp4j/TransportMapping;)V
    .registers 3
    .parameter "transport"

    .prologue
    .line 95
    iget-object v0, p0, Lorg/snmp4j/util/MultiThreadedMessageDispatcher;->dispatcher:Lorg/snmp4j/MessageDispatcher;

    invoke-interface {v0, p1}, Lorg/snmp4j/MessageDispatcher;->addTransportMapping(Lorg/snmp4j/TransportMapping;)V

    .line 96
    return-void
.end method

.method public getMessageProcessingModel(I)Lorg/snmp4j/mp/MessageProcessingModel;
    .registers 3
    .parameter "messageProcessingModel"

    .prologue
    .line 91
    iget-object v0, p0, Lorg/snmp4j/util/MultiThreadedMessageDispatcher;->dispatcher:Lorg/snmp4j/MessageDispatcher;

    invoke-interface {v0, p1}, Lorg/snmp4j/MessageDispatcher;->getMessageProcessingModel(I)Lorg/snmp4j/mp/MessageProcessingModel;

    move-result-object v0

    return-object v0
.end method

.method public getNextRequestID()I
    .registers 2

    .prologue
    .line 79
    iget-object v0, p0, Lorg/snmp4j/util/MultiThreadedMessageDispatcher;->dispatcher:Lorg/snmp4j/MessageDispatcher;

    invoke-interface {v0}, Lorg/snmp4j/MessageDispatcher;->getNextRequestID()I

    move-result v0

    return v0
.end method

.method public getTransport(Lorg/snmp4j/smi/Address;)Lorg/snmp4j/TransportMapping;
    .registers 3
    .parameter "destAddress"

    .prologue
    .line 192
    iget-object v0, p0, Lorg/snmp4j/util/MultiThreadedMessageDispatcher;->dispatcher:Lorg/snmp4j/MessageDispatcher;

    invoke-interface {v0, p1}, Lorg/snmp4j/MessageDispatcher;->getTransport(Lorg/snmp4j/smi/Address;)Lorg/snmp4j/TransportMapping;

    move-result-object v0

    return-object v0
.end method

.method public getTransportMappings()Ljava/util/Collection;
    .registers 2

    .prologue
    .line 103
    iget-object v0, p0, Lorg/snmp4j/util/MultiThreadedMessageDispatcher;->dispatcher:Lorg/snmp4j/MessageDispatcher;

    invoke-interface {v0}, Lorg/snmp4j/MessageDispatcher;->getTransportMappings()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public processMessage(Lorg/snmp4j/TransportMapping;Lorg/snmp4j/smi/Address;Ljava/nio/ByteBuffer;)V
    .registers 6
    .parameter "sourceTransport"
    .parameter "incomingAddress"
    .parameter "wholeMessage"

    .prologue
    .line 182
    new-instance v0, Lorg/snmp4j/asn1/BERInputStream;

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/snmp4j/asn1/BERInputStream;-><init>(Ljava/nio/ByteBuffer;)V

    invoke-virtual {p0, p1, p2, v0}, Lorg/snmp4j/util/MultiThreadedMessageDispatcher;->processMessage(Lorg/snmp4j/TransportMapping;Lorg/snmp4j/smi/Address;Lorg/snmp4j/asn1/BERInputStream;)V

    .line 184
    return-void
.end method

.method public processMessage(Lorg/snmp4j/TransportMapping;Lorg/snmp4j/smi/Address;Lorg/snmp4j/asn1/BERInputStream;)V
    .registers 6
    .parameter "sourceTransport"
    .parameter "incomingAddress"
    .parameter "wholeMessage"

    .prologue
    .line 174
    new-instance v0, Lorg/snmp4j/util/MultiThreadedMessageDispatcher$MessageTask;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/snmp4j/util/MultiThreadedMessageDispatcher$MessageTask;-><init>(Lorg/snmp4j/util/MultiThreadedMessageDispatcher;Lorg/snmp4j/TransportMapping;Lorg/snmp4j/smi/Address;Lorg/snmp4j/asn1/BERInputStream;)V

    .line 177
    .local v0, task:Lorg/snmp4j/util/MultiThreadedMessageDispatcher$MessageTask;
    iget-object v1, p0, Lorg/snmp4j/util/MultiThreadedMessageDispatcher;->threadPool:Lorg/snmp4j/util/WorkerPool;

    invoke-interface {v1, v0}, Lorg/snmp4j/util/WorkerPool;->execute(Lorg/snmp4j/util/WorkerTask;)V

    .line 178
    return-void
.end method

.method public releaseStateReference(ILorg/snmp4j/mp/PduHandle;)V
    .registers 4
    .parameter "messageProcessingModel"
    .parameter "pduHandle"

    .prologue
    .line 188
    iget-object v0, p0, Lorg/snmp4j/util/MultiThreadedMessageDispatcher;->dispatcher:Lorg/snmp4j/MessageDispatcher;

    invoke-interface {v0, p1, p2}, Lorg/snmp4j/MessageDispatcher;->releaseStateReference(ILorg/snmp4j/mp/PduHandle;)V

    .line 189
    return-void
.end method

.method public removeCommandResponder(Lorg/snmp4j/CommandResponder;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 111
    iget-object v0, p0, Lorg/snmp4j/util/MultiThreadedMessageDispatcher;->dispatcher:Lorg/snmp4j/MessageDispatcher;

    invoke-interface {v0, p1}, Lorg/snmp4j/MessageDispatcher;->removeCommandResponder(Lorg/snmp4j/CommandResponder;)V

    .line 112
    return-void
.end method

.method public removeMessageProcessingModel(Lorg/snmp4j/mp/MessageProcessingModel;)V
    .registers 3
    .parameter "model"

    .prologue
    .line 87
    iget-object v0, p0, Lorg/snmp4j/util/MultiThreadedMessageDispatcher;->dispatcher:Lorg/snmp4j/MessageDispatcher;

    invoke-interface {v0, p1}, Lorg/snmp4j/MessageDispatcher;->removeMessageProcessingModel(Lorg/snmp4j/mp/MessageProcessingModel;)V

    .line 88
    return-void
.end method

.method public removeTransportMapping(Lorg/snmp4j/TransportMapping;)Lorg/snmp4j/TransportMapping;
    .registers 3
    .parameter "transport"

    .prologue
    .line 99
    iget-object v0, p0, Lorg/snmp4j/util/MultiThreadedMessageDispatcher;->dispatcher:Lorg/snmp4j/MessageDispatcher;

    invoke-interface {v0, p1}, Lorg/snmp4j/MessageDispatcher;->removeTransportMapping(Lorg/snmp4j/TransportMapping;)Lorg/snmp4j/TransportMapping;

    move-result-object v0

    return-object v0
.end method

.method public returnResponsePdu(II[BILorg/snmp4j/PDU;ILorg/snmp4j/mp/StateReference;Lorg/snmp4j/mp/StatusInformation;)I
    .registers 18
    .parameter "messageProcessingModel"
    .parameter "securityModel"
    .parameter "securityName"
    .parameter "securityLevel"
    .parameter "pdu"
    .parameter "maxSizeResponseScopedPDU"
    .parameter "stateReference"
    .parameter "statusInformation"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/snmp4j/MessageException;
        }
    .end annotation

    .prologue
    .line 162
    iget-object v0, p0, Lorg/snmp4j/util/MultiThreadedMessageDispatcher;->dispatcher:Lorg/snmp4j/MessageDispatcher;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-interface/range {v0 .. v8}, Lorg/snmp4j/MessageDispatcher;->returnResponsePdu(II[BILorg/snmp4j/PDU;ILorg/snmp4j/mp/StateReference;Lorg/snmp4j/mp/StatusInformation;)I

    move-result v0

    return v0
.end method

.method public sendPdu(Lorg/snmp4j/TransportMapping;Lorg/snmp4j/smi/Address;II[BILorg/snmp4j/PDU;Z)Lorg/snmp4j/mp/PduHandle;
    .registers 18
    .parameter "transportMapping"
    .parameter "transportAddress"
    .parameter "messageProcessingModel"
    .parameter "securityModel"
    .parameter "securityName"
    .parameter "securityLevel"
    .parameter "pdu"
    .parameter "expectResponse"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/snmp4j/MessageException;
        }
    .end annotation

    .prologue
    .line 134
    iget-object v0, p0, Lorg/snmp4j/util/MultiThreadedMessageDispatcher;->dispatcher:Lorg/snmp4j/MessageDispatcher;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    invoke-interface/range {v0 .. v8}, Lorg/snmp4j/MessageDispatcher;->sendPdu(Lorg/snmp4j/TransportMapping;Lorg/snmp4j/smi/Address;II[BILorg/snmp4j/PDU;Z)Lorg/snmp4j/mp/PduHandle;

    move-result-object v0

    return-object v0
.end method

.method public sendPdu(Lorg/snmp4j/TransportMapping;Lorg/snmp4j/smi/Address;II[BILorg/snmp4j/PDU;ZLorg/snmp4j/mp/PduHandleCallback;)Lorg/snmp4j/mp/PduHandle;
    .registers 20
    .parameter "transportMapping"
    .parameter "transportAddress"
    .parameter "messageProcessingModel"
    .parameter "securityModel"
    .parameter "securityName"
    .parameter "securityLevel"
    .parameter "pdu"
    .parameter "expectResponse"
    .parameter "callback"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/snmp4j/MessageException;
        }
    .end annotation

    .prologue
    .line 146
    iget-object v0, p0, Lorg/snmp4j/util/MultiThreadedMessageDispatcher;->dispatcher:Lorg/snmp4j/MessageDispatcher;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    invoke-interface/range {v0 .. v9}, Lorg/snmp4j/MessageDispatcher;->sendPdu(Lorg/snmp4j/TransportMapping;Lorg/snmp4j/smi/Address;II[BILorg/snmp4j/PDU;ZLorg/snmp4j/mp/PduHandleCallback;)Lorg/snmp4j/mp/PduHandle;

    move-result-object v0

    return-object v0
.end method

.method public sendPdu(Lorg/snmp4j/smi/Address;II[BILorg/snmp4j/PDU;Z)Lorg/snmp4j/mp/PduHandle;
    .registers 16
    .parameter "transportAddress"
    .parameter "messageProcessingModel"
    .parameter "securityModel"
    .parameter "securityName"
    .parameter "securityLevel"
    .parameter "pdu"
    .parameter "expectResponse"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/snmp4j/MessageException;
        }
    .end annotation

    .prologue
    .line 121
    iget-object v0, p0, Lorg/snmp4j/util/MultiThreadedMessageDispatcher;->dispatcher:Lorg/snmp4j/MessageDispatcher;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    move v7, p7

    invoke-interface/range {v0 .. v7}, Lorg/snmp4j/MessageDispatcher;->sendPdu(Lorg/snmp4j/smi/Address;II[BILorg/snmp4j/PDU;Z)Lorg/snmp4j/mp/PduHandle;

    move-result-object v0

    return-object v0
.end method

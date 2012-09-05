.class public Lorg/snmp4j/CommandResponderEvent;
.super Ljava/util/EventObject;
.source "CommandResponderEvent.java"


# static fields
.field private static final serialVersionUID:J = 0x1b549d74590a5871L


# instance fields
.field private maxSizeResponsePDU:I

.field private messageProcessingModel:I

.field private pdu:Lorg/snmp4j/PDU;

.field private pduHandle:Lorg/snmp4j/mp/PduHandle;

.field private peerAddress:Lorg/snmp4j/smi/Address;

.field private processed:Z

.field private securityLevel:I

.field private securityModel:I

.field private securityName:[B

.field private stateReference:Lorg/snmp4j/mp/StateReference;

.field private transient transportMapping:Lorg/snmp4j/TransportMapping;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lorg/snmp4j/CommandResponderEvent;)V
    .registers 4
    .parameter "source"
    .parameter "other"

    .prologue
    .line 114
    invoke-direct {p0, p1}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    .line 115
    iget-object v0, p2, Lorg/snmp4j/CommandResponderEvent;->transportMapping:Lorg/snmp4j/TransportMapping;

    invoke-virtual {p0, v0}, Lorg/snmp4j/CommandResponderEvent;->setTransportMapping(Lorg/snmp4j/TransportMapping;)V

    .line 116
    iget v0, p2, Lorg/snmp4j/CommandResponderEvent;->messageProcessingModel:I

    invoke-virtual {p0, v0}, Lorg/snmp4j/CommandResponderEvent;->setMessageProcessingModel(I)V

    .line 117
    iget v0, p2, Lorg/snmp4j/CommandResponderEvent;->securityModel:I

    invoke-virtual {p0, v0}, Lorg/snmp4j/CommandResponderEvent;->setSecurityModel(I)V

    .line 118
    iget-object v0, p2, Lorg/snmp4j/CommandResponderEvent;->securityName:[B

    invoke-virtual {p0, v0}, Lorg/snmp4j/CommandResponderEvent;->setSecurityName([B)V

    .line 119
    iget v0, p2, Lorg/snmp4j/CommandResponderEvent;->securityLevel:I

    invoke-virtual {p0, v0}, Lorg/snmp4j/CommandResponderEvent;->setSecurityLevel(I)V

    .line 120
    iget-object v0, p2, Lorg/snmp4j/CommandResponderEvent;->pduHandle:Lorg/snmp4j/mp/PduHandle;

    invoke-virtual {p0, v0}, Lorg/snmp4j/CommandResponderEvent;->setPduHandle(Lorg/snmp4j/mp/PduHandle;)V

    .line 121
    iget-object v0, p2, Lorg/snmp4j/CommandResponderEvent;->pdu:Lorg/snmp4j/PDU;

    invoke-virtual {p0, v0}, Lorg/snmp4j/CommandResponderEvent;->setPDU(Lorg/snmp4j/PDU;)V

    .line 122
    iget v0, p2, Lorg/snmp4j/CommandResponderEvent;->maxSizeResponsePDU:I

    invoke-virtual {p0, v0}, Lorg/snmp4j/CommandResponderEvent;->setMaxSizeResponsePDU(I)V

    .line 123
    iget-object v0, p2, Lorg/snmp4j/CommandResponderEvent;->stateReference:Lorg/snmp4j/mp/StateReference;

    invoke-virtual {p0, v0}, Lorg/snmp4j/CommandResponderEvent;->setStateReference(Lorg/snmp4j/mp/StateReference;)V

    .line 124
    invoke-virtual {p2}, Lorg/snmp4j/CommandResponderEvent;->getPeerAddress()Lorg/snmp4j/smi/Address;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/snmp4j/CommandResponderEvent;->setPeerAddress(Lorg/snmp4j/smi/Address;)V

    .line 125
    return-void
.end method

.method public constructor <init>(Lorg/snmp4j/MessageDispatcher;Lorg/snmp4j/TransportMapping;Lorg/snmp4j/smi/Address;II[BILorg/snmp4j/mp/PduHandle;Lorg/snmp4j/PDU;ILorg/snmp4j/mp/StateReference;)V
    .registers 12
    .parameter "messageDispatcher"
    .parameter "transportMapping"
    .parameter "sourceAddress"
    .parameter "messageProcessingModel"
    .parameter "securityModel"
    .parameter "securityName"
    .parameter "securityLevel"
    .parameter "pduHandle"
    .parameter "pdu"
    .parameter "maxSizeResponseScopedPDU"
    .parameter "stateReference"

    .prologue
    .line 90
    invoke-direct {p0, p1}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    .line 91
    invoke-virtual {p0, p2}, Lorg/snmp4j/CommandResponderEvent;->setTransportMapping(Lorg/snmp4j/TransportMapping;)V

    .line 92
    invoke-virtual {p0, p4}, Lorg/snmp4j/CommandResponderEvent;->setMessageProcessingModel(I)V

    .line 93
    invoke-virtual {p0, p5}, Lorg/snmp4j/CommandResponderEvent;->setSecurityModel(I)V

    .line 94
    invoke-virtual {p0, p6}, Lorg/snmp4j/CommandResponderEvent;->setSecurityName([B)V

    .line 95
    invoke-virtual {p0, p7}, Lorg/snmp4j/CommandResponderEvent;->setSecurityLevel(I)V

    .line 96
    invoke-virtual {p0, p8}, Lorg/snmp4j/CommandResponderEvent;->setPduHandle(Lorg/snmp4j/mp/PduHandle;)V

    .line 97
    invoke-virtual {p0, p9}, Lorg/snmp4j/CommandResponderEvent;->setPDU(Lorg/snmp4j/PDU;)V

    .line 98
    invoke-virtual {p0, p10}, Lorg/snmp4j/CommandResponderEvent;->setMaxSizeResponsePDU(I)V

    .line 99
    invoke-virtual {p0, p11}, Lorg/snmp4j/CommandResponderEvent;->setStateReference(Lorg/snmp4j/mp/StateReference;)V

    .line 100
    invoke-virtual {p0, p3}, Lorg/snmp4j/CommandResponderEvent;->setPeerAddress(Lorg/snmp4j/smi/Address;)V

    .line 101
    return-void
.end method


# virtual methods
.method public getMaxSizeResponsePDU()I
    .registers 2

    .prologue
    .line 157
    iget v0, p0, Lorg/snmp4j/CommandResponderEvent;->maxSizeResponsePDU:I

    return v0
.end method

.method public getMessageDispatcher()Lorg/snmp4j/MessageDispatcher;
    .registers 2

    .prologue
    .line 134
    invoke-super {p0}, Ljava/util/EventObject;->getSource()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/snmp4j/MessageDispatcher;

    return-object v0
.end method

.method public getMessageProcessingModel()I
    .registers 2

    .prologue
    .line 181
    iget v0, p0, Lorg/snmp4j/CommandResponderEvent;->messageProcessingModel:I

    return v0
.end method

.method public getPDU()Lorg/snmp4j/PDU;
    .registers 2

    .prologue
    .line 175
    iget-object v0, p0, Lorg/snmp4j/CommandResponderEvent;->pdu:Lorg/snmp4j/PDU;

    return-object v0
.end method

.method public getPduHandle()Lorg/snmp4j/mp/PduHandle;
    .registers 2

    .prologue
    .line 163
    iget-object v0, p0, Lorg/snmp4j/CommandResponderEvent;->pduHandle:Lorg/snmp4j/mp/PduHandle;

    return-object v0
.end method

.method public getPeerAddress()Lorg/snmp4j/smi/Address;
    .registers 2

    .prologue
    .line 217
    iget-object v0, p0, Lorg/snmp4j/CommandResponderEvent;->peerAddress:Lorg/snmp4j/smi/Address;

    return-object v0
.end method

.method public getSecurityLevel()I
    .registers 2

    .prologue
    .line 151
    iget v0, p0, Lorg/snmp4j/CommandResponderEvent;->securityLevel:I

    return v0
.end method

.method public getSecurityModel()I
    .registers 2

    .prologue
    .line 142
    iget v0, p0, Lorg/snmp4j/CommandResponderEvent;->securityModel:I

    return v0
.end method

.method public getSecurityName()[B
    .registers 2

    .prologue
    .line 187
    iget-object v0, p0, Lorg/snmp4j/CommandResponderEvent;->securityName:[B

    return-object v0
.end method

.method public getStateReference()Lorg/snmp4j/mp/StateReference;
    .registers 2

    .prologue
    .line 169
    iget-object v0, p0, Lorg/snmp4j/CommandResponderEvent;->stateReference:Lorg/snmp4j/mp/StateReference;

    return-object v0
.end method

.method public getTransportMapping()Lorg/snmp4j/TransportMapping;
    .registers 2

    .prologue
    .line 227
    iget-object v0, p0, Lorg/snmp4j/CommandResponderEvent;->transportMapping:Lorg/snmp4j/TransportMapping;

    return-object v0
.end method

.method public isProcessed()Z
    .registers 2

    .prologue
    .line 208
    iget-boolean v0, p0, Lorg/snmp4j/CommandResponderEvent;->processed:Z

    return v0
.end method

.method public setMaxSizeResponsePDU(I)V
    .registers 2
    .parameter "maxSizeResponsePDU"

    .prologue
    .line 154
    iput p1, p0, Lorg/snmp4j/CommandResponderEvent;->maxSizeResponsePDU:I

    .line 155
    return-void
.end method

.method public setMessageProcessingModel(I)V
    .registers 2
    .parameter "messageProcessingModel"

    .prologue
    .line 178
    iput p1, p0, Lorg/snmp4j/CommandResponderEvent;->messageProcessingModel:I

    .line 179
    return-void
.end method

.method public setPDU(Lorg/snmp4j/PDU;)V
    .registers 2
    .parameter "pdu"

    .prologue
    .line 172
    iput-object p1, p0, Lorg/snmp4j/CommandResponderEvent;->pdu:Lorg/snmp4j/PDU;

    .line 173
    return-void
.end method

.method public setPduHandle(Lorg/snmp4j/mp/PduHandle;)V
    .registers 2
    .parameter "pduHandle"

    .prologue
    .line 160
    iput-object p1, p0, Lorg/snmp4j/CommandResponderEvent;->pduHandle:Lorg/snmp4j/mp/PduHandle;

    .line 161
    return-void
.end method

.method public setPeerAddress(Lorg/snmp4j/smi/Address;)V
    .registers 2
    .parameter "peerAddress"

    .prologue
    .line 236
    iput-object p1, p0, Lorg/snmp4j/CommandResponderEvent;->peerAddress:Lorg/snmp4j/smi/Address;

    .line 237
    return-void
.end method

.method public setProcessed(Z)V
    .registers 2
    .parameter "processed"

    .prologue
    .line 198
    iput-boolean p1, p0, Lorg/snmp4j/CommandResponderEvent;->processed:Z

    .line 199
    return-void
.end method

.method public setSecurityLevel(I)V
    .registers 2
    .parameter "securityLevel"

    .prologue
    .line 148
    iput p1, p0, Lorg/snmp4j/CommandResponderEvent;->securityLevel:I

    .line 149
    return-void
.end method

.method public setSecurityModel(I)V
    .registers 2
    .parameter "securityModel"

    .prologue
    .line 145
    iput p1, p0, Lorg/snmp4j/CommandResponderEvent;->securityModel:I

    .line 146
    return-void
.end method

.method public setSecurityName([B)V
    .registers 2
    .parameter "securityName"

    .prologue
    .line 184
    iput-object p1, p0, Lorg/snmp4j/CommandResponderEvent;->securityName:[B

    .line 185
    return-void
.end method

.method public setStateReference(Lorg/snmp4j/mp/StateReference;)V
    .registers 2
    .parameter "stateReference"

    .prologue
    .line 166
    iput-object p1, p0, Lorg/snmp4j/CommandResponderEvent;->stateReference:Lorg/snmp4j/mp/StateReference;

    .line 167
    return-void
.end method

.method protected setTransportMapping(Lorg/snmp4j/TransportMapping;)V
    .registers 2
    .parameter "transportMapping"

    .prologue
    .line 240
    iput-object p1, p0, Lorg/snmp4j/CommandResponderEvent;->transportMapping:Lorg/snmp4j/TransportMapping;

    .line 241
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 244
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 245
    .local v0, buf:Ljava/lang/StringBuffer;
    const-string v1, "CommandResponderEvent["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 246
    const-string v1, "transportMapping="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 247
    iget-object v1, p0, Lorg/snmp4j/CommandResponderEvent;->transportMapping:Lorg/snmp4j/TransportMapping;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 248
    const-string v1, "peerAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 249
    iget-object v1, p0, Lorg/snmp4j/CommandResponderEvent;->peerAddress:Lorg/snmp4j/smi/Address;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 250
    const-string v1, ", processed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 251
    iget-boolean v1, p0, Lorg/snmp4j/CommandResponderEvent;->processed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 252
    const-string v1, ", pdu=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 253
    iget-object v1, p0, Lorg/snmp4j/CommandResponderEvent;->pdu:Lorg/snmp4j/PDU;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 254
    const-string v1, "], securityName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 255
    new-instance v1, Lorg/snmp4j/smi/OctetString;

    iget-object v2, p0, Lorg/snmp4j/CommandResponderEvent;->securityName:[B

    invoke-direct {v1, v2}, Lorg/snmp4j/smi/OctetString;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 256
    const-string v1, ", securityModel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 257
    iget v1, p0, Lorg/snmp4j/CommandResponderEvent;->securityModel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 258
    const-string v1, ", securityLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 259
    iget v1, p0, Lorg/snmp4j/CommandResponderEvent;->securityLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 260
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 261
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

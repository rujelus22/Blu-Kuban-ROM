.class public Lorg/snmp4j/mp/StateReference;
.super Ljava/lang/Object;
.source "StateReference.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x667d8e44122c8a6bL


# instance fields
.field private address:Lorg/snmp4j/smi/Address;

.field private contextEngineID:[B

.field private contextName:[B

.field private errorCode:I

.field private maxSizeResponseScopedPDU:I

.field private msgFlags:I

.field private msgID:I

.field private pduHandle:Lorg/snmp4j/mp/PduHandle;

.field private securityEngineID:[B

.field private securityLevel:I

.field private securityModel:Lorg/snmp4j/security/SecurityModel;

.field private securityName:[B

.field private securityStateReference:Lorg/snmp4j/security/SecurityStateReference;

.field private transient transportMapping:Lorg/snmp4j/TransportMapping;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 61
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput v0, p0, Lorg/snmp4j/mp/StateReference;->errorCode:I

    .line 62
    return-void
.end method

.method public constructor <init>(IIILorg/snmp4j/mp/PduHandle;Lorg/snmp4j/smi/Address;Lorg/snmp4j/TransportMapping;[BLorg/snmp4j/security/SecurityModel;[BI[B[BLorg/snmp4j/security/SecurityStateReference;I)V
    .registers 16
    .parameter "msgID"
    .parameter "msgFlags"
    .parameter "maxSizeResponseScopedPDU"
    .parameter "pduHandle"
    .parameter "peerAddress"
    .parameter "peerTransport"
    .parameter "secEngineID"
    .parameter "secModel"
    .parameter "secName"
    .parameter "secLevel"
    .parameter "contextEngineID"
    .parameter "contextName"
    .parameter "secStateReference"
    .parameter "errorCode"

    .prologue
    .line 120
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput v0, p0, Lorg/snmp4j/mp/StateReference;->errorCode:I

    .line 121
    iput p1, p0, Lorg/snmp4j/mp/StateReference;->msgID:I

    .line 122
    iput p2, p0, Lorg/snmp4j/mp/StateReference;->msgFlags:I

    .line 123
    iput p3, p0, Lorg/snmp4j/mp/StateReference;->maxSizeResponseScopedPDU:I

    .line 124
    iput-object p4, p0, Lorg/snmp4j/mp/StateReference;->pduHandle:Lorg/snmp4j/mp/PduHandle;

    .line 125
    iput-object p5, p0, Lorg/snmp4j/mp/StateReference;->address:Lorg/snmp4j/smi/Address;

    .line 126
    iput-object p6, p0, Lorg/snmp4j/mp/StateReference;->transportMapping:Lorg/snmp4j/TransportMapping;

    .line 127
    iput-object p7, p0, Lorg/snmp4j/mp/StateReference;->securityEngineID:[B

    .line 128
    iput-object p8, p0, Lorg/snmp4j/mp/StateReference;->securityModel:Lorg/snmp4j/security/SecurityModel;

    .line 129
    iput-object p9, p0, Lorg/snmp4j/mp/StateReference;->securityName:[B

    .line 130
    iput p10, p0, Lorg/snmp4j/mp/StateReference;->securityLevel:I

    .line 131
    iput-object p11, p0, Lorg/snmp4j/mp/StateReference;->contextEngineID:[B

    .line 132
    iput-object p12, p0, Lorg/snmp4j/mp/StateReference;->contextName:[B

    .line 133
    iput-object p13, p0, Lorg/snmp4j/mp/StateReference;->securityStateReference:Lorg/snmp4j/security/SecurityStateReference;

    .line 134
    iput p14, p0, Lorg/snmp4j/mp/StateReference;->errorCode:I

    .line 135
    return-void
.end method

.method public constructor <init>(Lorg/snmp4j/mp/PduHandle;Lorg/snmp4j/smi/Address;Lorg/snmp4j/TransportMapping;Lorg/snmp4j/security/SecurityModel;[BI)V
    .registers 22
    .parameter "pduHandle"
    .parameter "peerAddress"
    .parameter "peerTransport"
    .parameter "secModel"
    .parameter "secName"
    .parameter "errorCode"

    .prologue
    .line 83
    const/4 v1, 0x0

    const/4 v2, 0x0

    const v3, 0xffff

    const/4 v7, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v0, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move/from16 v14, p6

    invoke-direct/range {v0 .. v14}, Lorg/snmp4j/mp/StateReference;-><init>(IIILorg/snmp4j/mp/PduHandle;Lorg/snmp4j/smi/Address;Lorg/snmp4j/TransportMapping;[BLorg/snmp4j/security/SecurityModel;[BI[B[BLorg/snmp4j/security/SecurityStateReference;I)V

    .line 86
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter "o"

    .prologue
    const/4 v1, 0x0

    .line 234
    instance-of v2, p1, Lorg/snmp4j/mp/StateReference;

    if-eqz v2, :cond_5f

    move-object v0, p1

    .line 235
    check-cast v0, Lorg/snmp4j/mp/StateReference;

    .line 236
    .local v0, other:Lorg/snmp4j/mp/StateReference;
    iget v2, p0, Lorg/snmp4j/mp/StateReference;->msgID:I

    iget v3, v0, Lorg/snmp4j/mp/StateReference;->msgID:I

    if-ne v2, v3, :cond_16

    iget-object v2, p0, Lorg/snmp4j/mp/StateReference;->pduHandle:Lorg/snmp4j/mp/PduHandle;

    if-nez v2, :cond_16

    iget-object v2, v0, Lorg/snmp4j/mp/StateReference;->pduHandle:Lorg/snmp4j/mp/PduHandle;

    if-eqz v2, :cond_5e

    :cond_16
    iget-object v2, p0, Lorg/snmp4j/mp/StateReference;->pduHandle:Lorg/snmp4j/mp/PduHandle;

    if-eqz v2, :cond_5f

    iget-object v2, p0, Lorg/snmp4j/mp/StateReference;->pduHandle:Lorg/snmp4j/mp/PduHandle;

    invoke-virtual {v0}, Lorg/snmp4j/mp/StateReference;->getPduHandle()Lorg/snmp4j/mp/PduHandle;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/snmp4j/mp/PduHandle;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5f

    iget-object v2, p0, Lorg/snmp4j/mp/StateReference;->securityEngineID:[B

    iget-object v3, v0, Lorg/snmp4j/mp/StateReference;->securityEngineID:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_5f

    iget-object v2, p0, Lorg/snmp4j/mp/StateReference;->securityModel:Lorg/snmp4j/security/SecurityModel;

    iget-object v3, v0, Lorg/snmp4j/mp/StateReference;->securityModel:Lorg/snmp4j/security/SecurityModel;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5f

    iget-object v2, p0, Lorg/snmp4j/mp/StateReference;->securityName:[B

    iget-object v3, v0, Lorg/snmp4j/mp/StateReference;->securityName:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_5f

    iget v2, p0, Lorg/snmp4j/mp/StateReference;->securityLevel:I

    iget v3, v0, Lorg/snmp4j/mp/StateReference;->securityLevel:I

    if-ne v2, v3, :cond_5f

    iget-object v2, p0, Lorg/snmp4j/mp/StateReference;->contextEngineID:[B

    iget-object v3, v0, Lorg/snmp4j/mp/StateReference;->contextEngineID:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_5f

    iget-object v2, p0, Lorg/snmp4j/mp/StateReference;->contextName:[B

    iget-object v3, v0, Lorg/snmp4j/mp/StateReference;->contextName:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_5f

    :cond_5e
    const/4 v1, 0x1

    .line 246
    .end local v0           #other:Lorg/snmp4j/mp/StateReference;
    :cond_5f
    return v1
.end method

.method public getAddress()Lorg/snmp4j/smi/Address;
    .registers 2

    .prologue
    .line 142
    iget-object v0, p0, Lorg/snmp4j/mp/StateReference;->address:Lorg/snmp4j/smi/Address;

    return-object v0
.end method

.method public getContextEngineID()[B
    .registers 2

    .prologue
    .line 151
    iget-object v0, p0, Lorg/snmp4j/mp/StateReference;->contextEngineID:[B

    return-object v0
.end method

.method public getContextName()[B
    .registers 2

    .prologue
    .line 157
    iget-object v0, p0, Lorg/snmp4j/mp/StateReference;->contextName:[B

    return-object v0
.end method

.method public getErrorCode()I
    .registers 2

    .prologue
    .line 210
    iget v0, p0, Lorg/snmp4j/mp/StateReference;->errorCode:I

    return v0
.end method

.method public getMaxSizeResponseScopedPDU()I
    .registers 2

    .prologue
    .line 199
    iget v0, p0, Lorg/snmp4j/mp/StateReference;->maxSizeResponseScopedPDU:I

    return v0
.end method

.method public getMsgFlags()I
    .registers 2

    .prologue
    .line 193
    iget v0, p0, Lorg/snmp4j/mp/StateReference;->msgFlags:I

    return v0
.end method

.method public getMsgID()I
    .registers 2

    .prologue
    .line 187
    iget v0, p0, Lorg/snmp4j/mp/StateReference;->msgID:I

    return v0
.end method

.method public getPduHandle()Lorg/snmp4j/mp/PduHandle;
    .registers 2

    .prologue
    .line 202
    iget-object v0, p0, Lorg/snmp4j/mp/StateReference;->pduHandle:Lorg/snmp4j/mp/PduHandle;

    return-object v0
.end method

.method public getSecurityEngineID()[B
    .registers 2

    .prologue
    .line 206
    iget-object v0, p0, Lorg/snmp4j/mp/StateReference;->securityEngineID:[B

    return-object v0
.end method

.method public getSecurityLevel()I
    .registers 2

    .prologue
    .line 175
    iget v0, p0, Lorg/snmp4j/mp/StateReference;->securityLevel:I

    return v0
.end method

.method public getSecurityModel()Lorg/snmp4j/security/SecurityModel;
    .registers 2

    .prologue
    .line 163
    iget-object v0, p0, Lorg/snmp4j/mp/StateReference;->securityModel:Lorg/snmp4j/security/SecurityModel;

    return-object v0
.end method

.method public getSecurityName()[B
    .registers 2

    .prologue
    .line 169
    iget-object v0, p0, Lorg/snmp4j/mp/StateReference;->securityName:[B

    return-object v0
.end method

.method public getSecurityStateReference()Lorg/snmp4j/security/SecurityStateReference;
    .registers 2

    .prologue
    .line 181
    iget-object v0, p0, Lorg/snmp4j/mp/StateReference;->securityStateReference:Lorg/snmp4j/security/SecurityStateReference;

    return-object v0
.end method

.method public getTransportMapping()Lorg/snmp4j/TransportMapping;
    .registers 2

    .prologue
    .line 214
    iget-object v0, p0, Lorg/snmp4j/mp/StateReference;->transportMapping:Lorg/snmp4j/TransportMapping;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 250
    iget v0, p0, Lorg/snmp4j/mp/StateReference;->msgID:I

    return v0
.end method

.method public isReportable()Z
    .registers 2

    .prologue
    .line 138
    iget v0, p0, Lorg/snmp4j/mp/StateReference;->msgFlags:I

    and-int/lit8 v0, v0, 0x4

    if-lez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public setAddress(Lorg/snmp4j/smi/Address;)V
    .registers 2
    .parameter "address"

    .prologue
    .line 145
    iput-object p1, p0, Lorg/snmp4j/mp/StateReference;->address:Lorg/snmp4j/smi/Address;

    .line 146
    return-void
.end method

.method public setContextEngineID([B)V
    .registers 2
    .parameter "contextEngineID"

    .prologue
    .line 148
    iput-object p1, p0, Lorg/snmp4j/mp/StateReference;->contextEngineID:[B

    .line 149
    return-void
.end method

.method public setContextName([B)V
    .registers 2
    .parameter "contextName"

    .prologue
    .line 154
    iput-object p1, p0, Lorg/snmp4j/mp/StateReference;->contextName:[B

    .line 155
    return-void
.end method

.method public setErrorCode(I)V
    .registers 2
    .parameter "errorCode"

    .prologue
    .line 226
    iput p1, p0, Lorg/snmp4j/mp/StateReference;->errorCode:I

    .line 227
    return-void
.end method

.method public setMaxSizeResponseScopedPDU(I)V
    .registers 2
    .parameter "maxSizeResponseScopedPDU"

    .prologue
    .line 196
    iput p1, p0, Lorg/snmp4j/mp/StateReference;->maxSizeResponseScopedPDU:I

    .line 197
    return-void
.end method

.method public setMsgFlags(I)V
    .registers 2
    .parameter "msgFlags"

    .prologue
    .line 190
    iput p1, p0, Lorg/snmp4j/mp/StateReference;->msgFlags:I

    .line 191
    return-void
.end method

.method public setMsgID(I)V
    .registers 2
    .parameter "msgID"

    .prologue
    .line 184
    iput p1, p0, Lorg/snmp4j/mp/StateReference;->msgID:I

    .line 185
    return-void
.end method

.method public setPduHandle(Lorg/snmp4j/mp/PduHandle;)V
    .registers 2
    .parameter "pduHandle"

    .prologue
    .line 218
    iput-object p1, p0, Lorg/snmp4j/mp/StateReference;->pduHandle:Lorg/snmp4j/mp/PduHandle;

    .line 219
    return-void
.end method

.method public setSecurityEngineID([B)V
    .registers 2
    .parameter "securityEngineID"

    .prologue
    .line 222
    iput-object p1, p0, Lorg/snmp4j/mp/StateReference;->securityEngineID:[B

    .line 223
    return-void
.end method

.method public setSecurityLevel(I)V
    .registers 2
    .parameter "securityLevel"

    .prologue
    .line 172
    iput p1, p0, Lorg/snmp4j/mp/StateReference;->securityLevel:I

    .line 173
    return-void
.end method

.method public setSecurityModel(Lorg/snmp4j/security/SecurityModel;)V
    .registers 2
    .parameter "securityModel"

    .prologue
    .line 160
    iput-object p1, p0, Lorg/snmp4j/mp/StateReference;->securityModel:Lorg/snmp4j/security/SecurityModel;

    .line 161
    return-void
.end method

.method public setSecurityName([B)V
    .registers 2
    .parameter "securityName"

    .prologue
    .line 166
    iput-object p1, p0, Lorg/snmp4j/mp/StateReference;->securityName:[B

    .line 167
    return-void
.end method

.method public setSecurityStateReference(Lorg/snmp4j/security/SecurityStateReference;)V
    .registers 2
    .parameter "securityStateReference"

    .prologue
    .line 178
    iput-object p1, p0, Lorg/snmp4j/mp/StateReference;->securityStateReference:Lorg/snmp4j/security/SecurityStateReference;

    .line 179
    return-void
.end method

.method public setTransportMapping(Lorg/snmp4j/TransportMapping;)V
    .registers 2
    .parameter "transportMapping"

    .prologue
    .line 230
    iput-object p1, p0, Lorg/snmp4j/mp/StateReference;->transportMapping:Lorg/snmp4j/TransportMapping;

    .line 231
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 254
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "StateReference[msgID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lorg/snmp4j/mp/StateReference;->msgID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ",pduHandle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/snmp4j/mp/StateReference;->pduHandle:Lorg/snmp4j/mp/PduHandle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ",securityEngineID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/snmp4j/mp/StateReference;->securityEngineID:[B

    invoke-static {v1}, Lorg/snmp4j/smi/OctetString;->fromByteArray([B)Lorg/snmp4j/smi/OctetString;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ",securityModel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/snmp4j/mp/StateReference;->securityModel:Lorg/snmp4j/security/SecurityModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ",securityName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/snmp4j/mp/StateReference;->securityName:[B

    invoke-static {v1}, Lorg/snmp4j/smi/OctetString;->fromByteArray([B)Lorg/snmp4j/smi/OctetString;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ",securityLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lorg/snmp4j/mp/StateReference;->securityLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ",contextEngineID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/snmp4j/mp/StateReference;->contextEngineID:[B

    invoke-static {v1}, Lorg/snmp4j/smi/OctetString;->fromByteArray([B)Lorg/snmp4j/smi/OctetString;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ",contextName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/snmp4j/mp/StateReference;->contextName:[B

    invoke-static {v1}, Lorg/snmp4j/smi/OctetString;->fromByteArray([B)Lorg/snmp4j/smi/OctetString;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

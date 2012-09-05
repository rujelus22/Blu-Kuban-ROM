.class public Lorg/snmp4j/mp/MPv1;
.super Ljava/lang/Object;
.source "MPv1.java"

# interfaces
.implements Lorg/snmp4j/mp/MessageProcessingModel;


# static fields
.field public static final ID:I

.field static class$org$snmp4j$mp$MPv1:Ljava/lang/Class;

.field private static final logger:Lorg/snmp4j/log/LogAdapter;


# instance fields
.field protected incomingPDUFactory:Lorg/snmp4j/util/PDUFactory;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 52
    sget-object v0, Lorg/snmp4j/mp/MPv1;->class$org$snmp4j$mp$MPv1:Ljava/lang/Class;

    if-nez v0, :cond_13

    const-string v0, "org.snmp4j.mp.MPv1"

    invoke-static {v0}, Lorg/snmp4j/mp/MPv1;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/snmp4j/mp/MPv1;->class$org$snmp4j$mp$MPv1:Ljava/lang/Class;

    :goto_c
    invoke-static {v0}, Lorg/snmp4j/log/LogFactory;->getLogger(Ljava/lang/Class;)Lorg/snmp4j/log/LogAdapter;

    move-result-object v0

    sput-object v0, Lorg/snmp4j/mp/MPv1;->logger:Lorg/snmp4j/log/LogAdapter;

    return-void

    :cond_13
    sget-object v0, Lorg/snmp4j/mp/MPv1;->class$org$snmp4j$mp$MPv1:Ljava/lang/Class;

    goto :goto_c
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 64
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Lorg/snmp4j/mp/MPv1$1;

    invoke-direct {v0, p0}, Lorg/snmp4j/mp/MPv1$1;-><init>(Lorg/snmp4j/mp/MPv1;)V

    iput-object v0, p0, Lorg/snmp4j/mp/MPv1;->incomingPDUFactory:Lorg/snmp4j/util/PDUFactory;

    .line 65
    return-void
.end method

.method public constructor <init>(Lorg/snmp4j/util/PDUFactory;)V
    .registers 3
    .parameter "incomingPDUFactory"

    .prologue
    .line 75
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Lorg/snmp4j/mp/MPv1$1;

    invoke-direct {v0, p0}, Lorg/snmp4j/mp/MPv1$1;-><init>(Lorg/snmp4j/mp/MPv1;)V

    iput-object v0, p0, Lorg/snmp4j/mp/MPv1;->incomingPDUFactory:Lorg/snmp4j/util/PDUFactory;

    .line 76
    if-eqz p1, :cond_e

    .line 77
    iput-object p1, p0, Lorg/snmp4j/mp/MPv1;->incomingPDUFactory:Lorg/snmp4j/util/PDUFactory;

    .line 79
    :cond_e
    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .registers 3
    .parameter "x0"

    .prologue
    .line 52
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
.method public getID()I
    .registers 2

    .prologue
    .line 82
    const/4 v0, 0x0

    return v0
.end method

.method public isProtocolVersionSupported(I)Z
    .registers 3
    .parameter "snmpProtocolVersion"

    .prologue
    .line 215
    if-nez p1, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public prepareDataElements(Lorg/snmp4j/MessageDispatcher;Lorg/snmp4j/smi/Address;Lorg/snmp4j/asn1/BERInputStream;Lorg/snmp4j/smi/Integer32;Lorg/snmp4j/smi/Integer32;Lorg/snmp4j/smi/OctetString;Lorg/snmp4j/smi/Integer32;Lorg/snmp4j/MutablePDU;Lorg/snmp4j/mp/PduHandle;Lorg/snmp4j/smi/Integer32;Lorg/snmp4j/mp/StatusInformation;Lorg/snmp4j/mp/MutableStateReference;)I
    .registers 28
    .parameter "messageDispatcher"
    .parameter "transportAddress"
    .parameter "wholeMsg"
    .parameter "messageProcessingModel"
    .parameter "securityModel"
    .parameter "securityName"
    .parameter "securityLevel"
    .parameter "pdu"
    .parameter "sendPduHandle"
    .parameter "maxSizeResponseScopedPDU"
    .parameter "statusInformation"
    .parameter "stateReference"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 176
    new-instance v10, Lorg/snmp4j/asn1/BER$MutableByte;

    invoke-direct {v10}, Lorg/snmp4j/asn1/BER$MutableByte;-><init>()V

    .line 177
    .local v10, mutableByte:Lorg/snmp4j/asn1/BER$MutableByte;
    move-object/from16 v0, p3

    invoke-static {v0, v10}, Lorg/snmp4j/asn1/BER;->decodeHeader(Lorg/snmp4j/asn1/BERInputStream;Lorg/snmp4j/asn1/BER$MutableByte;)I

    move-result v9

    .line 178
    .local v9, length:I
    invoke-virtual/range {p3 .. p3}, Lorg/snmp4j/asn1/BERInputStream;->getPosition()J

    move-result-wide v3

    long-to-int v11, v3

    .line 179
    .local v11, startPos:I
    invoke-virtual {v10}, Lorg/snmp4j/asn1/BER$MutableByte;->getValue()B

    move-result v3

    const/16 v4, 0x30

    if-eq v3, v4, :cond_25

    .line 180
    const-string v12, "SNMPv1 PDU must start with a SEQUENCE"

    .line 181
    .local v12, txt:Ljava/lang/String;
    sget-object v3, Lorg/snmp4j/mp/MPv1;->logger:Lorg/snmp4j/log/LogAdapter;

    invoke-interface {v3, v12}, Lorg/snmp4j/log/LogAdapter;->error(Ljava/lang/Object;)V

    .line 182
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 184
    .end local v12           #txt:Ljava/lang/String;
    :cond_25
    new-instance v14, Lorg/snmp4j/smi/Integer32;

    invoke-direct {v14}, Lorg/snmp4j/smi/Integer32;-><init>()V

    .line 185
    .local v14, version:Lorg/snmp4j/smi/Integer32;
    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Lorg/snmp4j/smi/Integer32;->decodeBER(Lorg/snmp4j/asn1/BERInputStream;)V

    .line 187
    move-object/from16 v0, p6

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lorg/snmp4j/smi/OctetString;->decodeBER(Lorg/snmp4j/asn1/BERInputStream;)V

    .line 188
    const/4 v3, 0x1

    move-object/from16 v0, p7

    invoke-virtual {v0, v3}, Lorg/snmp4j/smi/Integer32;->setValue(I)V

    .line 189
    const/4 v3, 0x1

    move-object/from16 v0, p5

    invoke-virtual {v0, v3}, Lorg/snmp4j/smi/Integer32;->setValue(I)V

    .line 190
    const/4 v3, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Lorg/snmp4j/smi/Integer32;->setValue(I)V

    .line 192
    iget-object v3, p0, Lorg/snmp4j/mp/MPv1;->incomingPDUFactory:Lorg/snmp4j/util/PDUFactory;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lorg/snmp4j/util/PDUFactory;->createPDU(Lorg/snmp4j/Target;)Lorg/snmp4j/PDU;

    move-result-object v13

    .line 193
    .local v13, v1PDU:Lorg/snmp4j/PDU;
    move-object/from16 v0, p8

    invoke-virtual {v0, v13}, Lorg/snmp4j/MutablePDU;->setPdu(Lorg/snmp4j/PDU;)V

    .line 194
    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Lorg/snmp4j/PDU;->decodeBER(Lorg/snmp4j/asn1/BERInputStream;)V

    .line 196
    invoke-virtual/range {p3 .. p3}, Lorg/snmp4j/asn1/BERInputStream;->getPosition()J

    move-result-wide v3

    long-to-int v3, v3

    sub-int/2addr v3, v11

    invoke-static {v9, v3, v13}, Lorg/snmp4j/asn1/BER;->checkSequenceLength(IILorg/snmp4j/asn1/BERSerializable;)V

    .line 199
    invoke-virtual {v13}, Lorg/snmp4j/PDU;->getRequestID()Lorg/snmp4j/smi/Integer32;

    move-result-object v3

    invoke-virtual {v3}, Lorg/snmp4j/smi/Integer32;->getValue()I

    move-result v3

    move-object/from16 v0, p9

    invoke-virtual {v0, v3}, Lorg/snmp4j/mp/PduHandle;->setTransactionID(I)V

    .line 202
    new-instance v2, Lorg/snmp4j/mp/StateReference;

    const/4 v5, 0x0

    invoke-static {}, Lorg/snmp4j/security/SecurityModels;->getInstance()Lorg/snmp4j/security/SecurityModels;

    move-result-object v3

    move-object/from16 v0, p5

    invoke-virtual {v3, v0}, Lorg/snmp4j/security/SecurityModels;->getSecurityModel(Lorg/snmp4j/smi/Integer32;)Lorg/snmp4j/security/SecurityModel;

    move-result-object v6

    invoke-virtual/range {p6 .. p6}, Lorg/snmp4j/smi/OctetString;->getValue()[B

    move-result-object v7

    const/4 v8, 0x0

    move-object/from16 v3, p9

    move-object/from16 v4, p2

    invoke-direct/range {v2 .. v8}, Lorg/snmp4j/mp/StateReference;-><init>(Lorg/snmp4j/mp/PduHandle;Lorg/snmp4j/smi/Address;Lorg/snmp4j/TransportMapping;Lorg/snmp4j/security/SecurityModel;[BI)V

    .line 209
    .local v2, stateRef:Lorg/snmp4j/mp/StateReference;
    move-object/from16 v0, p12

    invoke-virtual {v0, v2}, Lorg/snmp4j/mp/MutableStateReference;->setStateReference(Lorg/snmp4j/mp/StateReference;)V

    .line 211
    const/4 v3, 0x0

    return v3
.end method

.method public prepareOutgoingMessage(Lorg/snmp4j/smi/Address;III[BILorg/snmp4j/PDU;ZLorg/snmp4j/mp/PduHandle;Lorg/snmp4j/smi/Address;Lorg/snmp4j/asn1/BEROutputStream;)I
    .registers 20
    .parameter "transportAddress"
    .parameter "maxMessageSize"
    .parameter "messageProcessingModel"
    .parameter "securityModel"
    .parameter "securityName"
    .parameter "securityLevel"
    .parameter "pdu"
    .parameter "expectResponse"
    .parameter "sendPduHandle"
    .parameter "destTransportAddress"
    .parameter "outgoingMessage"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 98
    const/4 v6, 0x1

    if-ne p6, v6, :cond_6

    const/4 v6, 0x1

    if-eq p4, v6, :cond_10

    .line 100
    :cond_6
    sget-object v6, Lorg/snmp4j/mp/MPv1;->logger:Lorg/snmp4j/log/LogAdapter;

    const-string v7, "MPv1 used with unsupported security model"

    invoke-interface {v6, v7}, Lorg/snmp4j/log/LogAdapter;->error(Ljava/lang/Object;)V

    .line 101
    const/16 v6, -0x57a

    .line 134
    :goto_f
    return v6

    .line 103
    :cond_10
    instance-of v6, p7, Lorg/snmp4j/ScopedPDU;

    if-eqz v6, :cond_21

    .line 104
    const-string v4, "ScopedPDU must not be used with MPv1"

    .line 105
    .local v4, txt:Ljava/lang/String;
    sget-object v6, Lorg/snmp4j/mp/MPv1;->logger:Lorg/snmp4j/log/LogAdapter;

    invoke-interface {v6, v4}, Lorg/snmp4j/log/LogAdapter;->error(Ljava/lang/Object;)V

    .line 106
    new-instance v6, Ljava/lang/IllegalArgumentException;

    invoke-direct {v6, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 109
    .end local v4           #txt:Ljava/lang/String;
    :cond_21
    invoke-virtual {p0, p3}, Lorg/snmp4j/mp/MPv1;->isProtocolVersionSupported(I)Z

    move-result v6

    if-nez v6, :cond_31

    .line 110
    sget-object v6, Lorg/snmp4j/mp/MPv1;->logger:Lorg/snmp4j/log/LogAdapter;

    const-string v7, "MPv1 used with unsupported SNMP version"

    invoke-interface {v6, v7}, Lorg/snmp4j/log/LogAdapter;->error(Ljava/lang/Object;)V

    .line 111
    const/16 v6, -0x57a

    goto :goto_f

    .line 115
    :cond_31
    new-instance v2, Lorg/snmp4j/smi/OctetString;

    invoke-direct {v2, p5}, Lorg/snmp4j/smi/OctetString;-><init>([B)V

    .line 116
    .local v2, community:Lorg/snmp4j/smi/OctetString;
    new-instance v5, Lorg/snmp4j/smi/Integer32;

    invoke-direct {v5, p3}, Lorg/snmp4j/smi/Integer32;-><init>(I)V

    .line 118
    .local v5, version:Lorg/snmp4j/smi/Integer32;
    invoke-virtual {p7}, Lorg/snmp4j/PDU;->getBERLength()I

    move-result v3

    .line 119
    .local v3, length:I
    invoke-virtual {v2}, Lorg/snmp4j/smi/OctetString;->getBERLength()I

    move-result v6

    add-int/2addr v3, v6

    .line 120
    invoke-virtual {v5}, Lorg/snmp4j/smi/Integer32;->getBERLength()I

    move-result v6

    add-int/2addr v3, v6

    .line 122
    invoke-static {v3}, Lorg/snmp4j/asn1/BER;->getBERLengthOfLength(I)I

    move-result v6

    add-int/2addr v6, v3

    add-int/lit8 v6, v6, 0x1

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 125
    .local v1, buf:Ljava/nio/ByteBuffer;
    move-object/from16 v0, p11

    invoke-virtual {v0, v1}, Lorg/snmp4j/asn1/BEROutputStream;->setBuffer(Ljava/nio/ByteBuffer;)V

    .line 128
    const/16 v6, 0x30

    move-object/from16 v0, p11

    invoke-static {v0, v6, v3}, Lorg/snmp4j/asn1/BER;->encodeHeader(Ljava/io/OutputStream;II)V

    .line 129
    move-object/from16 v0, p11

    invoke-virtual {v5, v0}, Lorg/snmp4j/smi/Integer32;->encodeBER(Ljava/io/OutputStream;)V

    .line 131
    move-object/from16 v0, p11

    invoke-virtual {v2, v0}, Lorg/snmp4j/smi/OctetString;->encodeBER(Ljava/io/OutputStream;)V

    .line 132
    move-object/from16 v0, p11

    invoke-virtual {p7, v0}, Lorg/snmp4j/PDU;->encodeBER(Ljava/io/OutputStream;)V

    .line 134
    const/4 v6, 0x0

    goto :goto_f
.end method

.method public prepareResponseMessage(III[BILorg/snmp4j/PDU;ILorg/snmp4j/mp/StateReference;Lorg/snmp4j/mp/StatusInformation;Lorg/snmp4j/asn1/BEROutputStream;)I
    .registers 23
    .parameter "messageProcessingModel"
    .parameter "maxMessageSize"
    .parameter "securityModel"
    .parameter "securityName"
    .parameter "securityLevel"
    .parameter "pdu"
    .parameter "maxSizeResponseScopedPDU"
    .parameter "stateReference"
    .parameter "statusInformation"
    .parameter "outgoingMessage"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 149
    invoke-virtual/range {p8 .. p8}, Lorg/snmp4j/mp/StateReference;->getAddress()Lorg/snmp4j/smi/Address;

    move-result-object v1

    const/4 v8, 0x0

    invoke-virtual/range {p8 .. p8}, Lorg/snmp4j/mp/StateReference;->getPduHandle()Lorg/snmp4j/mp/PduHandle;

    move-result-object v9

    const/4 v10, 0x0

    move-object v0, p0

    move v2, p2

    move v3, p1

    move v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v11, p10

    invoke-virtual/range {v0 .. v11}, Lorg/snmp4j/mp/MPv1;->prepareOutgoingMessage(Lorg/snmp4j/smi/Address;III[BILorg/snmp4j/PDU;ZLorg/snmp4j/mp/PduHandle;Lorg/snmp4j/smi/Address;Lorg/snmp4j/asn1/BEROutputStream;)I

    move-result v0

    return v0
.end method

.method public releaseStateReference(Lorg/snmp4j/mp/PduHandle;)V
    .registers 2
    .parameter "pduHandle"

    .prologue
    .line 220
    return-void
.end method

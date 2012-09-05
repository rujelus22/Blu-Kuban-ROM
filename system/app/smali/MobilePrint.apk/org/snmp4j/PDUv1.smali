.class public Lorg/snmp4j/PDUv1;
.super Lorg/snmp4j/PDU;
.source "PDUv1.java"


# static fields
.field public static final AUTHENTICATIONFAILURE:I = 0x4

.field public static final COLDSTART:I = 0x0

.field public static final ENTERPRISE_SPECIFIC:I = 0x6

.field public static final LINKDOWN:I = 0x2

.field public static final LINKUP:I = 0x3

.field private static final OPERATION_NOT_SUPPORTED:Ljava/lang/String; = "Operation not supported for SNMPv1 PDUs"

.field public static final WARMSTART:I = 0x1

.field private static final serialVersionUID:J = -0x59e956edb616b2baL


# instance fields
.field private agentAddress:Lorg/snmp4j/smi/IpAddress;

.field private enterprise:Lorg/snmp4j/smi/OID;

.field private genericTrap:Lorg/snmp4j/smi/Integer32;

.field private specificTrap:Lorg/snmp4j/smi/Integer32;

.field private timestamp:Lorg/snmp4j/smi/TimeTicks;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 116
    invoke-direct {p0}, Lorg/snmp4j/PDU;-><init>()V

    .line 109
    new-instance v0, Lorg/snmp4j/smi/OID;

    invoke-direct {v0}, Lorg/snmp4j/smi/OID;-><init>()V

    iput-object v0, p0, Lorg/snmp4j/PDUv1;->enterprise:Lorg/snmp4j/smi/OID;

    .line 110
    new-instance v0, Lorg/snmp4j/smi/IpAddress;

    const-string v1, "0.0.0.0"

    invoke-direct {v0, v1}, Lorg/snmp4j/smi/IpAddress;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/snmp4j/PDUv1;->agentAddress:Lorg/snmp4j/smi/IpAddress;

    .line 111
    new-instance v0, Lorg/snmp4j/smi/Integer32;

    invoke-direct {v0, v2}, Lorg/snmp4j/smi/Integer32;-><init>(I)V

    iput-object v0, p0, Lorg/snmp4j/PDUv1;->genericTrap:Lorg/snmp4j/smi/Integer32;

    .line 112
    new-instance v0, Lorg/snmp4j/smi/Integer32;

    invoke-direct {v0, v2}, Lorg/snmp4j/smi/Integer32;-><init>(I)V

    iput-object v0, p0, Lorg/snmp4j/PDUv1;->specificTrap:Lorg/snmp4j/smi/Integer32;

    .line 113
    new-instance v0, Lorg/snmp4j/smi/TimeTicks;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lorg/snmp4j/smi/TimeTicks;-><init>(J)V

    iput-object v0, p0, Lorg/snmp4j/PDUv1;->timestamp:Lorg/snmp4j/smi/TimeTicks;

    .line 117
    const/16 v0, -0x5c

    invoke-virtual {p0, v0}, Lorg/snmp4j/PDUv1;->setType(I)V

    .line 118
    return-void
.end method

.method public constructor <init>(Lorg/snmp4j/PDUv1;)V
    .registers 5
    .parameter "other"

    .prologue
    const/4 v2, 0x0

    .line 127
    invoke-direct {p0, p1}, Lorg/snmp4j/PDU;-><init>(Lorg/snmp4j/PDU;)V

    .line 109
    new-instance v0, Lorg/snmp4j/smi/OID;

    invoke-direct {v0}, Lorg/snmp4j/smi/OID;-><init>()V

    iput-object v0, p0, Lorg/snmp4j/PDUv1;->enterprise:Lorg/snmp4j/smi/OID;

    .line 110
    new-instance v0, Lorg/snmp4j/smi/IpAddress;

    const-string v1, "0.0.0.0"

    invoke-direct {v0, v1}, Lorg/snmp4j/smi/IpAddress;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/snmp4j/PDUv1;->agentAddress:Lorg/snmp4j/smi/IpAddress;

    .line 111
    new-instance v0, Lorg/snmp4j/smi/Integer32;

    invoke-direct {v0, v2}, Lorg/snmp4j/smi/Integer32;-><init>(I)V

    iput-object v0, p0, Lorg/snmp4j/PDUv1;->genericTrap:Lorg/snmp4j/smi/Integer32;

    .line 112
    new-instance v0, Lorg/snmp4j/smi/Integer32;

    invoke-direct {v0, v2}, Lorg/snmp4j/smi/Integer32;-><init>(I)V

    iput-object v0, p0, Lorg/snmp4j/PDUv1;->specificTrap:Lorg/snmp4j/smi/Integer32;

    .line 113
    new-instance v0, Lorg/snmp4j/smi/TimeTicks;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lorg/snmp4j/smi/TimeTicks;-><init>(J)V

    iput-object v0, p0, Lorg/snmp4j/PDUv1;->timestamp:Lorg/snmp4j/smi/TimeTicks;

    .line 128
    iget-object v0, p1, Lorg/snmp4j/PDUv1;->enterprise:Lorg/snmp4j/smi/OID;

    invoke-virtual {v0}, Lorg/snmp4j/smi/OID;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/snmp4j/smi/OID;

    iput-object v0, p0, Lorg/snmp4j/PDUv1;->enterprise:Lorg/snmp4j/smi/OID;

    .line 129
    iget-object v0, p1, Lorg/snmp4j/PDUv1;->agentAddress:Lorg/snmp4j/smi/IpAddress;

    invoke-virtual {v0}, Lorg/snmp4j/smi/IpAddress;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/snmp4j/smi/IpAddress;

    iput-object v0, p0, Lorg/snmp4j/PDUv1;->agentAddress:Lorg/snmp4j/smi/IpAddress;

    .line 130
    iget-object v0, p1, Lorg/snmp4j/PDUv1;->genericTrap:Lorg/snmp4j/smi/Integer32;

    invoke-virtual {v0}, Lorg/snmp4j/smi/Integer32;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/snmp4j/smi/Integer32;

    iput-object v0, p0, Lorg/snmp4j/PDUv1;->genericTrap:Lorg/snmp4j/smi/Integer32;

    .line 131
    iget-object v0, p1, Lorg/snmp4j/PDUv1;->specificTrap:Lorg/snmp4j/smi/Integer32;

    invoke-virtual {v0}, Lorg/snmp4j/smi/Integer32;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/snmp4j/smi/Integer32;

    iput-object v0, p0, Lorg/snmp4j/PDUv1;->specificTrap:Lorg/snmp4j/smi/Integer32;

    .line 132
    iget-object v0, p1, Lorg/snmp4j/PDUv1;->timestamp:Lorg/snmp4j/smi/TimeTicks;

    invoke-virtual {v0}, Lorg/snmp4j/smi/TimeTicks;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/snmp4j/smi/TimeTicks;

    iput-object v0, p0, Lorg/snmp4j/PDUv1;->timestamp:Lorg/snmp4j/smi/TimeTicks;

    .line 133
    return-void
.end method

.method private checkV1TRAP()V
    .registers 3

    .prologue
    .line 315
    invoke-virtual {p0}, Lorg/snmp4j/PDUv1;->getType()I

    move-result v0

    const/16 v1, -0x5c

    if-eq v0, v1, :cond_10

    .line 316
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation is only supported for SNMPv1 trap PDUs (V1TRAP)"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 319
    :cond_10
    return-void
.end method


# virtual methods
.method protected checkNull(Ljava/lang/Object;)V
    .registers 4
    .parameter "parameter"

    .prologue
    .line 475
    if-nez p1, :cond_a

    .line 476
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Members of PDUv1 must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 478
    :cond_a
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 136
    new-instance v0, Lorg/snmp4j/PDUv1;

    invoke-direct {v0, p0}, Lorg/snmp4j/PDUv1;-><init>(Lorg/snmp4j/PDUv1;)V

    return-object v0
.end method

.method public decodeBER(Lorg/snmp4j/asn1/BERInputStream;)V
    .registers 12
    .parameter "inputStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 147
    new-instance v2, Lorg/snmp4j/asn1/BER$MutableByte;

    invoke-direct {v2}, Lorg/snmp4j/asn1/BER$MutableByte;-><init>()V

    .line 148
    .local v2, pduType:Lorg/snmp4j/asn1/BER$MutableByte;
    invoke-static {p1, v2}, Lorg/snmp4j/asn1/BER;->decodeHeader(Lorg/snmp4j/asn1/BERInputStream;Lorg/snmp4j/asn1/BER$MutableByte;)I

    move-result v0

    .line 149
    .local v0, length:I
    invoke-virtual {p1}, Lorg/snmp4j/asn1/BERInputStream;->getPosition()J

    move-result-wide v6

    long-to-int v1, v6

    .line 151
    .local v1, pduStartPos:I
    invoke-virtual {v2}, Lorg/snmp4j/asn1/BER$MutableByte;->getValue()B

    move-result v6

    packed-switch v6, :pswitch_data_e8

    .line 159
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "Unsupported PDU type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v2}, Lorg/snmp4j/asn1/BER$MutableByte;->getValue()B

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 161
    :pswitch_32
    invoke-virtual {v2}, Lorg/snmp4j/asn1/BER$MutableByte;->getValue()B

    move-result v6

    invoke-virtual {p0, v6}, Lorg/snmp4j/PDUv1;->setType(I)V

    .line 162
    invoke-virtual {p0}, Lorg/snmp4j/PDUv1;->getType()I

    move-result v6

    const/16 v7, -0x5c

    if-ne v6, v7, :cond_88

    .line 163
    iget-object v6, p0, Lorg/snmp4j/PDUv1;->enterprise:Lorg/snmp4j/smi/OID;

    invoke-virtual {v6, p1}, Lorg/snmp4j/smi/OID;->decodeBER(Lorg/snmp4j/asn1/BERInputStream;)V

    .line 164
    iget-object v6, p0, Lorg/snmp4j/PDUv1;->agentAddress:Lorg/snmp4j/smi/IpAddress;

    invoke-virtual {v6, p1}, Lorg/snmp4j/smi/IpAddress;->decodeBER(Lorg/snmp4j/asn1/BERInputStream;)V

    .line 165
    iget-object v6, p0, Lorg/snmp4j/PDUv1;->genericTrap:Lorg/snmp4j/smi/Integer32;

    invoke-virtual {v6, p1}, Lorg/snmp4j/smi/Integer32;->decodeBER(Lorg/snmp4j/asn1/BERInputStream;)V

    .line 166
    iget-object v6, p0, Lorg/snmp4j/PDUv1;->specificTrap:Lorg/snmp4j/smi/Integer32;

    invoke-virtual {v6, p1}, Lorg/snmp4j/smi/Integer32;->decodeBER(Lorg/snmp4j/asn1/BERInputStream;)V

    .line 167
    iget-object v6, p0, Lorg/snmp4j/PDUv1;->timestamp:Lorg/snmp4j/smi/TimeTicks;

    invoke-virtual {v6, p1}, Lorg/snmp4j/smi/TimeTicks;->decodeBER(Lorg/snmp4j/asn1/BERInputStream;)V

    .line 176
    :goto_5a
    new-instance v2, Lorg/snmp4j/asn1/BER$MutableByte;

    .end local v2           #pduType:Lorg/snmp4j/asn1/BER$MutableByte;
    invoke-direct {v2}, Lorg/snmp4j/asn1/BER$MutableByte;-><init>()V

    .line 177
    .restart local v2       #pduType:Lorg/snmp4j/asn1/BER$MutableByte;
    invoke-static {p1, v2}, Lorg/snmp4j/asn1/BER;->decodeHeader(Lorg/snmp4j/asn1/BERInputStream;Lorg/snmp4j/asn1/BER$MutableByte;)I

    move-result v5

    .line 178
    .local v5, vbLength:I
    invoke-virtual {v2}, Lorg/snmp4j/asn1/BER$MutableByte;->getValue()B

    move-result v6

    const/16 v7, 0x30

    if-eq v6, v7, :cond_98

    .line 179
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "Encountered invalid tag, SEQUENCE expected: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v2}, Lorg/snmp4j/asn1/BER$MutableByte;->getValue()B

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 170
    .end local v5           #vbLength:I
    :cond_88
    iget-object v6, p0, Lorg/snmp4j/PDU;->requestID:Lorg/snmp4j/smi/Integer32;

    invoke-virtual {v6, p1}, Lorg/snmp4j/smi/Integer32;->decodeBER(Lorg/snmp4j/asn1/BERInputStream;)V

    .line 171
    iget-object v6, p0, Lorg/snmp4j/PDU;->errorStatus:Lorg/snmp4j/smi/Integer32;

    invoke-virtual {v6, p1}, Lorg/snmp4j/smi/Integer32;->decodeBER(Lorg/snmp4j/asn1/BERInputStream;)V

    .line 172
    iget-object v6, p0, Lorg/snmp4j/PDU;->errorIndex:Lorg/snmp4j/smi/Integer32;

    invoke-virtual {v6, p1}, Lorg/snmp4j/smi/Integer32;->decodeBER(Lorg/snmp4j/asn1/BERInputStream;)V

    goto :goto_5a

    .line 183
    .restart local v5       #vbLength:I
    :cond_98
    invoke-virtual {p1}, Lorg/snmp4j/asn1/BERInputStream;->getPosition()J

    move-result-wide v6

    long-to-int v3, v6

    .line 184
    .local v3, startPos:I
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    iput-object v6, p0, Lorg/snmp4j/PDU;->variableBindings:Ljava/util/Vector;

    .line 185
    :goto_a4
    invoke-virtual {p1}, Lorg/snmp4j/asn1/BERInputStream;->getPosition()J

    move-result-wide v6

    int-to-long v8, v3

    sub-long/2addr v6, v8

    int-to-long v8, v5

    cmp-long v6, v6, v8

    if-gez v6, :cond_cf

    .line 186
    new-instance v4, Lorg/snmp4j/smi/VariableBinding;

    invoke-direct {v4}, Lorg/snmp4j/smi/VariableBinding;-><init>()V

    .line 187
    .local v4, vb:Lorg/snmp4j/smi/VariableBinding;
    invoke-virtual {v4, p1}, Lorg/snmp4j/smi/VariableBinding;->decodeBER(Lorg/snmp4j/asn1/BERInputStream;)V

    .line 188
    invoke-virtual {v4}, Lorg/snmp4j/smi/VariableBinding;->getVariable()Lorg/snmp4j/smi/Variable;

    move-result-object v6

    invoke-virtual {p0, v6}, Lorg/snmp4j/PDUv1;->isVariableV1(Lorg/snmp4j/smi/Variable;)Z

    move-result v6

    if-nez v6, :cond_c9

    .line 189
    new-instance v6, Lorg/snmp4j/MessageException;

    const-string v7, "Counter64 encountered in SNMPv1 PDU (RFC 2576 \u00a74.1.2.1)"

    invoke-direct {v6, v7}, Lorg/snmp4j/MessageException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 192
    :cond_c9
    iget-object v6, p0, Lorg/snmp4j/PDU;->variableBindings:Ljava/util/Vector;

    invoke-virtual {v6, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_a4

    .line 194
    .end local v4           #vb:Lorg/snmp4j/smi/VariableBinding;
    :cond_cf
    invoke-static {}, Lorg/snmp4j/asn1/BER;->isCheckSequenceLength()Z

    move-result v6

    if-eqz v6, :cond_e7

    .line 195
    invoke-virtual {p1}, Lorg/snmp4j/asn1/BERInputStream;->getPosition()J

    move-result-wide v6

    long-to-int v6, v6

    sub-int/2addr v6, v3

    invoke-static {v5, v6, p0}, Lorg/snmp4j/asn1/BER;->checkSequenceLength(IILorg/snmp4j/asn1/BERSerializable;)V

    .line 197
    invoke-virtual {p1}, Lorg/snmp4j/asn1/BERInputStream;->getPosition()J

    move-result-wide v6

    long-to-int v6, v6

    sub-int/2addr v6, v1

    invoke-static {v0, v6, p0}, Lorg/snmp4j/asn1/BER;->checkSequenceLength(IILorg/snmp4j/asn1/BERSerializable;)V

    .line 200
    :cond_e7
    return-void

    .line 151
    :pswitch_data_e8
    .packed-switch -0x60
        :pswitch_32
        :pswitch_32
        :pswitch_32
        :pswitch_32
        :pswitch_32
    .end packed-switch
.end method

.method public encodeBER(Ljava/io/OutputStream;)V
    .registers 7
    .parameter "outputStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 209
    iget v3, p0, Lorg/snmp4j/PDU;->type:I

    invoke-virtual {p0}, Lorg/snmp4j/PDUv1;->getBERPayloadLength()I

    move-result v4

    invoke-static {p1, v3, v4}, Lorg/snmp4j/asn1/BER;->encodeHeader(Ljava/io/OutputStream;II)V

    .line 211
    iget v3, p0, Lorg/snmp4j/PDU;->type:I

    const/16 v4, -0x5c

    if-ne v3, v4, :cond_42

    .line 212
    iget-object v3, p0, Lorg/snmp4j/PDUv1;->enterprise:Lorg/snmp4j/smi/OID;

    invoke-virtual {v3, p1}, Lorg/snmp4j/smi/OID;->encodeBER(Ljava/io/OutputStream;)V

    .line 213
    iget-object v3, p0, Lorg/snmp4j/PDUv1;->agentAddress:Lorg/snmp4j/smi/IpAddress;

    invoke-virtual {v3, p1}, Lorg/snmp4j/smi/IpAddress;->encodeBER(Ljava/io/OutputStream;)V

    .line 214
    iget-object v3, p0, Lorg/snmp4j/PDUv1;->genericTrap:Lorg/snmp4j/smi/Integer32;

    invoke-virtual {v3, p1}, Lorg/snmp4j/smi/Integer32;->encodeBER(Ljava/io/OutputStream;)V

    .line 215
    iget-object v3, p0, Lorg/snmp4j/PDUv1;->specificTrap:Lorg/snmp4j/smi/Integer32;

    invoke-virtual {v3, p1}, Lorg/snmp4j/smi/Integer32;->encodeBER(Ljava/io/OutputStream;)V

    .line 216
    iget-object v3, p0, Lorg/snmp4j/PDUv1;->timestamp:Lorg/snmp4j/smi/TimeTicks;

    invoke-virtual {v3, p1}, Lorg/snmp4j/smi/TimeTicks;->encodeBER(Ljava/io/OutputStream;)V

    .line 223
    :goto_28
    const/4 v2, 0x0

    .line 224
    .local v2, vbLength:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2a
    iget-object v3, p0, Lorg/snmp4j/PDU;->variableBindings:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v0, v3, :cond_52

    .line 225
    iget-object v3, p0, Lorg/snmp4j/PDU;->variableBindings:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/snmp4j/smi/VariableBinding;

    invoke-virtual {v3}, Lorg/snmp4j/smi/VariableBinding;->getBERLength()I

    move-result v3

    add-int/2addr v2, v3

    .line 224
    add-int/lit8 v0, v0, 0x1

    goto :goto_2a

    .line 219
    .end local v0           #i:I
    .end local v2           #vbLength:I
    :cond_42
    iget-object v3, p0, Lorg/snmp4j/PDU;->requestID:Lorg/snmp4j/smi/Integer32;

    invoke-virtual {v3, p1}, Lorg/snmp4j/smi/Integer32;->encodeBER(Ljava/io/OutputStream;)V

    .line 220
    iget-object v3, p0, Lorg/snmp4j/PDU;->errorStatus:Lorg/snmp4j/smi/Integer32;

    invoke-virtual {v3, p1}, Lorg/snmp4j/smi/Integer32;->encodeBER(Ljava/io/OutputStream;)V

    .line 221
    iget-object v3, p0, Lorg/snmp4j/PDU;->errorIndex:Lorg/snmp4j/smi/Integer32;

    invoke-virtual {v3, p1}, Lorg/snmp4j/smi/Integer32;->encodeBER(Ljava/io/OutputStream;)V

    goto :goto_28

    .line 227
    .restart local v0       #i:I
    .restart local v2       #vbLength:I
    :cond_52
    const/16 v3, 0x30

    invoke-static {p1, v3, v2}, Lorg/snmp4j/asn1/BER;->encodeHeader(Ljava/io/OutputStream;II)V

    .line 228
    const/4 v0, 0x0

    :goto_58
    iget-object v3, p0, Lorg/snmp4j/PDU;->variableBindings:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v0, v3, :cond_80

    .line 229
    iget-object v3, p0, Lorg/snmp4j/PDU;->variableBindings:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/snmp4j/smi/VariableBinding;

    .line 230
    .local v1, vb:Lorg/snmp4j/smi/VariableBinding;
    invoke-virtual {v1}, Lorg/snmp4j/smi/VariableBinding;->getVariable()Lorg/snmp4j/smi/Variable;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/snmp4j/PDUv1;->isVariableV1(Lorg/snmp4j/smi/Variable;)Z

    move-result v3

    if-nez v3, :cond_7a

    .line 231
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Cannot encode Counter64 into a SNMPv1 PDU"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 233
    :cond_7a
    invoke-virtual {v1, p1}, Lorg/snmp4j/smi/VariableBinding;->encodeBER(Ljava/io/OutputStream;)V

    .line 228
    add-int/lit8 v0, v0, 0x1

    goto :goto_58

    .line 235
    .end local v1           #vb:Lorg/snmp4j/smi/VariableBinding;
    :cond_80
    return-void
.end method

.method public getAgentAddress()Lorg/snmp4j/smi/IpAddress;
    .registers 2

    .prologue
    .line 368
    invoke-direct {p0}, Lorg/snmp4j/PDUv1;->checkV1TRAP()V

    .line 369
    iget-object v0, p0, Lorg/snmp4j/PDUv1;->agentAddress:Lorg/snmp4j/smi/IpAddress;

    return-object v0
.end method

.method protected getBERPayloadLengthPDU()I
    .registers 5

    .prologue
    .line 252
    invoke-virtual {p0}, Lorg/snmp4j/PDUv1;->getType()I

    move-result v2

    const/16 v3, -0x5c

    if-eq v2, v3, :cond_d

    .line 253
    invoke-super {p0}, Lorg/snmp4j/PDU;->getBERPayloadLengthPDU()I

    move-result v1

    .line 267
    :goto_c
    return v1

    .line 256
    :cond_d
    const/4 v1, 0x0

    .line 258
    .local v1, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_f
    iget-object v2, p0, Lorg/snmp4j/PDU;->variableBindings:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v0, v2, :cond_27

    .line 259
    iget-object v2, p0, Lorg/snmp4j/PDU;->variableBindings:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/snmp4j/smi/VariableBinding;

    invoke-virtual {v2}, Lorg/snmp4j/smi/VariableBinding;->getBERLength()I

    move-result v2

    add-int/2addr v1, v2

    .line 258
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 261
    :cond_27
    invoke-static {v1}, Lorg/snmp4j/asn1/BER;->getBERLengthOfLength(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v1, v2

    .line 262
    iget-object v2, p0, Lorg/snmp4j/PDUv1;->agentAddress:Lorg/snmp4j/smi/IpAddress;

    invoke-virtual {v2}, Lorg/snmp4j/smi/IpAddress;->getBERLength()I

    move-result v2

    add-int/2addr v1, v2

    .line 263
    iget-object v2, p0, Lorg/snmp4j/PDUv1;->enterprise:Lorg/snmp4j/smi/OID;

    invoke-virtual {v2}, Lorg/snmp4j/smi/OID;->getBERLength()I

    move-result v2

    add-int/2addr v1, v2

    .line 264
    iget-object v2, p0, Lorg/snmp4j/PDUv1;->genericTrap:Lorg/snmp4j/smi/Integer32;

    invoke-virtual {v2}, Lorg/snmp4j/smi/Integer32;->getBERLength()I

    move-result v2

    add-int/2addr v1, v2

    .line 265
    iget-object v2, p0, Lorg/snmp4j/PDUv1;->specificTrap:Lorg/snmp4j/smi/Integer32;

    invoke-virtual {v2}, Lorg/snmp4j/smi/Integer32;->getBERLength()I

    move-result v2

    add-int/2addr v1, v2

    .line 266
    iget-object v2, p0, Lorg/snmp4j/PDUv1;->timestamp:Lorg/snmp4j/smi/TimeTicks;

    invoke-virtual {v2}, Lorg/snmp4j/smi/TimeTicks;->getBERLength()I

    move-result v2

    add-int/2addr v1, v2

    .line 267
    goto :goto_c
.end method

.method public getEnterprise()Lorg/snmp4j/smi/OID;
    .registers 2

    .prologue
    .line 334
    invoke-direct {p0}, Lorg/snmp4j/PDUv1;->checkV1TRAP()V

    .line 335
    iget-object v0, p0, Lorg/snmp4j/PDUv1;->enterprise:Lorg/snmp4j/smi/OID;

    return-object v0
.end method

.method public getGenericTrap()I
    .registers 2

    .prologue
    .line 397
    invoke-direct {p0}, Lorg/snmp4j/PDUv1;->checkV1TRAP()V

    .line 398
    iget-object v0, p0, Lorg/snmp4j/PDUv1;->genericTrap:Lorg/snmp4j/smi/Integer32;

    invoke-virtual {v0}, Lorg/snmp4j/smi/Integer32;->getValue()I

    move-result v0

    return v0
.end method

.method public getMaxRepetitions()I
    .registers 3

    .prologue
    .line 279
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation not supported for SNMPv1 PDUs"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSpecificTrap()I
    .registers 2

    .prologue
    .line 424
    invoke-direct {p0}, Lorg/snmp4j/PDUv1;->checkV1TRAP()V

    .line 425
    iget-object v0, p0, Lorg/snmp4j/PDUv1;->specificTrap:Lorg/snmp4j/smi/Integer32;

    invoke-virtual {v0}, Lorg/snmp4j/smi/Integer32;->getValue()I

    move-result v0

    return v0
.end method

.method public getTimestamp()J
    .registers 3

    .prologue
    .line 452
    invoke-direct {p0}, Lorg/snmp4j/PDUv1;->checkV1TRAP()V

    .line 453
    iget-object v0, p0, Lorg/snmp4j/PDUv1;->timestamp:Lorg/snmp4j/smi/TimeTicks;

    invoke-virtual {v0}, Lorg/snmp4j/smi/TimeTicks;->getValue()J

    move-result-wide v0

    return-wide v0
.end method

.method protected isVariableV1(Lorg/snmp4j/smi/Variable;)Z
    .registers 3
    .parameter "v"

    .prologue
    .line 248
    instance-of v0, p1, Lorg/snmp4j/smi/Counter64;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public setAgentAddress(Lorg/snmp4j/smi/IpAddress;)V
    .registers 2
    .parameter "agentAddress"

    .prologue
    .line 382
    invoke-direct {p0}, Lorg/snmp4j/PDUv1;->checkV1TRAP()V

    .line 383
    invoke-virtual {p0, p1}, Lorg/snmp4j/PDUv1;->checkNull(Ljava/lang/Object;)V

    .line 384
    iput-object p1, p0, Lorg/snmp4j/PDUv1;->agentAddress:Lorg/snmp4j/smi/IpAddress;

    .line 385
    return-void
.end method

.method public setEnterprise(Lorg/snmp4j/smi/OID;)V
    .registers 3
    .parameter "enterprise"

    .prologue
    .line 351
    invoke-direct {p0}, Lorg/snmp4j/PDUv1;->checkV1TRAP()V

    .line 352
    invoke-virtual {p0, p1}, Lorg/snmp4j/PDUv1;->checkNull(Ljava/lang/Object;)V

    .line 353
    invoke-virtual {p1}, Lorg/snmp4j/smi/OID;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/snmp4j/smi/OID;

    iput-object v0, p0, Lorg/snmp4j/PDUv1;->enterprise:Lorg/snmp4j/smi/OID;

    .line 354
    return-void
.end method

.method public setGenericTrap(I)V
    .registers 3
    .parameter "genericTrap"

    .prologue
    .line 411
    invoke-direct {p0}, Lorg/snmp4j/PDUv1;->checkV1TRAP()V

    .line 412
    iget-object v0, p0, Lorg/snmp4j/PDUv1;->genericTrap:Lorg/snmp4j/smi/Integer32;

    invoke-virtual {v0, p1}, Lorg/snmp4j/smi/Integer32;->setValue(I)V

    .line 413
    return-void
.end method

.method public setMaxRepetitions(I)V
    .registers 4
    .parameter "maxRepetitions"

    .prologue
    .line 289
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation not supported for SNMPv1 PDUs"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setMaxSizeScopedPDU(I)V
    .registers 4
    .parameter "maxSizeScopedPDU"

    .prologue
    .line 300
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation not supported for SNMPv1 PDUs"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setNonRepeaters(I)V
    .registers 4
    .parameter "nonRepeaters"

    .prologue
    .line 311
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation not supported for SNMPv1 PDUs"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSpecificTrap(I)V
    .registers 3
    .parameter "specificTrap"

    .prologue
    .line 438
    invoke-direct {p0}, Lorg/snmp4j/PDUv1;->checkV1TRAP()V

    .line 439
    iget-object v0, p0, Lorg/snmp4j/PDUv1;->specificTrap:Lorg/snmp4j/smi/Integer32;

    invoke-virtual {v0, p1}, Lorg/snmp4j/smi/Integer32;->setValue(I)V

    .line 440
    return-void
.end method

.method public setTimestamp(J)V
    .registers 4
    .parameter "timeStamp"

    .prologue
    .line 464
    invoke-direct {p0}, Lorg/snmp4j/PDUv1;->checkV1TRAP()V

    .line 465
    iget-object v0, p0, Lorg/snmp4j/PDUv1;->timestamp:Lorg/snmp4j/smi/TimeTicks;

    invoke-virtual {v0, p1, p2}, Lorg/snmp4j/smi/TimeTicks;->setValue(J)V

    .line 466
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 481
    iget v2, p0, Lorg/snmp4j/PDU;->type:I

    const/16 v3, -0x5c

    if-ne v2, v3, :cond_79

    .line 482
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 483
    .local v0, buf:Ljava/lang/StringBuffer;
    iget v2, p0, Lorg/snmp4j/PDU;->type:I

    invoke-static {v2}, Lorg/snmp4j/PDUv1;->getTypeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 484
    const-string v2, "[reqestID="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 485
    iget-object v2, p0, Lorg/snmp4j/PDU;->requestID:Lorg/snmp4j/smi/Integer32;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 486
    const-string v2, ",timestamp="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 487
    iget-object v2, p0, Lorg/snmp4j/PDUv1;->timestamp:Lorg/snmp4j/smi/TimeTicks;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 488
    const-string v2, ",enterprise="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 489
    iget-object v2, p0, Lorg/snmp4j/PDUv1;->enterprise:Lorg/snmp4j/smi/OID;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 490
    const-string v2, ",genericTrap="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 491
    iget-object v2, p0, Lorg/snmp4j/PDUv1;->genericTrap:Lorg/snmp4j/smi/Integer32;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 492
    const-string v2, ",specificTrap="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 493
    iget-object v2, p0, Lorg/snmp4j/PDUv1;->specificTrap:Lorg/snmp4j/smi/Integer32;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 494
    const-string v2, ", VBS["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 495
    const/4 v1, 0x0

    .local v1, i:I
    :goto_4c
    iget-object v2, p0, Lorg/snmp4j/PDU;->variableBindings:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v1, v2, :cond_6f

    .line 496
    iget-object v2, p0, Lorg/snmp4j/PDU;->variableBindings:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 497
    add-int/lit8 v2, v1, 0x1

    iget-object v3, p0, Lorg/snmp4j/PDU;->variableBindings:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v2, v3, :cond_6c

    .line 498
    const-string v2, "; "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 495
    :cond_6c
    add-int/lit8 v1, v1, 0x1

    goto :goto_4c

    .line 501
    :cond_6f
    const-string v2, "]]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 502
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 504
    .end local v0           #buf:Ljava/lang/StringBuffer;
    .end local v1           #i:I
    :goto_78
    return-object v2

    :cond_79
    invoke-super {p0}, Lorg/snmp4j/PDU;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_78
.end method

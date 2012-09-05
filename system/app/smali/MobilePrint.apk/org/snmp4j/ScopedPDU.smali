.class public Lorg/snmp4j/ScopedPDU;
.super Lorg/snmp4j/PDU;
.source "ScopedPDU.java"


# static fields
.field private static final serialVersionUID:J = 0x3c45fe6cd878746fL


# instance fields
.field private contextEngineID:Lorg/snmp4j/smi/OctetString;

.field private contextName:Lorg/snmp4j/smi/OctetString;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 47
    invoke-direct {p0}, Lorg/snmp4j/PDU;-><init>()V

    .line 41
    new-instance v0, Lorg/snmp4j/smi/OctetString;

    invoke-direct {v0}, Lorg/snmp4j/smi/OctetString;-><init>()V

    iput-object v0, p0, Lorg/snmp4j/ScopedPDU;->contextEngineID:Lorg/snmp4j/smi/OctetString;

    .line 42
    new-instance v0, Lorg/snmp4j/smi/OctetString;

    invoke-direct {v0}, Lorg/snmp4j/smi/OctetString;-><init>()V

    iput-object v0, p0, Lorg/snmp4j/ScopedPDU;->contextName:Lorg/snmp4j/smi/OctetString;

    .line 48
    return-void
.end method

.method public constructor <init>(Lorg/snmp4j/ScopedPDU;)V
    .registers 3
    .parameter "other"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lorg/snmp4j/PDU;-><init>(Lorg/snmp4j/PDU;)V

    .line 41
    new-instance v0, Lorg/snmp4j/smi/OctetString;

    invoke-direct {v0}, Lorg/snmp4j/smi/OctetString;-><init>()V

    iput-object v0, p0, Lorg/snmp4j/ScopedPDU;->contextEngineID:Lorg/snmp4j/smi/OctetString;

    .line 42
    new-instance v0, Lorg/snmp4j/smi/OctetString;

    invoke-direct {v0}, Lorg/snmp4j/smi/OctetString;-><init>()V

    iput-object v0, p0, Lorg/snmp4j/ScopedPDU;->contextName:Lorg/snmp4j/smi/OctetString;

    .line 57
    iget-object v0, p1, Lorg/snmp4j/ScopedPDU;->contextEngineID:Lorg/snmp4j/smi/OctetString;

    invoke-virtual {v0}, Lorg/snmp4j/smi/OctetString;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/snmp4j/smi/OctetString;

    iput-object v0, p0, Lorg/snmp4j/ScopedPDU;->contextEngineID:Lorg/snmp4j/smi/OctetString;

    .line 58
    iget-object v0, p1, Lorg/snmp4j/ScopedPDU;->contextName:Lorg/snmp4j/smi/OctetString;

    invoke-virtual {v0}, Lorg/snmp4j/smi/OctetString;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/snmp4j/smi/OctetString;

    iput-object v0, p0, Lorg/snmp4j/ScopedPDU;->contextName:Lorg/snmp4j/smi/OctetString;

    .line 59
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 129
    new-instance v0, Lorg/snmp4j/ScopedPDU;

    invoke-direct {v0, p0}, Lorg/snmp4j/ScopedPDU;-><init>(Lorg/snmp4j/ScopedPDU;)V

    return-object v0
.end method

.method public decodeBER(Lorg/snmp4j/asn1/BERInputStream;)V
    .registers 8
    .parameter "inputStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 140
    new-instance v1, Lorg/snmp4j/asn1/BER$MutableByte;

    invoke-direct {v1}, Lorg/snmp4j/asn1/BER$MutableByte;-><init>()V

    .line 141
    .local v1, mutableByte:Lorg/snmp4j/asn1/BER$MutableByte;
    invoke-static {p1, v1}, Lorg/snmp4j/asn1/BER;->decodeHeader(Lorg/snmp4j/asn1/BERInputStream;Lorg/snmp4j/asn1/BER$MutableByte;)I

    move-result v0

    .line 142
    .local v0, length:I
    invoke-virtual {p1}, Lorg/snmp4j/asn1/BERInputStream;->getPosition()J

    move-result-wide v2

    .line 143
    .local v2, startPos:J
    iget-object v4, p0, Lorg/snmp4j/ScopedPDU;->contextEngineID:Lorg/snmp4j/smi/OctetString;

    invoke-virtual {v4, p1}, Lorg/snmp4j/smi/OctetString;->decodeBER(Lorg/snmp4j/asn1/BERInputStream;)V

    .line 144
    iget-object v4, p0, Lorg/snmp4j/ScopedPDU;->contextName:Lorg/snmp4j/smi/OctetString;

    invoke-virtual {v4, p1}, Lorg/snmp4j/smi/OctetString;->decodeBER(Lorg/snmp4j/asn1/BERInputStream;)V

    .line 145
    invoke-super {p0, p1}, Lorg/snmp4j/PDU;->decodeBER(Lorg/snmp4j/asn1/BERInputStream;)V

    .line 146
    invoke-static {}, Lorg/snmp4j/asn1/BER;->isCheckSequenceLength()Z

    move-result v4

    if-eqz v4, :cond_29

    .line 147
    invoke-virtual {p1}, Lorg/snmp4j/asn1/BERInputStream;->getPosition()J

    move-result-wide v4

    sub-long/2addr v4, v2

    long-to-int v4, v4

    invoke-static {v0, v4, p0}, Lorg/snmp4j/asn1/BER;->checkSequenceLength(IILorg/snmp4j/asn1/BERSerializable;)V

    .line 151
    :cond_29
    return-void
.end method

.method public encodeBER(Ljava/io/OutputStream;)V
    .registers 4
    .parameter "outputStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 120
    const/16 v0, 0x30

    invoke-virtual {p0}, Lorg/snmp4j/ScopedPDU;->getBERPayloadLength()I

    move-result v1

    invoke-static {p1, v0, v1}, Lorg/snmp4j/asn1/BER;->encodeHeader(Ljava/io/OutputStream;II)V

    .line 121
    iget-object v0, p0, Lorg/snmp4j/ScopedPDU;->contextEngineID:Lorg/snmp4j/smi/OctetString;

    invoke-virtual {v0, p1}, Lorg/snmp4j/smi/OctetString;->encodeBER(Ljava/io/OutputStream;)V

    .line 122
    iget-object v0, p0, Lorg/snmp4j/ScopedPDU;->contextName:Lorg/snmp4j/smi/OctetString;

    invoke-virtual {v0, p1}, Lorg/snmp4j/smi/OctetString;->encodeBER(Ljava/io/OutputStream;)V

    .line 123
    invoke-super {p0, p1}, Lorg/snmp4j/PDU;->encodeBER(Ljava/io/OutputStream;)V

    .line 124
    return-void
.end method

.method public getBERLength()I
    .registers 3

    .prologue
    .line 105
    invoke-virtual {p0}, Lorg/snmp4j/ScopedPDU;->getBERPayloadLength()I

    move-result v0

    .line 106
    .local v0, length:I
    invoke-static {v0}, Lorg/snmp4j/asn1/BER;->getBERLengthOfLength(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 107
    return v0
.end method

.method public getBERPayloadLength()I
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 111
    invoke-super {p0}, Lorg/snmp4j/PDU;->getBERLength()I

    move-result v2

    .line 112
    .local v2, length:I
    iget-object v4, p0, Lorg/snmp4j/ScopedPDU;->contextEngineID:Lorg/snmp4j/smi/OctetString;

    if-nez v4, :cond_20

    move v0, v3

    .line 113
    .local v0, cid:I
    :goto_a
    iget-object v4, p0, Lorg/snmp4j/ScopedPDU;->contextName:Lorg/snmp4j/smi/OctetString;

    if-nez v4, :cond_27

    move v1, v3

    .line 114
    .local v1, cn:I
    :goto_f
    invoke-static {v0}, Lorg/snmp4j/asn1/BER;->getBERLengthOfLength(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v3, v0

    invoke-static {v1}, Lorg/snmp4j/asn1/BER;->getBERLengthOfLength(I)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v3, v1

    add-int/2addr v2, v3

    .line 116
    return v2

    .line 112
    .end local v0           #cid:I
    .end local v1           #cn:I
    :cond_20
    iget-object v4, p0, Lorg/snmp4j/ScopedPDU;->contextEngineID:Lorg/snmp4j/smi/OctetString;

    invoke-virtual {v4}, Lorg/snmp4j/smi/OctetString;->length()I

    move-result v0

    goto :goto_a

    .line 113
    .restart local v0       #cid:I
    :cond_27
    iget-object v3, p0, Lorg/snmp4j/ScopedPDU;->contextName:Lorg/snmp4j/smi/OctetString;

    invoke-virtual {v3}, Lorg/snmp4j/smi/OctetString;->length()I

    move-result v1

    goto :goto_f
.end method

.method public getContextEngineID()Lorg/snmp4j/smi/OctetString;
    .registers 2

    .prologue
    .line 80
    iget-object v0, p0, Lorg/snmp4j/ScopedPDU;->contextEngineID:Lorg/snmp4j/smi/OctetString;

    return-object v0
.end method

.method public getContextName()Lorg/snmp4j/smi/OctetString;
    .registers 2

    .prologue
    .line 101
    iget-object v0, p0, Lorg/snmp4j/ScopedPDU;->contextName:Lorg/snmp4j/smi/OctetString;

    return-object v0
.end method

.method public setContextEngineID(Lorg/snmp4j/smi/OctetString;)V
    .registers 4
    .parameter "contextEngineID"

    .prologue
    .line 68
    if-nez p1, :cond_a

    .line 69
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Context engine ID must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_a
    iput-object p1, p0, Lorg/snmp4j/ScopedPDU;->contextEngineID:Lorg/snmp4j/smi/OctetString;

    .line 72
    return-void
.end method

.method public setContextName(Lorg/snmp4j/smi/OctetString;)V
    .registers 4
    .parameter "contextName"

    .prologue
    .line 89
    if-nez p1, :cond_a

    .line 90
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Context name must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :cond_a
    iput-object p1, p0, Lorg/snmp4j/ScopedPDU;->contextName:Lorg/snmp4j/smi/OctetString;

    .line 93
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 159
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 160
    .local v0, buf:Ljava/lang/StringBuffer;
    iget v2, p0, Lorg/snmp4j/PDU;->type:I

    invoke-static {v2}, Lorg/snmp4j/ScopedPDU;->getTypeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 161
    const-string v2, "[reqestID="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 162
    iget-object v2, p0, Lorg/snmp4j/PDU;->requestID:Lorg/snmp4j/smi/Integer32;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 163
    const-string v2, ", errorStatus="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 164
    iget-object v2, p0, Lorg/snmp4j/PDU;->errorStatus:Lorg/snmp4j/smi/Integer32;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 165
    const-string v2, ", errorIndex="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 166
    iget-object v2, p0, Lorg/snmp4j/PDU;->errorIndex:Lorg/snmp4j/smi/Integer32;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 167
    const-string v2, ", VBS["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 168
    const/4 v1, 0x0

    .local v1, i:I
    :goto_32
    iget-object v2, p0, Lorg/snmp4j/PDU;->variableBindings:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v1, v2, :cond_55

    .line 169
    iget-object v2, p0, Lorg/snmp4j/PDU;->variableBindings:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 170
    add-int/lit8 v2, v1, 0x1

    iget-object v3, p0, Lorg/snmp4j/PDU;->variableBindings:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v2, v3, :cond_52

    .line 171
    const-string v2, "; "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 168
    :cond_52
    add-int/lit8 v1, v1, 0x1

    goto :goto_32

    .line 174
    :cond_55
    const-string v2, "]]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 175
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

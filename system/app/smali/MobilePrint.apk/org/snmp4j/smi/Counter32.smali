.class public Lorg/snmp4j/smi/Counter32;
.super Lorg/snmp4j/smi/UnsignedInteger32;
.source "Counter32.java"


# static fields
.field private static final serialVersionUID:J = 0x55384d030e425d00L


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 44
    invoke-direct {p0}, Lorg/snmp4j/smi/UnsignedInteger32;-><init>()V

    .line 45
    return-void
.end method

.method public constructor <init>(J)V
    .registers 3
    .parameter "value"

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lorg/snmp4j/smi/UnsignedInteger32;-><init>(J)V

    .line 49
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 4

    .prologue
    .line 77
    new-instance v0, Lorg/snmp4j/smi/Counter32;

    iget-wide v1, p0, Lorg/snmp4j/smi/UnsignedInteger32;->value:J

    invoke-direct {v0, v1, v2}, Lorg/snmp4j/smi/Counter32;-><init>(J)V

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
    .line 67
    new-instance v2, Lorg/snmp4j/asn1/BER$MutableByte;

    invoke-direct {v2}, Lorg/snmp4j/asn1/BER$MutableByte;-><init>()V

    .line 68
    .local v2, type:Lorg/snmp4j/asn1/BER$MutableByte;
    invoke-static {p1, v2}, Lorg/snmp4j/asn1/BER;->decodeUnsignedInteger(Lorg/snmp4j/asn1/BERInputStream;Lorg/snmp4j/asn1/BER$MutableByte;)J

    move-result-wide v0

    .line 69
    .local v0, newValue:J
    invoke-virtual {v2}, Lorg/snmp4j/asn1/BER$MutableByte;->getValue()B

    move-result v3

    const/16 v4, 0x41

    if-eq v3, v4, :cond_2e

    .line 70
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Wrong type encountered when decoding Counter: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v2}, Lorg/snmp4j/asn1/BER$MutableByte;->getValue()B

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 73
    :cond_2e
    invoke-virtual {p0, v0, v1}, Lorg/snmp4j/smi/Counter32;->setValue(J)V

    .line 74
    return-void
.end method

.method public encodeBER(Ljava/io/OutputStream;)V
    .registers 5
    .parameter "outputStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 63
    const/16 v0, 0x41

    invoke-virtual {p0}, Lorg/snmp4j/smi/Counter32;->getValue()J

    move-result-wide v1

    invoke-static {p1, v0, v1, v2}, Lorg/snmp4j/asn1/BER;->encodeUnsignedInteger(Ljava/io/OutputStream;BJ)V

    .line 64
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .parameter "o"

    .prologue
    const/4 v0, 0x0

    .line 52
    instance-of v1, p1, Lorg/snmp4j/smi/Counter32;

    if-eqz v1, :cond_14

    .line 53
    check-cast p1, Lorg/snmp4j/smi/Counter32;

    .end local p1
    invoke-virtual {p1}, Lorg/snmp4j/smi/Counter32;->getValue()J

    move-result-wide v1

    invoke-virtual {p0}, Lorg/snmp4j/smi/Counter32;->getValue()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_14

    const/4 v0, 0x1

    .line 55
    :cond_14
    return v0
.end method

.method public fromSubIndex(Lorg/snmp4j/smi/OID;Z)V
    .registers 4
    .parameter "subIndex"
    .parameter "impliedLength"

    .prologue
    .line 98
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getSyntax()I
    .registers 2

    .prologue
    .line 59
    const/16 v0, 0x41

    return v0
.end method

.method public increment()V
    .registers 5

    .prologue
    .line 85
    iget-wide v0, p0, Lorg/snmp4j/smi/UnsignedInteger32;->value:J

    const-wide v2, 0xffffffffL

    cmp-long v0, v0, v2

    if-gez v0, :cond_13

    .line 86
    iget-wide v0, p0, Lorg/snmp4j/smi/UnsignedInteger32;->value:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/snmp4j/smi/UnsignedInteger32;->value:J

    .line 91
    :goto_12
    return-void

    .line 89
    :cond_13
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/snmp4j/smi/UnsignedInteger32;->value:J

    goto :goto_12
.end method

.method public toSubIndex(Z)Lorg/snmp4j/smi/OID;
    .registers 3
    .parameter "impliedLength"

    .prologue
    .line 94
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

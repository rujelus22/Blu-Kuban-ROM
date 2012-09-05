.class public Lorg/snmp4j/smi/Counter64;
.super Lorg/snmp4j/smi/AbstractVariable;
.source "Counter64.java"

# interfaces
.implements Lorg/snmp4j/smi/AssignableFromLong;
.implements Lorg/snmp4j/smi/AssignableFromString;


# static fields
.field private static final serialVersionUID:J = 0x795030065a01ff37L


# instance fields
.field private value:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 50
    invoke-direct {p0}, Lorg/snmp4j/smi/AbstractVariable;-><init>()V

    .line 48
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/snmp4j/smi/Counter64;->value:J

    .line 51
    return-void
.end method

.method public constructor <init>(J)V
    .registers 5
    .parameter "value"

    .prologue
    .line 53
    invoke-direct {p0}, Lorg/snmp4j/smi/AbstractVariable;-><init>()V

    .line 48
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/snmp4j/smi/Counter64;->value:J

    .line 54
    invoke-virtual {p0, p1, p2}, Lorg/snmp4j/smi/Counter64;->setValue(J)V

    .line 55
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 4

    .prologue
    .line 143
    new-instance v0, Lorg/snmp4j/smi/Counter64;

    iget-wide v1, p0, Lorg/snmp4j/smi/Counter64;->value:J

    invoke-direct {v0, v1, v2}, Lorg/snmp4j/smi/Counter64;-><init>(J)V

    return-object v0
.end method

.method public compareTo(Ljava/lang/Object;)I
    .registers 11
    .parameter "o"

    .prologue
    const-wide/16 v7, 0x1

    .line 103
    check-cast p1, Lorg/snmp4j/smi/Counter64;

    .end local p1
    iget-wide v1, p1, Lorg/snmp4j/smi/Counter64;->value:J

    .line 104
    .local v1, other:J
    const/16 v0, 0x3f

    .local v0, i:I
    :goto_8
    if-ltz v0, :cond_26

    .line 105
    iget-wide v3, p0, Lorg/snmp4j/smi/Counter64;->value:J

    shr-long/2addr v3, v0

    and-long/2addr v3, v7

    shr-long v5, v1, v0

    and-long/2addr v5, v7

    cmp-long v3, v3, v5

    if-eqz v3, :cond_23

    .line 107
    iget-wide v3, p0, Lorg/snmp4j/smi/Counter64;->value:J

    shr-long/2addr v3, v0

    and-long/2addr v3, v7

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_21

    .line 108
    const/4 v3, 0x1

    .line 115
    :goto_20
    return v3

    .line 111
    :cond_21
    const/4 v3, -0x1

    goto :goto_20

    .line 104
    :cond_23
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 115
    :cond_26
    const/4 v3, 0x0

    goto :goto_20
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
    .line 62
    new-instance v2, Lorg/snmp4j/asn1/BER$MutableByte;

    invoke-direct {v2}, Lorg/snmp4j/asn1/BER$MutableByte;-><init>()V

    .line 63
    .local v2, type:Lorg/snmp4j/asn1/BER$MutableByte;
    invoke-static {p1, v2}, Lorg/snmp4j/asn1/BER;->decodeUnsignedInt64(Lorg/snmp4j/asn1/BERInputStream;Lorg/snmp4j/asn1/BER$MutableByte;)J

    move-result-wide v0

    .line 64
    .local v0, newValue:J
    invoke-virtual {v2}, Lorg/snmp4j/asn1/BER$MutableByte;->getValue()B

    move-result v3

    const/16 v4, 0x46

    if-eq v3, v4, :cond_2e

    .line 65
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Wrong type encountered when decoding Counter64: "

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

    .line 68
    :cond_2e
    invoke-virtual {p0, v0, v1}, Lorg/snmp4j/smi/Counter64;->setValue(J)V

    .line 69
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
    .line 58
    const/16 v0, 0x46

    iget-wide v1, p0, Lorg/snmp4j/smi/Counter64;->value:J

    invoke-static {p1, v0, v1, v2}, Lorg/snmp4j/asn1/BER;->encodeUnsignedInt64(Ljava/io/OutputStream;BJ)V

    .line 59
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .parameter "o"

    .prologue
    const/4 v0, 0x0

    .line 96
    instance-of v1, p1, Lorg/snmp4j/smi/Counter64;

    if-eqz v1, :cond_10

    .line 97
    check-cast p1, Lorg/snmp4j/smi/Counter64;

    .end local p1
    iget-wide v1, p1, Lorg/snmp4j/smi/Counter64;->value:J

    iget-wide v3, p0, Lorg/snmp4j/smi/Counter64;->value:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_10

    const/4 v0, 0x1

    .line 99
    :cond_10
    return v0
.end method

.method public fromSubIndex(Lorg/snmp4j/smi/OID;Z)V
    .registers 4
    .parameter "subIndex"
    .parameter "impliedLength"

    .prologue
    .line 168
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getBERLength()I
    .registers 5

    .prologue
    .line 80
    iget-wide v0, p0, Lorg/snmp4j/smi/Counter64;->value:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_b

    .line 81
    const/16 v0, 0xb

    .line 92
    :goto_a
    return v0

    .line 83
    :cond_b
    iget-wide v0, p0, Lorg/snmp4j/smi/Counter64;->value:J

    const-wide v2, 0x80000000L

    cmp-long v0, v0, v2

    if-gez v0, :cond_38

    .line 84
    iget-wide v0, p0, Lorg/snmp4j/smi/Counter64;->value:J

    const-wide/32 v2, 0x8000

    cmp-long v0, v0, v2

    if-gez v0, :cond_2b

    .line 85
    iget-wide v0, p0, Lorg/snmp4j/smi/Counter64;->value:J

    const-wide/16 v2, 0x80

    cmp-long v0, v0, v2

    if-gez v0, :cond_29

    const/4 v0, 0x3

    goto :goto_a

    :cond_29
    const/4 v0, 0x4

    goto :goto_a

    .line 87
    :cond_2b
    iget-wide v0, p0, Lorg/snmp4j/smi/Counter64;->value:J

    const-wide/32 v2, 0x800000

    cmp-long v0, v0, v2

    if-gez v0, :cond_36

    const/4 v0, 0x5

    goto :goto_a

    :cond_36
    const/4 v0, 0x6

    goto :goto_a

    .line 89
    :cond_38
    iget-wide v0, p0, Lorg/snmp4j/smi/Counter64;->value:J

    const-wide v2, 0x800000000000L

    cmp-long v0, v0, v2

    if-gez v0, :cond_53

    .line 90
    iget-wide v0, p0, Lorg/snmp4j/smi/Counter64;->value:J

    const-wide v2, 0x8000000000L

    cmp-long v0, v0, v2

    if-gez v0, :cond_50

    const/4 v0, 0x7

    goto :goto_a

    :cond_50
    const/16 v0, 0x8

    goto :goto_a

    .line 92
    :cond_53
    iget-wide v0, p0, Lorg/snmp4j/smi/Counter64;->value:J

    const-wide/high16 v2, 0x80

    cmp-long v0, v0, v2

    if-gez v0, :cond_5e

    const/16 v0, 0x9

    goto :goto_a

    :cond_5e
    const/16 v0, 0xa

    goto :goto_a
.end method

.method public getSyntax()I
    .registers 2

    .prologue
    .line 72
    const/16 v0, 0x46

    return v0
.end method

.method public getValue()J
    .registers 3

    .prologue
    .line 139
    iget-wide v0, p0, Lorg/snmp4j/smi/Counter64;->value:J

    return-wide v0
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 76
    iget-wide v0, p0, Lorg/snmp4j/smi/Counter64;->value:J

    long-to-int v0, v0

    return v0
.end method

.method public increment()V
    .registers 5

    .prologue
    .line 152
    iget-wide v0, p0, Lorg/snmp4j/smi/Counter64;->value:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/snmp4j/smi/Counter64;->value:J

    .line 153
    return-void
.end method

.method public setValue(J)V
    .registers 3
    .parameter "value"

    .prologue
    .line 135
    iput-wide p1, p0, Lorg/snmp4j/smi/Counter64;->value:J

    .line 136
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .registers 4
    .parameter "value"

    .prologue
    .line 131
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/snmp4j/smi/Counter64;->value:J

    .line 132
    return-void
.end method

.method public final toInt()I
    .registers 3

    .prologue
    .line 156
    invoke-virtual {p0}, Lorg/snmp4j/smi/Counter64;->getValue()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public final toLong()J
    .registers 3

    .prologue
    .line 160
    invoke-virtual {p0}, Lorg/snmp4j/smi/Counter64;->getValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .registers 9

    .prologue
    const/16 v7, 0x8

    .line 119
    iget-wide v3, p0, Lorg/snmp4j/smi/Counter64;->value:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_1c

    iget-wide v3, p0, Lorg/snmp4j/smi/Counter64;->value:J

    const-wide v5, 0x7fffffffffffffffL

    cmp-long v3, v3, v5

    if-gez v3, :cond_1c

    .line 120
    iget-wide v3, p0, Lorg/snmp4j/smi/Counter64;->value:J

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    .line 127
    :goto_1b
    return-object v3

    .line 122
    :cond_1c
    new-array v0, v7, [B

    .line 123
    .local v0, bytes:[B
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1f
    if-ge v1, v7, :cond_32

    .line 124
    iget-wide v3, p0, Lorg/snmp4j/smi/Counter64;->value:J

    rsub-int/lit8 v5, v1, 0x7

    mul-int/lit8 v5, v5, 0x8

    shr-long/2addr v3, v5

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 123
    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    .line 126
    :cond_32
    new-instance v2, Ljava/math/BigInteger;

    const/4 v3, 0x1

    invoke-direct {v2, v3, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 127
    .local v2, i64:Ljava/math/BigInteger;
    invoke-virtual {v2}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1b
.end method

.method public toSubIndex(Z)Lorg/snmp4j/smi/OID;
    .registers 3
    .parameter "impliedLength"

    .prologue
    .line 164
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

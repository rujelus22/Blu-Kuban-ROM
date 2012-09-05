.class public Lorg/snmp4j/smi/UnsignedInteger32;
.super Lorg/snmp4j/smi/AbstractVariable;
.source "UnsignedInteger32.java"

# interfaces
.implements Lorg/snmp4j/smi/AssignableFromLong;
.implements Lorg/snmp4j/smi/AssignableFromString;


# static fields
.field private static final serialVersionUID:J = -0x1de965a4dae9500fL


# instance fields
.field protected value:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 41
    invoke-direct {p0}, Lorg/snmp4j/smi/AbstractVariable;-><init>()V

    .line 39
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/snmp4j/smi/UnsignedInteger32;->value:J

    .line 42
    return-void
.end method

.method public constructor <init>(B)V
    .registers 4
    .parameter "signedByteValue"

    .prologue
    .line 74
    invoke-direct {p0}, Lorg/snmp4j/smi/AbstractVariable;-><init>()V

    .line 39
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/snmp4j/smi/UnsignedInteger32;->value:J

    .line 75
    and-int/lit16 v0, p1, 0xff

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lorg/snmp4j/smi/UnsignedInteger32;->setValue(J)V

    .line 76
    return-void
.end method

.method public constructor <init>(I)V
    .registers 6
    .parameter "signedIntValue"

    .prologue
    .line 63
    invoke-direct {p0}, Lorg/snmp4j/smi/AbstractVariable;-><init>()V

    .line 39
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/snmp4j/smi/UnsignedInteger32;->value:J

    .line 64
    int-to-long v0, p1

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lorg/snmp4j/smi/UnsignedInteger32;->setValue(J)V

    .line 65
    return-void
.end method

.method public constructor <init>(J)V
    .registers 5
    .parameter "value"

    .prologue
    .line 52
    invoke-direct {p0}, Lorg/snmp4j/smi/AbstractVariable;-><init>()V

    .line 39
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/snmp4j/smi/UnsignedInteger32;->value:J

    .line 53
    invoke-virtual {p0, p1, p2}, Lorg/snmp4j/smi/UnsignedInteger32;->setValue(J)V

    .line 54
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 4

    .prologue
    .line 155
    new-instance v0, Lorg/snmp4j/smi/UnsignedInteger32;

    iget-wide v1, p0, Lorg/snmp4j/smi/UnsignedInteger32;->value:J

    invoke-direct {v0, v1, v2}, Lorg/snmp4j/smi/UnsignedInteger32;-><init>(J)V

    return-object v0
.end method

.method public compareTo(Ljava/lang/Object;)I
    .registers 10
    .parameter "o"

    .prologue
    const-wide/16 v6, 0x0

    .line 124
    iget-wide v2, p0, Lorg/snmp4j/smi/UnsignedInteger32;->value:J

    check-cast p1, Lorg/snmp4j/smi/UnsignedInteger32;

    .end local p1
    invoke-virtual {p1}, Lorg/snmp4j/smi/UnsignedInteger32;->getValue()J

    move-result-wide v4

    sub-long v0, v2, v4

    .line 125
    .local v0, diff:J
    cmp-long v2, v0, v6

    if-gez v2, :cond_12

    .line 126
    const/4 v2, -0x1

    .line 131
    :goto_11
    return v2

    .line 128
    :cond_12
    cmp-long v2, v0, v6

    if-lez v2, :cond_18

    .line 129
    const/4 v2, 0x1

    goto :goto_11

    .line 131
    :cond_18
    const/4 v2, 0x0

    goto :goto_11
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
    .line 83
    new-instance v2, Lorg/snmp4j/asn1/BER$MutableByte;

    invoke-direct {v2}, Lorg/snmp4j/asn1/BER$MutableByte;-><init>()V

    .line 84
    .local v2, type:Lorg/snmp4j/asn1/BER$MutableByte;
    invoke-static {p1, v2}, Lorg/snmp4j/asn1/BER;->decodeUnsignedInteger(Lorg/snmp4j/asn1/BERInputStream;Lorg/snmp4j/asn1/BER$MutableByte;)J

    move-result-wide v0

    .line 85
    .local v0, newValue:J
    invoke-virtual {v2}, Lorg/snmp4j/asn1/BER$MutableByte;->getValue()B

    move-result v3

    const/16 v4, 0x42

    if-eq v3, v4, :cond_2e

    .line 86
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Wrong type encountered when decoding Gauge: "

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

    .line 89
    :cond_2e
    invoke-virtual {p0, v0, v1}, Lorg/snmp4j/smi/UnsignedInteger32;->setValue(J)V

    .line 90
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
    .line 79
    const/16 v0, 0x42

    iget-wide v1, p0, Lorg/snmp4j/smi/UnsignedInteger32;->value:J

    invoke-static {p1, v0, v1, v2}, Lorg/snmp4j/asn1/BER;->encodeUnsignedInteger(Ljava/io/OutputStream;BJ)V

    .line 80
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .parameter "o"

    .prologue
    const/4 v0, 0x0

    .line 117
    instance-of v1, p1, Lorg/snmp4j/smi/UnsignedInteger32;

    if-eqz v1, :cond_10

    .line 118
    check-cast p1, Lorg/snmp4j/smi/UnsignedInteger32;

    .end local p1
    iget-wide v1, p1, Lorg/snmp4j/smi/UnsignedInteger32;->value:J

    iget-wide v3, p0, Lorg/snmp4j/smi/UnsignedInteger32;->value:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_10

    const/4 v0, 0x1

    .line 120
    :cond_10
    return v0
.end method

.method public fromSubIndex(Lorg/snmp4j/smi/OID;Z)V
    .registers 5
    .parameter "subIndex"
    .parameter "impliedLength"

    .prologue
    .line 171
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/snmp4j/smi/OID;->getUnsigned(I)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/snmp4j/smi/UnsignedInteger32;->setValue(J)V

    .line 172
    return-void
.end method

.method public getBERLength()I
    .registers 5

    .prologue
    .line 101
    iget-wide v0, p0, Lorg/snmp4j/smi/UnsignedInteger32;->value:J

    const-wide/16 v2, 0x80

    cmp-long v0, v0, v2

    if-gez v0, :cond_a

    .line 102
    const/4 v0, 0x3

    .line 113
    :goto_9
    return v0

    .line 104
    :cond_a
    iget-wide v0, p0, Lorg/snmp4j/smi/UnsignedInteger32;->value:J

    const-wide/32 v2, 0x8000

    cmp-long v0, v0, v2

    if-gez v0, :cond_15

    .line 105
    const/4 v0, 0x4

    goto :goto_9

    .line 107
    :cond_15
    iget-wide v0, p0, Lorg/snmp4j/smi/UnsignedInteger32;->value:J

    const-wide/32 v2, 0x800000

    cmp-long v0, v0, v2

    if-gez v0, :cond_20

    .line 108
    const/4 v0, 0x5

    goto :goto_9

    .line 110
    :cond_20
    iget-wide v0, p0, Lorg/snmp4j/smi/UnsignedInteger32;->value:J

    const-wide v2, 0x80000000L

    cmp-long v0, v0, v2

    if-gez v0, :cond_2d

    .line 111
    const/4 v0, 0x6

    goto :goto_9

    .line 113
    :cond_2d
    const/4 v0, 0x7

    goto :goto_9
.end method

.method public getSyntax()I
    .registers 2

    .prologue
    .line 93
    const/16 v0, 0x42

    return v0
.end method

.method public getValue()J
    .registers 3

    .prologue
    .line 151
    iget-wide v0, p0, Lorg/snmp4j/smi/UnsignedInteger32;->value:J

    return-wide v0
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 97
    iget-wide v0, p0, Lorg/snmp4j/smi/UnsignedInteger32;->value:J

    long-to-int v0, v0

    return v0
.end method

.method public setValue(J)V
    .registers 5
    .parameter "value"

    .prologue
    .line 143
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_f

    const-wide v0, 0xffffffffL

    cmp-long v0, p1, v0

    if-lez v0, :cond_17

    .line 144
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Argument must be an unsigned 32bit value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 147
    :cond_17
    iput-wide p1, p0, Lorg/snmp4j/smi/UnsignedInteger32;->value:J

    .line 148
    return-void
.end method

.method public final setValue(Ljava/lang/String;)V
    .registers 4
    .parameter "value"

    .prologue
    .line 139
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/snmp4j/smi/UnsignedInteger32;->setValue(J)V

    .line 140
    return-void
.end method

.method public final toInt()I
    .registers 3

    .prologue
    .line 159
    invoke-virtual {p0}, Lorg/snmp4j/smi/UnsignedInteger32;->getValue()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public final toLong()J
    .registers 3

    .prologue
    .line 163
    invoke-virtual {p0}, Lorg/snmp4j/smi/UnsignedInteger32;->getValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 135
    iget-wide v0, p0, Lorg/snmp4j/smi/UnsignedInteger32;->value:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toSubIndex(Z)Lorg/snmp4j/smi/OID;
    .registers 6
    .parameter "impliedLength"

    .prologue
    .line 167
    new-instance v0, Lorg/snmp4j/smi/OID;

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    invoke-virtual {p0}, Lorg/snmp4j/smi/UnsignedInteger32;->toInt()I

    move-result v3

    aput v3, v1, v2

    invoke-direct {v0, v1}, Lorg/snmp4j/smi/OID;-><init>([I)V

    return-object v0
.end method

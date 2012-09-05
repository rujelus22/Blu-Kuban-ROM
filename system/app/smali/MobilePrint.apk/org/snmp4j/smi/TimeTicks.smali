.class public Lorg/snmp4j/smi/TimeTicks;
.super Lorg/snmp4j/smi/UnsignedInteger32;
.source "TimeTicks.java"


# static fields
.field private static final FORMAT_PATTERN:Ljava/lang/String; = "{0,choice,0#|1#1 day, |1<{0,number,integer} days, }{1,number,integer}:{2,number,00}:{3,number,00}.{4,number,00}"

.field private static final serialVersionUID:J = 0x783bdd054fda72d7L


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
    .line 58
    invoke-direct {p0, p1, p2}, Lorg/snmp4j/smi/UnsignedInteger32;-><init>(J)V

    .line 59
    return-void
.end method

.method public constructor <init>(Lorg/snmp4j/smi/TimeTicks;)V
    .registers 4
    .parameter "other"

    .prologue
    .line 53
    invoke-direct {p0}, Lorg/snmp4j/smi/UnsignedInteger32;-><init>()V

    .line 54
    iget-wide v0, p1, Lorg/snmp4j/smi/UnsignedInteger32;->value:J

    iput-wide v0, p0, Lorg/snmp4j/smi/UnsignedInteger32;->value:J

    .line 55
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 4

    .prologue
    .line 62
    new-instance v0, Lorg/snmp4j/smi/TimeTicks;

    iget-wide v1, p0, Lorg/snmp4j/smi/UnsignedInteger32;->value:J

    invoke-direct {v0, v1, v2}, Lorg/snmp4j/smi/TimeTicks;-><init>(J)V

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
    .line 74
    new-instance v2, Lorg/snmp4j/asn1/BER$MutableByte;

    invoke-direct {v2}, Lorg/snmp4j/asn1/BER$MutableByte;-><init>()V

    .line 75
    .local v2, type:Lorg/snmp4j/asn1/BER$MutableByte;
    invoke-static {p1, v2}, Lorg/snmp4j/asn1/BER;->decodeUnsignedInteger(Lorg/snmp4j/asn1/BERInputStream;Lorg/snmp4j/asn1/BER$MutableByte;)J

    move-result-wide v0

    .line 76
    .local v0, newValue:J
    invoke-virtual {v2}, Lorg/snmp4j/asn1/BER$MutableByte;->getValue()B

    move-result v3

    const/16 v4, 0x43

    if-eq v3, v4, :cond_2e

    .line 77
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Wrong type encountered when decoding TimeTicks: "

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

    .line 79
    :cond_2e
    invoke-virtual {p0, v0, v1}, Lorg/snmp4j/smi/TimeTicks;->setValue(J)V

    .line 80
    return-void
.end method

.method public encodeBER(Ljava/io/OutputStream;)V
    .registers 5
    .parameter "os"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 70
    const/16 v0, 0x43

    invoke-super {p0}, Lorg/snmp4j/smi/UnsignedInteger32;->getValue()J

    move-result-wide v1

    invoke-static {p1, v0, v1, v2}, Lorg/snmp4j/asn1/BER;->encodeUnsignedInteger(Ljava/io/OutputStream;BJ)V

    .line 71
    return-void
.end method

.method public fromMilliseconds(J)V
    .registers 5
    .parameter "millis"

    .prologue
    .line 147
    const-wide/16 v0, 0xa

    div-long v0, p1, v0

    invoke-virtual {p0, v0, v1}, Lorg/snmp4j/smi/TimeTicks;->setValue(J)V

    .line 148
    return-void
.end method

.method public getSyntax()I
    .registers 2

    .prologue
    .line 66
    const/16 v0, 0x43

    return v0
.end method

.method public toMilliseconds()J
    .registers 5

    .prologue
    .line 137
    iget-wide v0, p0, Lorg/snmp4j/smi/UnsignedInteger32;->value:J

    const-wide/16 v2, 0xa

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 90
    const-string v0, "{0,choice,0#|1#1 day, |1<{0,number,integer} days, }{1,number,integer}:{2,number,00}:{3,number,00}.{4,number,00}"

    invoke-virtual {p0, v0}, Lorg/snmp4j/smi/TimeTicks;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .registers 18
    .parameter "pattern"

    .prologue
    .line 104
    invoke-virtual/range {p0 .. p0}, Lorg/snmp4j/smi/TimeTicks;->getValue()J

    move-result-wide v11

    .line 106
    .local v11, tt:J
    const-wide/32 v14, 0x83d600

    div-long v1, v11, v14

    .line 107
    .local v1, days:J
    const-wide/32 v14, 0x83d600

    rem-long/2addr v11, v14

    .line 109
    const-wide/32 v14, 0x57e40

    div-long v3, v11, v14

    .line 110
    .local v3, hours:J
    const-wide/32 v14, 0x57e40

    rem-long/2addr v11, v14

    .line 112
    const-wide/16 v14, 0x1770

    div-long v7, v11, v14

    .line 113
    .local v7, minutes:J
    const-wide/16 v14, 0x1770

    rem-long/2addr v11, v14

    .line 115
    const-wide/16 v14, 0x64

    div-long v9, v11, v14

    .line 116
    .local v9, seconds:J
    const-wide/16 v14, 0x64

    rem-long/2addr v11, v14

    .line 118
    move-wide v5, v11

    .line 120
    .local v5, hseconds:J
    const/4 v14, 0x5

    new-array v13, v14, [Ljava/lang/Long;

    .line 121
    .local v13, values:[Ljava/lang/Long;
    const/4 v14, 0x0

    new-instance v15, Ljava/lang/Long;

    invoke-direct {v15, v1, v2}, Ljava/lang/Long;-><init>(J)V

    aput-object v15, v13, v14

    .line 122
    const/4 v14, 0x1

    new-instance v15, Ljava/lang/Long;

    invoke-direct {v15, v3, v4}, Ljava/lang/Long;-><init>(J)V

    aput-object v15, v13, v14

    .line 123
    const/4 v14, 0x2

    new-instance v15, Ljava/lang/Long;

    invoke-direct {v15, v7, v8}, Ljava/lang/Long;-><init>(J)V

    aput-object v15, v13, v14

    .line 124
    const/4 v14, 0x3

    new-instance v15, Ljava/lang/Long;

    invoke-direct {v15, v9, v10}, Ljava/lang/Long;-><init>(J)V

    aput-object v15, v13, v14

    .line 125
    const/4 v14, 0x4

    new-instance v15, Ljava/lang/Long;

    invoke-direct {v15, v5, v6}, Ljava/lang/Long;-><init>(J)V

    aput-object v15, v13, v14

    .line 127
    check-cast v13, [Ljava/lang/Object;

    .end local v13           #values:[Ljava/lang/Long;
    move-object/from16 v0, p1

    invoke-static {v0, v13}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    return-object v14
.end method

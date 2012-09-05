.class public Lorg/snmp4j/smi/OctetString;
.super Lorg/snmp4j/smi/AbstractVariable;
.source "OctetString.java"

# interfaces
.implements Lorg/snmp4j/smi/AssignableFromByteArray;
.implements Lorg/snmp4j/smi/AssignableFromString;


# static fields
.field private static final DEFAULT_HEX_DELIMITER:C = ':'

.field private static final serialVersionUID:J = 0x39414b0344051ea1L


# instance fields
.field private value:[B


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 47
    invoke-direct {p0}, Lorg/snmp4j/smi/AbstractVariable;-><init>()V

    .line 42
    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/snmp4j/smi/OctetString;->value:[B

    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "stringValue"

    .prologue
    .line 80
    invoke-direct {p0}, Lorg/snmp4j/smi/AbstractVariable;-><init>()V

    .line 42
    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/snmp4j/smi/OctetString;->value:[B

    .line 81
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Lorg/snmp4j/smi/OctetString;->value:[B

    .line 82
    return-void
.end method

.method public constructor <init>(Lorg/snmp4j/smi/OctetString;)V
    .registers 4
    .parameter "other"

    .prologue
    const/4 v1, 0x0

    .line 90
    invoke-direct {p0}, Lorg/snmp4j/smi/AbstractVariable;-><init>()V

    .line 42
    new-array v0, v1, [B

    iput-object v0, p0, Lorg/snmp4j/smi/OctetString;->value:[B

    .line 91
    new-array v0, v1, [B

    iput-object v0, p0, Lorg/snmp4j/smi/OctetString;->value:[B

    .line 92
    invoke-virtual {p0, p1}, Lorg/snmp4j/smi/OctetString;->append(Lorg/snmp4j/smi/OctetString;)V

    .line 93
    return-void
.end method

.method public constructor <init>([B)V
    .registers 4
    .parameter "rawValue"

    .prologue
    .line 56
    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Lorg/snmp4j/smi/OctetString;-><init>([BII)V

    .line 57
    return-void
.end method

.method public constructor <init>([BII)V
    .registers 6
    .parameter "rawValue"
    .parameter "offset"
    .parameter "length"

    .prologue
    const/4 v1, 0x0

    .line 69
    invoke-direct {p0}, Lorg/snmp4j/smi/AbstractVariable;-><init>()V

    .line 42
    new-array v0, v1, [B

    iput-object v0, p0, Lorg/snmp4j/smi/OctetString;->value:[B

    .line 70
    new-array v0, p3, [B

    iput-object v0, p0, Lorg/snmp4j/smi/OctetString;->value:[B

    .line 71
    iget-object v0, p0, Lorg/snmp4j/smi/OctetString;->value:[B

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 72
    return-void
.end method

.method public static fromByteArray([B)Lorg/snmp4j/smi/OctetString;
    .registers 2
    .parameter "value"

    .prologue
    .line 566
    if-nez p0, :cond_4

    .line 567
    const/4 v0, 0x0

    .line 569
    :goto_3
    return-object v0

    :cond_4
    new-instance v0, Lorg/snmp4j/smi/OctetString;

    invoke-direct {v0, p0}, Lorg/snmp4j/smi/OctetString;-><init>([B)V

    goto :goto_3
.end method

.method public static fromHexString(Ljava/lang/String;)Lorg/snmp4j/smi/OctetString;
    .registers 2
    .parameter "hexString"

    .prologue
    .line 309
    const/16 v0, 0x3a

    invoke-static {p0, v0}, Lorg/snmp4j/smi/OctetString;->fromHexString(Ljava/lang/String;C)Lorg/snmp4j/smi/OctetString;

    move-result-object v0

    return-object v0
.end method

.method public static fromHexString(Ljava/lang/String;C)Lorg/snmp4j/smi/OctetString;
    .registers 3
    .parameter "hexString"
    .parameter "delimiter"

    .prologue
    .line 313
    const/16 v0, 0x10

    invoke-static {p0, p1, v0}, Lorg/snmp4j/smi/OctetString;->fromString(Ljava/lang/String;CI)Lorg/snmp4j/smi/OctetString;

    move-result-object v0

    return-object v0
.end method

.method public static fromString(Ljava/lang/String;CI)Lorg/snmp4j/smi/OctetString;
    .registers 9
    .parameter "string"
    .parameter "delimiter"
    .parameter "radix"

    .prologue
    .line 318
    const-string v0, ""

    .line 319
    .local v0, delim:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 320
    new-instance v3, Ljava/util/StringTokenizer;

    invoke-direct {v3, p0, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    .local v3, st:Ljava/util/StringTokenizer;
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v5

    new-array v4, v5, [B

    .line 322
    .local v4, value:[B
    const/4 v1, 0x0

    .local v1, n:I
    :goto_1f
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v5

    if-eqz v5, :cond_33

    .line 323
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 324
    .local v2, s:Ljava/lang/String;
    invoke-static {v2, p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v4, v1

    .line 322
    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    .line 326
    .end local v2           #s:Ljava/lang/String;
    :cond_33
    new-instance v5, Lorg/snmp4j/smi/OctetString;

    invoke-direct {v5, v4}, Lorg/snmp4j/smi/OctetString;-><init>([B)V

    return-object v5
.end method

.method public static fromString(Ljava/lang/String;I)Lorg/snmp4j/smi/OctetString;
    .registers 10
    .parameter "string"
    .parameter "radix"

    .prologue
    .line 341
    const-wide/high16 v4, 0x4070

    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    double-to-float v4, v4

    float-to-double v4, v4

    int-to-double v6, p1

    invoke-static {v6, v7}, Ljava/lang/Math;->log(D)D

    move-result-wide v6

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v0, v4

    .line 342
    .local v0, digits:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    div-int/2addr v4, v0

    new-array v3, v4, [B

    .line 343
    .local v3, value:[B
    const/4 v1, 0x0

    .local v1, n:I
    :goto_1b
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_32

    .line 344
    add-int v4, v1, v0

    invoke-virtual {p0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 345
    .local v2, s:Ljava/lang/String;
    div-int v4, v1, v0

    invoke-static {v2, p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    .line 343
    add-int/2addr v1, v0

    goto :goto_1b

    .line 347
    .end local v2           #s:Ljava/lang/String;
    :cond_32
    new-instance v4, Lorg/snmp4j/smi/OctetString;

    invoke-direct {v4, v3}, Lorg/snmp4j/smi/OctetString;-><init>([B)V

    return-object v4
.end method

.method public static final split(Lorg/snmp4j/smi/OctetString;Lorg/snmp4j/smi/OctetString;)Ljava/util/Collection;
    .registers 13
    .parameter "octetString"
    .parameter "delimOctets"

    .prologue
    .line 520
    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    .line 521
    .local v6, parts:Ljava/util/List;
    const/4 v5, -0x1

    .line 522
    .local v5, maxDelim:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_7
    invoke-virtual {p1}, Lorg/snmp4j/smi/OctetString;->length()I

    move-result v8

    if-ge v2, v8, :cond_19

    .line 523
    invoke-virtual {p1, v2}, Lorg/snmp4j/smi/OctetString;->get(I)B

    move-result v8

    and-int/lit16 v1, v8, 0xff

    .line 524
    .local v1, delim:I
    if-le v1, v5, :cond_16

    .line 525
    move v5, v1

    .line 522
    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 528
    .end local v1           #delim:I
    :cond_19
    const/4 v7, 0x0

    .line 529
    .local v7, startPos:I
    const/4 v2, 0x0

    :goto_1b
    invoke-virtual {p0}, Lorg/snmp4j/smi/OctetString;->length()I

    move-result v8

    if-ge v2, v8, :cond_56

    .line 530
    iget-object v8, p0, Lorg/snmp4j/smi/OctetString;->value:[B

    aget-byte v8, v8, v2

    and-int/lit16 v0, v8, 0xff

    .line 531
    .local v0, c:I
    const/4 v3, 0x0

    .line 532
    .local v3, isDelim:Z
    if-gt v0, v5, :cond_4e

    .line 533
    const/4 v4, 0x0

    .local v4, j:I
    :goto_2b
    invoke-virtual {p1}, Lorg/snmp4j/smi/OctetString;->length()I

    move-result v8

    if-ge v4, v8, :cond_4e

    .line 534
    invoke-virtual {p1, v4}, Lorg/snmp4j/smi/OctetString;->get(I)B

    move-result v8

    and-int/lit16 v8, v8, 0xff

    if-ne v0, v8, :cond_4b

    .line 535
    if-ltz v7, :cond_49

    if-le v2, v7, :cond_49

    .line 536
    new-instance v8, Lorg/snmp4j/smi/OctetString;

    iget-object v9, p0, Lorg/snmp4j/smi/OctetString;->value:[B

    sub-int v10, v2, v7

    invoke-direct {v8, v9, v7, v10}, Lorg/snmp4j/smi/OctetString;-><init>([BII)V

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 539
    :cond_49
    const/4 v7, -0x1

    .line 540
    const/4 v3, 0x1

    .line 533
    :cond_4b
    add-int/lit8 v4, v4, 0x1

    goto :goto_2b

    .line 544
    .end local v4           #j:I
    :cond_4e
    if-nez v3, :cond_53

    if-gez v7, :cond_53

    .line 545
    move v7, v2

    .line 529
    :cond_53
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 548
    .end local v0           #c:I
    .end local v3           #isDelim:Z
    :cond_56
    if-ltz v7, :cond_67

    .line 549
    new-instance v8, Lorg/snmp4j/smi/OctetString;

    iget-object v9, p0, Lorg/snmp4j/smi/OctetString;->value:[B

    invoke-virtual {p0}, Lorg/snmp4j/smi/OctetString;->length()I

    move-result v10

    sub-int/2addr v10, v7

    invoke-direct {v8, v9, v7, v10}, Lorg/snmp4j/smi/OctetString;-><init>([BII)V

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 552
    :cond_67
    return-object v6
.end method


# virtual methods
.method public append(B)V
    .registers 6
    .parameter "b"

    .prologue
    const/4 v3, 0x0

    .line 101
    iget-object v1, p0, Lorg/snmp4j/smi/OctetString;->value:[B

    array-length v1, v1

    add-int/lit8 v1, v1, 0x1

    new-array v0, v1, [B

    .line 102
    .local v0, newValue:[B
    iget-object v1, p0, Lorg/snmp4j/smi/OctetString;->value:[B

    iget-object v2, p0, Lorg/snmp4j/smi/OctetString;->value:[B

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 103
    iget-object v1, p0, Lorg/snmp4j/smi/OctetString;->value:[B

    array-length v1, v1

    aput-byte p1, v0, v1

    .line 104
    iput-object v0, p0, Lorg/snmp4j/smi/OctetString;->value:[B

    .line 105
    return-void
.end method

.method public append(Ljava/lang/String;)V
    .registers 3
    .parameter "string"

    .prologue
    .line 135
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/snmp4j/smi/OctetString;->append([B)V

    .line 136
    return-void
.end method

.method public append(Lorg/snmp4j/smi/OctetString;)V
    .registers 3
    .parameter "octetString"

    .prologue
    .line 125
    invoke-virtual {p1}, Lorg/snmp4j/smi/OctetString;->getValue()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/snmp4j/smi/OctetString;->append([B)V

    .line 126
    return-void
.end method

.method public append([B)V
    .registers 6
    .parameter "bytes"

    .prologue
    const/4 v3, 0x0

    .line 113
    iget-object v1, p0, Lorg/snmp4j/smi/OctetString;->value:[B

    array-length v1, v1

    array-length v2, p1

    add-int/2addr v1, v2

    new-array v0, v1, [B

    .line 114
    .local v0, newValue:[B
    iget-object v1, p0, Lorg/snmp4j/smi/OctetString;->value:[B

    iget-object v2, p0, Lorg/snmp4j/smi/OctetString;->value:[B

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 115
    iget-object v1, p0, Lorg/snmp4j/smi/OctetString;->value:[B

    array-length v1, v1

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 116
    iput-object v0, p0, Lorg/snmp4j/smi/OctetString;->value:[B

    .line 117
    return-void
.end method

.method public clear()V
    .registers 2

    .prologue
    .line 142
    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/snmp4j/smi/OctetString;->value:[B

    .line 143
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 442
    new-instance v0, Lorg/snmp4j/smi/OctetString;

    iget-object v1, p0, Lorg/snmp4j/smi/OctetString;->value:[B

    invoke-direct {v0, v1}, Lorg/snmp4j/smi/OctetString;-><init>([B)V

    return-object v0
.end method

.method public compareTo(Ljava/lang/Object;)I
    .registers 7
    .parameter "o"

    .prologue
    .line 212
    instance-of v3, p1, Lorg/snmp4j/smi/OctetString;

    if-eqz v3, :cond_3b

    move-object v2, p1

    .line 213
    check-cast v2, Lorg/snmp4j/smi/OctetString;

    .line 214
    .local v2, other:Lorg/snmp4j/smi/OctetString;
    iget-object v3, p0, Lorg/snmp4j/smi/OctetString;->value:[B

    array-length v3, v3

    iget-object v4, v2, Lorg/snmp4j/smi/OctetString;->value:[B

    array-length v4, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 215
    .local v1, maxlen:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_12
    if-ge v0, v1, :cond_33

    .line 216
    iget-object v3, p0, Lorg/snmp4j/smi/OctetString;->value:[B

    aget-byte v3, v3, v0

    iget-object v4, v2, Lorg/snmp4j/smi/OctetString;->value:[B

    aget-byte v4, v4, v0

    if-eq v3, v4, :cond_30

    .line 217
    iget-object v3, p0, Lorg/snmp4j/smi/OctetString;->value:[B

    aget-byte v3, v3, v0

    and-int/lit16 v3, v3, 0xff

    iget-object v4, v2, Lorg/snmp4j/smi/OctetString;->value:[B

    aget-byte v4, v4, v0

    and-int/lit16 v4, v4, 0xff

    if-ge v3, v4, :cond_2e

    .line 218
    const/4 v3, -0x1

    .line 225
    :goto_2d
    return v3

    .line 221
    :cond_2e
    const/4 v3, 0x1

    goto :goto_2d

    .line 215
    :cond_30
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 225
    :cond_33
    iget-object v3, p0, Lorg/snmp4j/smi/OctetString;->value:[B

    array-length v3, v3

    iget-object v4, v2, Lorg/snmp4j/smi/OctetString;->value:[B

    array-length v4, v4

    sub-int/2addr v3, v4

    goto :goto_2d

    .line 227
    .end local v0           #i:I
    .end local v1           #maxlen:I
    .end local v2           #other:Lorg/snmp4j/smi/OctetString;
    :cond_3b
    new-instance v3, Ljava/lang/ClassCastException;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public decodeBER(Lorg/snmp4j/asn1/BERInputStream;)V
    .registers 7
    .parameter "inputStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 150
    new-instance v0, Lorg/snmp4j/asn1/BER$MutableByte;

    invoke-direct {v0}, Lorg/snmp4j/asn1/BER$MutableByte;-><init>()V

    .line 151
    .local v0, type:Lorg/snmp4j/asn1/BER$MutableByte;
    invoke-static {p1, v0}, Lorg/snmp4j/asn1/BER;->decodeString(Lorg/snmp4j/asn1/BERInputStream;Lorg/snmp4j/asn1/BER$MutableByte;)[B

    move-result-object v1

    .line 152
    .local v1, v:[B
    invoke-virtual {v0}, Lorg/snmp4j/asn1/BER$MutableByte;->getValue()B

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_2d

    .line 153
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Wrong type encountered when decoding OctetString: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v0}, Lorg/snmp4j/asn1/BER$MutableByte;->getValue()B

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 156
    :cond_2d
    invoke-virtual {p0, v1}, Lorg/snmp4j/smi/OctetString;->setValue([B)V

    .line 157
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
    .line 146
    const/4 v0, 0x4

    invoke-virtual {p0}, Lorg/snmp4j/smi/OctetString;->getValue()[B

    move-result-object v1

    invoke-static {p1, v0, v1}, Lorg/snmp4j/asn1/BER;->encodeString(Ljava/io/OutputStream;B[B)V

    .line 147
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .parameter "o"

    .prologue
    .line 201
    instance-of v1, p1, Lorg/snmp4j/smi/OctetString;

    if-eqz v1, :cond_10

    move-object v0, p1

    .line 202
    check-cast v0, Lorg/snmp4j/smi/OctetString;

    .line 203
    .local v0, other:Lorg/snmp4j/smi/OctetString;
    iget-object v1, p0, Lorg/snmp4j/smi/OctetString;->value:[B

    iget-object v2, v0, Lorg/snmp4j/smi/OctetString;->value:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    .line 208
    .end local v0           #other:Lorg/snmp4j/smi/OctetString;
    .end local p1
    :goto_f
    return v1

    .line 205
    .restart local p1
    :cond_10
    instance-of v1, p1, [B

    if-eqz v1, :cond_1f

    .line 206
    iget-object v1, p0, Lorg/snmp4j/smi/OctetString;->value:[B

    check-cast p1, [B

    .end local p1
    check-cast p1, [B

    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    goto :goto_f

    .line 208
    .restart local p1
    :cond_1f
    const/4 v1, 0x0

    goto :goto_f
.end method

.method public fromSubIndex(Lorg/snmp4j/smi/OID;Z)V
    .registers 7
    .parameter "subIndex"
    .parameter "impliedLength"

    .prologue
    .line 499
    if-eqz p2, :cond_a

    .line 500
    invoke-virtual {p1}, Lorg/snmp4j/smi/OID;->toByteArray()[B

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/snmp4j/smi/OctetString;->setValue([B)V

    .line 506
    :goto_9
    return-void

    .line 503
    :cond_a
    new-instance v0, Lorg/snmp4j/smi/OID;

    invoke-virtual {p1}, Lorg/snmp4j/smi/OID;->getValue()[I

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p1}, Lorg/snmp4j/smi/OID;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Lorg/snmp4j/smi/OID;-><init>([III)V

    .line 504
    .local v0, suffix:Lorg/snmp4j/smi/OID;
    invoke-virtual {v0}, Lorg/snmp4j/smi/OID;->toByteArray()[B

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/snmp4j/smi/OctetString;->setValue([B)V

    goto :goto_9
.end method

.method public final get(I)B
    .registers 3
    .parameter "index"

    .prologue
    .line 177
    iget-object v0, p0, Lorg/snmp4j/smi/OctetString;->value:[B

    aget-byte v0, v0, p1

    return v0
.end method

.method public getBERLength()I
    .registers 3

    .prologue
    .line 160
    iget-object v0, p0, Lorg/snmp4j/smi/OctetString;->value:[B

    array-length v0, v0

    iget-object v1, p0, Lorg/snmp4j/smi/OctetString;->value:[B

    array-length v1, v1

    invoke-static {v1}, Lorg/snmp4j/asn1/BER;->getBERLengthOfLength(I)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getBERPayloadLength()I
    .registers 2

    .prologue
    .line 452
    iget-object v0, p0, Lorg/snmp4j/smi/OctetString;->value:[B

    array-length v0, v0

    return v0
.end method

.method public getSyntax()I
    .registers 2

    .prologue
    .line 164
    const/4 v0, 0x4

    return v0
.end method

.method public getValue()[B
    .registers 2

    .prologue
    .line 429
    iget-object v0, p0, Lorg/snmp4j/smi/OctetString;->value:[B

    return-object v0
.end method

.method public hashCode()I
    .registers 5

    .prologue
    .line 193
    const/4 v0, 0x0

    .line 194
    .local v0, hash:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    iget-object v2, p0, Lorg/snmp4j/smi/OctetString;->value:[B

    array-length v2, v2

    if-ge v1, v2, :cond_18

    .line 195
    iget-object v2, p0, Lorg/snmp4j/smi/OctetString;->value:[B

    aget-byte v2, v2, v1

    mul-int/lit8 v2, v2, 0x1f

    iget-object v3, p0, Lorg/snmp4j/smi/OctetString;->value:[B

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    sub-int/2addr v3, v1

    xor-int/2addr v2, v3

    add-int/2addr v0, v2

    .line 194
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 197
    :cond_18
    return v0
.end method

.method public isPrintable()Z
    .registers 5

    .prologue
    .line 283
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v2, p0, Lorg/snmp4j/smi/OctetString;->value:[B

    array-length v2, v2

    if-ge v1, v2, :cond_26

    .line 284
    iget-object v2, p0, Lorg/snmp4j/smi/OctetString;->value:[B

    aget-byte v2, v2, v1

    int-to-char v0, v2

    .line 285
    .local v0, c:C
    invoke-static {v0}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v2

    if-nez v2, :cond_1b

    iget-object v2, p0, Lorg/snmp4j/smi/OctetString;->value:[B

    aget-byte v2, v2, v1

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0x80

    if-lt v2, v3, :cond_23

    :cond_1b
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-nez v2, :cond_23

    .line 287
    const/4 v2, 0x0

    .line 290
    .end local v0           #c:C
    :goto_22
    return v2

    .line 283
    .restart local v0       #c:C
    :cond_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 290
    .end local v0           #c:C
    :cond_26
    const/4 v2, 0x1

    goto :goto_22
.end method

.method public final length()I
    .registers 2

    .prologue
    .line 438
    iget-object v0, p0, Lorg/snmp4j/smi/OctetString;->value:[B

    array-length v0, v0

    return v0
.end method

.method public mask(Lorg/snmp4j/smi/OctetString;)Lorg/snmp4j/smi/OctetString;
    .registers 7
    .parameter "mask"

    .prologue
    const/4 v4, 0x0

    .line 474
    iget-object v2, p0, Lorg/snmp4j/smi/OctetString;->value:[B

    array-length v2, v2

    new-array v1, v2, [B

    .line 475
    .local v1, masked:[B
    iget-object v2, p0, Lorg/snmp4j/smi/OctetString;->value:[B

    iget-object v3, p0, Lorg/snmp4j/smi/OctetString;->value:[B

    array-length v3, v3

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 476
    const/4 v0, 0x0

    .local v0, i:I
    :goto_f
    invoke-virtual {p1}, Lorg/snmp4j/smi/OctetString;->length()I

    move-result v2

    if-ge v0, v2, :cond_25

    array-length v2, v1

    if-ge v0, v2, :cond_25

    .line 477
    aget-byte v2, v1, v0

    invoke-virtual {p1, v0}, Lorg/snmp4j/smi/OctetString;->get(I)B

    move-result v3

    and-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 476
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 479
    :cond_25
    new-instance v2, Lorg/snmp4j/smi/OctetString;

    invoke-direct {v2, v1}, Lorg/snmp4j/smi/OctetString;-><init>([B)V

    return-object v2
.end method

.method public final set(IB)V
    .registers 4
    .parameter "index"
    .parameter "b"

    .prologue
    .line 189
    iget-object v0, p0, Lorg/snmp4j/smi/OctetString;->value:[B

    aput-byte p2, v0, p1

    .line 190
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .registers 3
    .parameter "value"

    .prologue
    .line 417
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/snmp4j/smi/OctetString;->setValue([B)V

    .line 418
    return-void
.end method

.method public setValue([B)V
    .registers 4
    .parameter "value"

    .prologue
    .line 421
    if-nez p1, :cond_a

    .line 422
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "OctetString must not be assigned a null value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 425
    :cond_a
    iput-object p1, p0, Lorg/snmp4j/smi/OctetString;->value:[B

    .line 426
    return-void
.end method

.method public startsWith(Lorg/snmp4j/smi/OctetString;)Z
    .registers 6
    .parameter "prefix"

    .prologue
    const/4 v1, 0x0

    .line 262
    if-eqz p1, :cond_d

    invoke-virtual {p1}, Lorg/snmp4j/smi/OctetString;->length()I

    move-result v2

    invoke-virtual {p0}, Lorg/snmp4j/smi/OctetString;->length()I

    move-result v3

    if-le v2, v3, :cond_e

    .line 270
    :cond_d
    :goto_d
    return v1

    .line 265
    :cond_e
    const/4 v0, 0x0

    .local v0, i:I
    :goto_f
    invoke-virtual {p1}, Lorg/snmp4j/smi/OctetString;->length()I

    move-result v2

    if-ge v0, v2, :cond_22

    .line 266
    invoke-virtual {p1, v0}, Lorg/snmp4j/smi/OctetString;->get(I)B

    move-result v2

    iget-object v3, p0, Lorg/snmp4j/smi/OctetString;->value:[B

    aget-byte v3, v3, v0

    if-ne v2, v3, :cond_d

    .line 265
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 270
    :cond_22
    const/4 v1, 0x1

    goto :goto_d
.end method

.method public substring(II)Lorg/snmp4j/smi/OctetString;
    .registers 7
    .parameter "beginIndex"
    .parameter "endIndex"

    .prologue
    .line 244
    if-ltz p1, :cond_8

    invoke-virtual {p0}, Lorg/snmp4j/smi/OctetString;->length()I

    move-result v1

    if-le p2, v1, :cond_e

    .line 245
    :cond_8
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    .line 247
    :cond_e
    sub-int v1, p2, p1

    new-array v0, v1, [B

    .line 248
    .local v0, substring:[B
    iget-object v1, p0, Lorg/snmp4j/smi/OctetString;->value:[B

    const/4 v2, 0x0

    array-length v3, v0

    invoke-static {v1, p1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 249
    new-instance v1, Lorg/snmp4j/smi/OctetString;

    invoke-direct {v1, v0}, Lorg/snmp4j/smi/OctetString;-><init>([B)V

    return-object v1
.end method

.method public toASCII(C)Ljava/lang/String;
    .registers 6
    .parameter "placeholder"

    .prologue
    .line 403
    new-instance v0, Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/snmp4j/smi/OctetString;->value:[B

    array-length v2, v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 404
    .local v0, buf:Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_9
    iget-object v2, p0, Lorg/snmp4j/smi/OctetString;->value:[B

    array-length v2, v2

    if-ge v1, v2, :cond_32

    .line 405
    iget-object v2, p0, Lorg/snmp4j/smi/OctetString;->value:[B

    aget-byte v2, v2, v1

    int-to-char v2, v2

    invoke-static {v2}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v2

    if-nez v2, :cond_23

    iget-object v2, p0, Lorg/snmp4j/smi/OctetString;->value:[B

    aget-byte v2, v2, v1

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0x80

    if-lt v2, v3, :cond_29

    .line 407
    :cond_23
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 404
    :goto_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 410
    :cond_29
    iget-object v2, p0, Lorg/snmp4j/smi/OctetString;->value:[B

    aget-byte v2, v2, v1

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_26

    .line 413
    :cond_32
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public toByteArray()[B
    .registers 2

    .prologue
    .line 573
    invoke-virtual {p0}, Lorg/snmp4j/smi/OctetString;->getValue()[B

    move-result-object v0

    return-object v0
.end method

.method public toHexString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 301
    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Lorg/snmp4j/smi/OctetString;->toHexString(C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toHexString(C)Ljava/lang/String;
    .registers 3
    .parameter "separator"

    .prologue
    .line 305
    const/16 v0, 0x10

    invoke-virtual {p0, p1, v0}, Lorg/snmp4j/smi/OctetString;->toString(CI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toInt()I
    .registers 2

    .prologue
    .line 456
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public toLong()J
    .registers 2

    .prologue
    .line 460
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 294
    invoke-virtual {p0}, Lorg/snmp4j/smi/OctetString;->isPrintable()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 295
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/snmp4j/smi/OctetString;->value:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 297
    :goto_d
    return-object v0

    :cond_e
    invoke-virtual {p0}, Lorg/snmp4j/smi/OctetString;->toHexString()Ljava/lang/String;

    move-result-object v0

    goto :goto_d
.end method

.method public toString(CI)Ljava/lang/String;
    .registers 13
    .parameter "separator"
    .parameter "radix"

    .prologue
    .line 351
    const-wide/high16 v6, 0x4070

    invoke-static {v6, v7}, Ljava/lang/Math;->log(D)D

    move-result-wide v6

    double-to-float v6, v6

    float-to-double v6, v6

    int-to-double v8, p2

    invoke-static {v8, v9}, Ljava/lang/Math;->log(D)D

    move-result-wide v8

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-int v1, v6

    .line 352
    .local v1, digits:I
    new-instance v0, Ljava/lang/StringBuffer;

    iget-object v6, p0, Lorg/snmp4j/smi/OctetString;->value:[B

    array-length v6, v6

    add-int/lit8 v7, v1, 0x1

    mul-int/2addr v6, v7

    invoke-direct {v0, v6}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 353
    .local v0, buf:Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1f
    iget-object v6, p0, Lorg/snmp4j/smi/OctetString;->value:[B

    array-length v6, v6

    if-ge v2, v6, :cond_4a

    .line 354
    if-lez v2, :cond_29

    .line 355
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 357
    :cond_29
    iget-object v6, p0, Lorg/snmp4j/smi/OctetString;->value:[B

    aget-byte v6, v6, v2

    and-int/lit16 v4, v6, 0xff

    .line 358
    .local v4, v:I
    invoke-static {v4, p2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v5

    .line 359
    .local v5, val:Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, j:I
    :goto_34
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    sub-int v6, v1, v6

    if-ge v3, v6, :cond_44

    .line 360
    const/16 v6, 0x30

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 359
    add-int/lit8 v3, v3, 0x1

    goto :goto_34

    .line 362
    :cond_44
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 353
    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    .line 364
    .end local v3           #j:I
    .end local v4           #v:I
    .end local v5           #val:Ljava/lang/String;
    :cond_4a
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public toString(I)Ljava/lang/String;
    .registers 12
    .parameter "radix"

    .prologue
    .line 379
    const-wide/high16 v6, 0x4070

    invoke-static {v6, v7}, Ljava/lang/Math;->log(D)D

    move-result-wide v6

    double-to-float v6, v6

    float-to-double v6, v6

    int-to-double v8, p1

    invoke-static {v8, v9}, Ljava/lang/Math;->log(D)D

    move-result-wide v8

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-int v1, v6

    .line 380
    .local v1, digits:I
    new-instance v0, Ljava/lang/StringBuffer;

    iget-object v6, p0, Lorg/snmp4j/smi/OctetString;->value:[B

    array-length v6, v6

    add-int/lit8 v7, v1, 0x1

    mul-int/2addr v6, v7

    invoke-direct {v0, v6}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 381
    .local v0, buf:Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1f
    iget-object v6, p0, Lorg/snmp4j/smi/OctetString;->value:[B

    array-length v6, v6

    if-ge v2, v6, :cond_45

    .line 382
    iget-object v6, p0, Lorg/snmp4j/smi/OctetString;->value:[B

    aget-byte v6, v6, v2

    and-int/lit16 v4, v6, 0xff

    .line 383
    .local v4, v:I
    invoke-static {v4, p1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v5

    .line 384
    .local v5, val:Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, j:I
    :goto_2f
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    sub-int v6, v1, v6

    if-ge v3, v6, :cond_3f

    .line 385
    const/16 v6, 0x30

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 384
    add-int/lit8 v3, v3, 0x1

    goto :goto_2f

    .line 387
    :cond_3f
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 381
    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    .line 389
    .end local v3           #j:I
    .end local v4           #v:I
    .end local v5           #val:Ljava/lang/String;
    :cond_45
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public toSubIndex(Z)Lorg/snmp4j/smi/OID;
    .registers 8
    .parameter "impliedLength"

    .prologue
    .line 484
    const/4 v1, 0x0

    .line 485
    .local v1, offset:I
    if-nez p1, :cond_28

    .line 486
    invoke-virtual {p0}, Lorg/snmp4j/smi/OctetString;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    new-array v3, v4, [I

    .line 487
    .local v3, subIndex:[I
    add-int/lit8 v2, v1, 0x1

    .end local v1           #offset:I
    .local v2, offset:I
    invoke-virtual {p0}, Lorg/snmp4j/smi/OctetString;->length()I

    move-result v4

    aput v4, v3, v1

    move v1, v2

    .line 492
    .end local v2           #offset:I
    .restart local v1       #offset:I
    :goto_14
    const/4 v0, 0x0

    .local v0, i:I
    :goto_15
    invoke-virtual {p0}, Lorg/snmp4j/smi/OctetString;->length()I

    move-result v4

    if-ge v0, v4, :cond_2f

    .line 493
    add-int v4, v1, v0

    invoke-virtual {p0, v0}, Lorg/snmp4j/smi/OctetString;->get(I)B

    move-result v5

    and-int/lit16 v5, v5, 0xff

    aput v5, v3, v4

    .line 492
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 490
    .end local v0           #i:I
    .end local v3           #subIndex:[I
    :cond_28
    invoke-virtual {p0}, Lorg/snmp4j/smi/OctetString;->length()I

    move-result v4

    new-array v3, v4, [I

    .restart local v3       #subIndex:[I
    goto :goto_14

    .line 495
    .restart local v0       #i:I
    :cond_2f
    new-instance v4, Lorg/snmp4j/smi/OID;

    invoke-direct {v4, v3}, Lorg/snmp4j/smi/OID;-><init>([I)V

    return-object v4
.end method

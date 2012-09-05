.class public Lorg/snmp4j/smi/OID;
.super Lorg/snmp4j/smi/AbstractVariable;
.source "OID.java"

# interfaces
.implements Lorg/snmp4j/smi/AssignableFromString;
.implements Lorg/snmp4j/smi/AssignableFromIntArray;


# static fields
.field public static final MAX_OID_LEN:I = 0x80

.field public static final MAX_SUBID_VALUE:I = -0x1

.field private static final NULL_OID:[I = null

.field private static final serialVersionUID:J = 0x68625480b0533a74L


# instance fields
.field private value:[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 51
    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lorg/snmp4j/smi/OID;->NULL_OID:[I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 58
    invoke-direct {p0}, Lorg/snmp4j/smi/AbstractVariable;-><init>()V

    .line 53
    sget-object v0, Lorg/snmp4j/smi/OID;->NULL_OID:[I

    iput-object v0, p0, Lorg/snmp4j/smi/OID;->value:[I

    .line 59
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "oid"

    .prologue
    .line 78
    invoke-direct {p0}, Lorg/snmp4j/smi/AbstractVariable;-><init>()V

    .line 53
    sget-object v0, Lorg/snmp4j/smi/OID;->NULL_OID:[I

    iput-object v0, p0, Lorg/snmp4j/smi/OID;->value:[I

    .line 79
    invoke-static {p1}, Lorg/snmp4j/smi/OID;->parseDottedString(Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Lorg/snmp4j/smi/OID;->value:[I

    .line 80
    return-void
.end method

.method public constructor <init>(Lorg/snmp4j/smi/OID;)V
    .registers 3
    .parameter "other"

    .prologue
    .line 136
    invoke-virtual {p1}, Lorg/snmp4j/smi/OID;->getValue()[I

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/snmp4j/smi/OID;-><init>([I)V

    .line 137
    return-void
.end method

.method public constructor <init>([I)V
    .registers 4
    .parameter "rawOID"

    .prologue
    .line 90
    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Lorg/snmp4j/smi/OID;-><init>([III)V

    .line 91
    return-void
.end method

.method public constructor <init>([III)V
    .registers 5
    .parameter "rawOID"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 127
    invoke-direct {p0}, Lorg/snmp4j/smi/AbstractVariable;-><init>()V

    .line 53
    sget-object v0, Lorg/snmp4j/smi/OID;->NULL_OID:[I

    iput-object v0, p0, Lorg/snmp4j/smi/OID;->value:[I

    .line 128
    invoke-direct {p0, p1, p2, p3}, Lorg/snmp4j/smi/OID;->setValue([III)V

    .line 129
    return-void
.end method

.method public constructor <init>([I[I)V
    .registers 7
    .parameter "prefixOID"
    .parameter "suffixOID"

    .prologue
    const/4 v3, 0x0

    .line 107
    invoke-direct {p0}, Lorg/snmp4j/smi/AbstractVariable;-><init>()V

    .line 53
    sget-object v0, Lorg/snmp4j/smi/OID;->NULL_OID:[I

    iput-object v0, p0, Lorg/snmp4j/smi/OID;->value:[I

    .line 108
    array-length v0, p1

    array-length v1, p2

    add-int/2addr v0, v1

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/snmp4j/smi/OID;->value:[I

    .line 109
    iget-object v0, p0, Lorg/snmp4j/smi/OID;->value:[I

    array-length v1, p1

    invoke-static {p1, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 110
    iget-object v0, p0, Lorg/snmp4j/smi/OID;->value:[I

    array-length v1, p1

    array-length v2, p2

    invoke-static {p2, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 111
    return-void
.end method

.method public static final max(Lorg/snmp4j/smi/OID;Lorg/snmp4j/smi/OID;)Lorg/snmp4j/smi/OID;
    .registers 3
    .parameter "a"
    .parameter "b"

    .prologue
    .line 690
    invoke-virtual {p0, p1}, Lorg/snmp4j/smi/OID;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_7

    .line 693
    .end local p0
    :goto_6
    return-object p0

    .restart local p0
    :cond_7
    move-object p0, p1

    goto :goto_6
.end method

.method public static final min(Lorg/snmp4j/smi/OID;Lorg/snmp4j/smi/OID;)Lorg/snmp4j/smi/OID;
    .registers 3
    .parameter "a"
    .parameter "b"

    .prologue
    .line 707
    invoke-virtual {p0, p1}, Lorg/snmp4j/smi/OID;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_7

    .line 710
    .end local p0
    :goto_6
    return-object p0

    .restart local p0
    :cond_7
    move-object p0, p1

    goto :goto_6
.end method

.method private static parseDottedString(Ljava/lang/String;)[I
    .registers 5
    .parameter "oid"

    .prologue
    .line 141
    :try_start_0
    invoke-static {}, Lorg/snmp4j/SNMP4JSettings;->getOIDTextFormat()Lorg/snmp4j/util/OIDTextFormat;

    move-result-object v1

    invoke-interface {v1, p0}, Lorg/snmp4j/util/OIDTextFormat;->parse(Ljava/lang/String;)[I
    :try_end_7
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v1

    return-object v1

    .line 143
    :catch_9
    move-exception v0

    .line 144
    .local v0, ex:Ljava/text/ParseException;
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "OID \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "\' cannot be parsed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private setValue([III)V
    .registers 6
    .parameter "rawOID"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 293
    new-array v0, p3, [I

    iput-object v0, p0, Lorg/snmp4j/smi/OID;->value:[I

    .line 294
    iget-object v0, p0, Lorg/snmp4j/smi/OID;->value:[I

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 295
    return-void
.end method


# virtual methods
.method public final append(I)Lorg/snmp4j/smi/OID;
    .registers 6
    .parameter "subID"

    .prologue
    const/4 v3, 0x0

    .line 380
    iget-object v1, p0, Lorg/snmp4j/smi/OID;->value:[I

    array-length v1, v1

    add-int/lit8 v1, v1, 0x1

    new-array v0, v1, [I

    .line 381
    .local v0, newValue:[I
    iget-object v1, p0, Lorg/snmp4j/smi/OID;->value:[I

    iget-object v2, p0, Lorg/snmp4j/smi/OID;->value:[I

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 382
    iget-object v1, p0, Lorg/snmp4j/smi/OID;->value:[I

    array-length v1, v1

    aput p1, v0, v1

    .line 383
    iput-object v0, p0, Lorg/snmp4j/smi/OID;->value:[I

    .line 384
    return-object p0
.end method

.method public final append(Ljava/lang/String;)Lorg/snmp4j/smi/OID;
    .registers 4
    .parameter "oid"

    .prologue
    .line 353
    new-instance v0, Lorg/snmp4j/smi/OID;

    invoke-direct {v0, p1}, Lorg/snmp4j/smi/OID;-><init>(Ljava/lang/String;)V

    .line 354
    .local v0, suffix:Lorg/snmp4j/smi/OID;
    invoke-virtual {p0, v0}, Lorg/snmp4j/smi/OID;->append(Lorg/snmp4j/smi/OID;)Lorg/snmp4j/smi/OID;

    move-result-object v1

    return-object v1
.end method

.method public final append(Lorg/snmp4j/smi/OID;)Lorg/snmp4j/smi/OID;
    .registers 7
    .parameter "oid"

    .prologue
    const/4 v4, 0x0

    .line 365
    iget-object v1, p0, Lorg/snmp4j/smi/OID;->value:[I

    array-length v1, v1

    iget-object v2, p1, Lorg/snmp4j/smi/OID;->value:[I

    array-length v2, v2

    add-int/2addr v1, v2

    new-array v0, v1, [I

    .line 366
    .local v0, newValue:[I
    iget-object v1, p0, Lorg/snmp4j/smi/OID;->value:[I

    iget-object v2, p0, Lorg/snmp4j/smi/OID;->value:[I

    array-length v2, v2

    invoke-static {v1, v4, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 367
    iget-object v1, p1, Lorg/snmp4j/smi/OID;->value:[I

    iget-object v2, p0, Lorg/snmp4j/smi/OID;->value:[I

    array-length v2, v2

    iget-object v3, p1, Lorg/snmp4j/smi/OID;->value:[I

    array-length v3, v3

    invoke-static {v1, v4, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 368
    iput-object v0, p0, Lorg/snmp4j/smi/OID;->value:[I

    .line 369
    return-object p0
.end method

.method public final appendUnsigned(J)Lorg/snmp4j/smi/OID;
    .registers 5
    .parameter "subID"

    .prologue
    .line 396
    const-wide v0, 0xffffffffL

    and-long/2addr v0, p1

    long-to-int v0, v0

    invoke-virtual {p0, v0}, Lorg/snmp4j/smi/OID;->append(I)Lorg/snmp4j/smi/OID;

    move-result-object v0

    return-object v0
.end method

.method public clone()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 502
    new-instance v0, Lorg/snmp4j/smi/OID;

    iget-object v1, p0, Lorg/snmp4j/smi/OID;->value:[I

    invoke-direct {v0, v1}, Lorg/snmp4j/smi/OID;-><init>([I)V

    return-object v0
.end method

.method public final compareTo(Ljava/lang/Object;)I
    .registers 7
    .parameter "o"

    .prologue
    .line 199
    instance-of v3, p1, Lorg/snmp4j/smi/OID;

    if-eqz v3, :cond_20

    move-object v1, p1

    .line 200
    check-cast v1, Lorg/snmp4j/smi/OID;

    .line 201
    .local v1, other:Lorg/snmp4j/smi/OID;
    iget-object v3, p0, Lorg/snmp4j/smi/OID;->value:[I

    array-length v3, v3

    iget-object v4, v1, Lorg/snmp4j/smi/OID;->value:[I

    array-length v4, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 202
    .local v0, min:I
    invoke-virtual {p0, v0, v1}, Lorg/snmp4j/smi/OID;->leftMostCompare(ILorg/snmp4j/smi/OID;)I

    move-result v2

    .line 203
    .local v2, result:I
    if-nez v2, :cond_1f

    .line 204
    iget-object v3, p0, Lorg/snmp4j/smi/OID;->value:[I

    array-length v3, v3

    iget-object v4, v1, Lorg/snmp4j/smi/OID;->value:[I

    array-length v4, v4

    sub-int v2, v3, v4

    .line 206
    .end local v2           #result:I
    :cond_1f
    return v2

    .line 208
    .end local v0           #min:I
    .end local v1           #other:Lorg/snmp4j/smi/OID;
    :cond_20
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
    .line 264
    new-instance v0, Lorg/snmp4j/asn1/BER$MutableByte;

    invoke-direct {v0}, Lorg/snmp4j/asn1/BER$MutableByte;-><init>()V

    .line 265
    .local v0, type:Lorg/snmp4j/asn1/BER$MutableByte;
    invoke-static {p1, v0}, Lorg/snmp4j/asn1/BER;->decodeOID(Lorg/snmp4j/asn1/BERInputStream;Lorg/snmp4j/asn1/BER$MutableByte;)[I

    move-result-object v1

    .line 266
    .local v1, v:[I
    invoke-virtual {v0}, Lorg/snmp4j/asn1/BER$MutableByte;->getValue()B

    move-result v2

    const/4 v3, 0x6

    if-eq v2, v3, :cond_2d

    .line 267
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Wrong type encountered when decoding OID: "

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

    .line 270
    :cond_2d
    invoke-virtual {p0, v1}, Lorg/snmp4j/smi/OID;->setValue([I)V

    .line 271
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
    .line 234
    const/4 v0, 0x6

    iget-object v1, p0, Lorg/snmp4j/smi/OID;->value:[I

    invoke-static {p1, v0, v1}, Lorg/snmp4j/asn1/BER;->encodeOID(Ljava/io/OutputStream;B[I)V

    .line 235
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 7
    .parameter "o"

    .prologue
    const/4 v2, 0x0

    .line 162
    instance-of v3, p1, Lorg/snmp4j/smi/OID;

    if-eqz v3, :cond_10

    move-object v1, p1

    .line 163
    check-cast v1, Lorg/snmp4j/smi/OID;

    .line 164
    .local v1, other:Lorg/snmp4j/smi/OID;
    iget-object v3, v1, Lorg/snmp4j/smi/OID;->value:[I

    array-length v3, v3

    iget-object v4, p0, Lorg/snmp4j/smi/OID;->value:[I

    array-length v4, v4

    if-eq v3, v4, :cond_11

    .line 174
    .end local v1           #other:Lorg/snmp4j/smi/OID;
    :cond_10
    :goto_10
    return v2

    .line 167
    .restart local v1       #other:Lorg/snmp4j/smi/OID;
    :cond_11
    const/4 v0, 0x0

    .local v0, i:I
    :goto_12
    iget-object v3, p0, Lorg/snmp4j/smi/OID;->value:[I

    array-length v3, v3

    if-ge v0, v3, :cond_24

    .line 168
    iget-object v3, p0, Lorg/snmp4j/smi/OID;->value:[I

    aget v3, v3, v0

    iget-object v4, v1, Lorg/snmp4j/smi/OID;->value:[I

    aget v4, v4, v0

    if-ne v3, v4, :cond_10

    .line 167
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 172
    :cond_24
    const/4 v2, 0x1

    goto :goto_10
.end method

.method public final fromSubIndex(Lorg/snmp4j/smi/OID;Z)V
    .registers 6
    .parameter "subIndex"
    .parameter "impliedLength"

    .prologue
    .line 603
    const/4 v0, 0x1

    .line 604
    .local v0, offset:I
    if-eqz p2, :cond_4

    .line 605
    const/4 v0, 0x0

    .line 607
    :cond_4
    invoke-virtual {p1}, Lorg/snmp4j/smi/OID;->getValue()[I

    move-result-object v1

    invoke-virtual {p1}, Lorg/snmp4j/smi/OID;->size()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-direct {p0, v1, v0, v2}, Lorg/snmp4j/smi/OID;->setValue([III)V

    .line 608
    return-void
.end method

.method public final get(I)I
    .registers 3
    .parameter "index"

    .prologue
    .line 318
    iget-object v0, p0, Lorg/snmp4j/smi/OID;->value:[I

    aget v0, v0, p1

    return v0
.end method

.method public getBERLength()I
    .registers 9

    .prologue
    .line 238
    const/4 v1, 0x1

    .line 240
    .local v1, length:I
    const/4 v0, 0x2

    .local v0, i:I
    :goto_2
    iget-object v4, p0, Lorg/snmp4j/smi/OID;->value:[I

    array-length v4, v4

    if-ge v0, v4, :cond_3e

    .line 242
    iget-object v4, p0, Lorg/snmp4j/smi/OID;->value:[I

    aget v4, v4, v0

    int-to-long v4, v4

    const-wide v6, 0xffffffffL

    and-long v2, v4, v6

    .line 244
    .local v2, v:J
    const-wide/16 v4, 0x80

    cmp-long v4, v2, v4

    if-gez v4, :cond_1e

    .line 245
    add-int/lit8 v1, v1, 0x1

    .line 240
    :goto_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 247
    :cond_1e
    const-wide/16 v4, 0x4000

    cmp-long v4, v2, v4

    if-gez v4, :cond_27

    .line 248
    add-int/lit8 v1, v1, 0x2

    goto :goto_1b

    .line 250
    :cond_27
    const-wide/32 v4, 0x200000

    cmp-long v4, v2, v4

    if-gez v4, :cond_31

    .line 251
    add-int/lit8 v1, v1, 0x3

    goto :goto_1b

    .line 253
    :cond_31
    const-wide/32 v4, 0x10000000

    cmp-long v4, v2, v4

    if-gez v4, :cond_3b

    .line 254
    add-int/lit8 v1, v1, 0x4

    goto :goto_1b

    .line 257
    :cond_3b
    add-int/lit8 v1, v1, 0x5

    goto :goto_1b

    .line 260
    .end local v2           #v:J
    :cond_3e
    invoke-static {v1}, Lorg/snmp4j/asn1/BER;->getBERLengthOfLength(I)I

    move-result v4

    add-int/2addr v4, v1

    add-int/lit8 v4, v4, 0x1

    return v4
.end method

.method public final getSyntax()I
    .registers 2

    .prologue
    .line 150
    const/4 v0, 0x6

    return v0
.end method

.method public final getUnsigned(I)J
    .registers 6
    .parameter "index"

    .prologue
    .line 329
    iget-object v0, p0, Lorg/snmp4j/smi/OID;->value:[I

    aget v0, v0, p1

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public final getValue()[I
    .registers 2

    .prologue
    .line 303
    iget-object v0, p0, Lorg/snmp4j/smi/OID;->value:[I

    return-object v0
.end method

.method public hashCode()I
    .registers 5

    .prologue
    .line 154
    const/4 v0, 0x0

    .line 155
    .local v0, hash:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    iget-object v2, p0, Lorg/snmp4j/smi/OID;->value:[I

    array-length v2, v2

    if-ge v1, v2, :cond_18

    .line 156
    iget-object v2, p0, Lorg/snmp4j/smi/OID;->value:[I

    aget v2, v2, v1

    mul-int/lit8 v2, v2, 0x1f

    iget-object v3, p0, Lorg/snmp4j/smi/OID;->value:[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    sub-int/2addr v3, v1

    xor-int/2addr v2, v3

    add-int/2addr v0, v2

    .line 155
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 158
    :cond_18
    return v0
.end method

.method public isValid()Z
    .registers 9

    .prologue
    const-wide v6, 0xffffffffL

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 406
    invoke-virtual {p0}, Lorg/snmp4j/smi/OID;->size()I

    move-result v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_2f

    invoke-virtual {p0}, Lorg/snmp4j/smi/OID;->size()I

    move-result v2

    const/16 v3, 0x80

    if-gt v2, v3, :cond_2f

    iget-object v2, p0, Lorg/snmp4j/smi/OID;->value:[I

    aget v2, v2, v1

    int-to-long v2, v2

    and-long/2addr v2, v6

    const-wide/16 v4, 0x2

    cmp-long v2, v2, v4

    if-gtz v2, :cond_2f

    iget-object v2, p0, Lorg/snmp4j/smi/OID;->value:[I

    aget v2, v2, v0

    int-to-long v2, v2

    and-long/2addr v2, v6

    const-wide/16 v4, 0x28

    cmp-long v2, v2, v4

    if-gez v2, :cond_2f

    :goto_2e
    return v0

    :cond_2f
    move v0, v1

    goto :goto_2e
.end method

.method public final last()I
    .registers 3

    .prologue
    .line 516
    iget-object v0, p0, Lorg/snmp4j/smi/OID;->value:[I

    array-length v0, v0

    if-lez v0, :cond_f

    .line 517
    iget-object v0, p0, Lorg/snmp4j/smi/OID;->value:[I

    iget-object v1, p0, Lorg/snmp4j/smi/OID;->value:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    return v0

    .line 519
    :cond_f
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final lastUnsigned()J
    .registers 5

    .prologue
    .line 531
    iget-object v0, p0, Lorg/snmp4j/smi/OID;->value:[I

    array-length v0, v0

    if-lez v0, :cond_16

    .line 532
    iget-object v0, p0, Lorg/snmp4j/smi/OID;->value:[I

    iget-object v1, p0, Lorg/snmp4j/smi/OID;->value:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0

    .line 534
    :cond_16
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public leftMostCompare(ILorg/snmp4j/smi/OID;)I
    .registers 10
    .parameter "n"
    .parameter "other"

    .prologue
    const-wide v5, 0xffffffffL

    .line 437
    const/4 v0, 0x0

    .local v0, i:I
    :goto_6
    if-ge v0, p1, :cond_29

    .line 438
    iget-object v1, p0, Lorg/snmp4j/smi/OID;->value:[I

    aget v1, v1, v0

    iget-object v2, p2, Lorg/snmp4j/smi/OID;->value:[I

    aget v2, v2, v0

    if-ne v1, v2, :cond_15

    .line 437
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 441
    :cond_15
    iget-object v1, p0, Lorg/snmp4j/smi/OID;->value:[I

    aget v1, v1, v0

    int-to-long v1, v1

    and-long/2addr v1, v5

    iget-object v3, p2, Lorg/snmp4j/smi/OID;->value:[I

    aget v3, v3, v0

    int-to-long v3, v3

    and-long/2addr v3, v5

    cmp-long v1, v1, v3

    if-gez v1, :cond_27

    .line 443
    const/4 v1, -0x1

    .line 449
    :goto_26
    return v1

    .line 446
    :cond_27
    const/4 v1, 0x1

    goto :goto_26

    .line 449
    :cond_29
    const/4 v1, 0x0

    goto :goto_26
.end method

.method public mask(Lorg/snmp4j/smi/OctetString;)Lorg/snmp4j/smi/OID;
    .registers 8
    .parameter "mask"

    .prologue
    const/4 v5, 0x0

    .line 187
    iget-object v3, p0, Lorg/snmp4j/smi/OID;->value:[I

    array-length v3, v3

    new-array v2, v3, [I

    .line 188
    .local v2, masked:[I
    iget-object v3, p0, Lorg/snmp4j/smi/OID;->value:[I

    iget-object v4, p0, Lorg/snmp4j/smi/OID;->value:[I

    array-length v4, v4

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 189
    const/4 v1, 0x0

    .local v1, i:I
    :goto_f
    invoke-virtual {p1}, Lorg/snmp4j/smi/OctetString;->length()I

    move-result v3

    mul-int/lit8 v3, v3, 0x8

    if-ge v1, v3, :cond_2e

    array-length v3, v2

    if-ge v1, v3, :cond_2e

    .line 190
    const/16 v3, 0x80

    rem-int/lit8 v4, v1, 0x8

    shr-int/2addr v3, v4

    int-to-byte v0, v3

    .line 191
    .local v0, b:B
    div-int/lit8 v3, v1, 0x8

    invoke-virtual {p1, v3}, Lorg/snmp4j/smi/OctetString;->get(I)B

    move-result v3

    and-int/2addr v3, v0

    if-nez v3, :cond_2b

    .line 192
    aput v5, v2, v1

    .line 189
    :cond_2b
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 195
    .end local v0           #b:B
    :cond_2e
    new-instance v3, Lorg/snmp4j/smi/OID;

    invoke-direct {v3, v2}, Lorg/snmp4j/smi/OID;-><init>([I)V

    return-object v3
.end method

.method public final nextPeer()Lorg/snmp4j/smi/OID;
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 668
    new-instance v0, Lorg/snmp4j/smi/OID;

    invoke-direct {v0, p0}, Lorg/snmp4j/smi/OID;-><init>(Lorg/snmp4j/smi/OID;)V

    .line 669
    .local v0, next:Lorg/snmp4j/smi/OID;
    invoke-virtual {v0}, Lorg/snmp4j/smi/OID;->size()I

    move-result v1

    if-lez v1, :cond_23

    invoke-virtual {p0}, Lorg/snmp4j/smi/OID;->last()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_23

    .line 670
    invoke-virtual {v0}, Lorg/snmp4j/smi/OID;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0}, Lorg/snmp4j/smi/OID;->last()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/snmp4j/smi/OID;->set(II)V

    .line 676
    :cond_22
    :goto_22
    return-object v0

    .line 672
    :cond_23
    invoke-virtual {v0}, Lorg/snmp4j/smi/OID;->size()I

    move-result v1

    if-le v1, v3, :cond_22

    .line 673
    invoke-virtual {v0, v3}, Lorg/snmp4j/smi/OID;->trim(I)V

    .line 674
    invoke-virtual {p0}, Lorg/snmp4j/smi/OID;->nextPeer()Lorg/snmp4j/smi/OID;

    move-result-object v0

    goto :goto_22
.end method

.method public final predecessor()Lorg/snmp4j/smi/OID;
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 645
    invoke-virtual {p0}, Lorg/snmp4j/smi/OID;->last()I

    move-result v2

    if-eqz v2, :cond_30

    .line 646
    const/16 v2, 0x80

    new-array v1, v2, [I

    .line 647
    .local v1, pval:[I
    iget-object v2, p0, Lorg/snmp4j/smi/OID;->value:[I

    iget-object v3, p0, Lorg/snmp4j/smi/OID;->value:[I

    array-length v3, v3

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 648
    iget-object v2, p0, Lorg/snmp4j/smi/OID;->value:[I

    array-length v2, v2

    array-length v3, v1

    const/4 v4, -0x1

    invoke-static {v1, v2, v3, v4}, Ljava/util/Arrays;->fill([IIII)V

    .line 649
    new-instance v0, Lorg/snmp4j/smi/OID;

    invoke-direct {v0, v1}, Lorg/snmp4j/smi/OID;-><init>([I)V

    .line 650
    .local v0, pred:Lorg/snmp4j/smi/OID;
    invoke-virtual {p0}, Lorg/snmp4j/smi/OID;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0}, Lorg/snmp4j/smi/OID;->last()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v2, v3}, Lorg/snmp4j/smi/OID;->set(II)V

    .line 656
    .end local v1           #pval:[I
    :goto_2f
    return-object v0

    .line 654
    .end local v0           #pred:Lorg/snmp4j/smi/OID;
    :cond_30
    new-instance v0, Lorg/snmp4j/smi/OID;

    invoke-direct {v0, p0}, Lorg/snmp4j/smi/OID;-><init>(Lorg/snmp4j/smi/OID;)V

    .line 655
    .restart local v0       #pred:Lorg/snmp4j/smi/OID;
    invoke-virtual {v0}, Lorg/snmp4j/smi/OID;->removeLast()I

    goto :goto_2f
.end method

.method public removeLast()I
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 545
    iget-object v2, p0, Lorg/snmp4j/smi/OID;->value:[I

    array-length v2, v2

    if-nez v2, :cond_8

    .line 546
    const/4 v1, -0x1

    .line 552
    :goto_7
    return v1

    .line 548
    :cond_8
    iget-object v2, p0, Lorg/snmp4j/smi/OID;->value:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    new-array v0, v2, [I

    .line 549
    .local v0, newValue:[I
    iget-object v2, p0, Lorg/snmp4j/smi/OID;->value:[I

    iget-object v3, p0, Lorg/snmp4j/smi/OID;->value:[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 550
    iget-object v2, p0, Lorg/snmp4j/smi/OID;->value:[I

    iget-object v3, p0, Lorg/snmp4j/smi/OID;->value:[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    aget v1, v2, v3

    .line 551
    .local v1, retValue:I
    iput-object v0, p0, Lorg/snmp4j/smi/OID;->value:[I

    goto :goto_7
.end method

.method public rightMostCompare(ILorg/snmp4j/smi/OID;)I
    .registers 8
    .parameter "n"
    .parameter "other"

    .prologue
    .line 469
    iget-object v3, p0, Lorg/snmp4j/smi/OID;->value:[I

    array-length v3, v3

    add-int/lit8 v0, v3, -0x1

    .line 470
    .local v0, cursorA:I
    iget-object v3, p2, Lorg/snmp4j/smi/OID;->value:[I

    array-length v3, v3

    add-int/lit8 v1, v3, -0x1

    .line 471
    .local v1, cursorB:I
    add-int/lit8 v2, p1, -0x1

    .local v2, i:I
    :goto_c
    if-ltz v2, :cond_2d

    .line 472
    iget-object v3, p0, Lorg/snmp4j/smi/OID;->value:[I

    aget v3, v3, v0

    iget-object v4, p2, Lorg/snmp4j/smi/OID;->value:[I

    aget v4, v4, v1

    if-ne v3, v4, :cond_1f

    .line 471
    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_c

    .line 475
    :cond_1f
    iget-object v3, p0, Lorg/snmp4j/smi/OID;->value:[I

    aget v3, v3, v0

    iget-object v4, p2, Lorg/snmp4j/smi/OID;->value:[I

    aget v4, v4, v1

    if-ge v3, v4, :cond_2b

    .line 476
    const/4 v3, -0x1

    .line 482
    :goto_2a
    return v3

    .line 479
    :cond_2b
    const/4 v3, 0x1

    goto :goto_2a

    .line 482
    :cond_2d
    const/4 v3, 0x0

    goto :goto_2a
.end method

.method public final set(II)V
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 342
    iget-object v0, p0, Lorg/snmp4j/smi/OID;->value:[I

    aput p2, v0, p1

    .line 343
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .registers 3
    .parameter "value"

    .prologue
    .line 274
    invoke-static {p1}, Lorg/snmp4j/smi/OID;->parseDottedString(Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Lorg/snmp4j/smi/OID;->value:[I

    .line 275
    return-void
.end method

.method public final setValue([I)V
    .registers 4
    .parameter "value"

    .prologue
    .line 286
    if-nez p1, :cond_a

    .line 287
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "OID value must not be set to null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 289
    :cond_a
    iput-object p1, p0, Lorg/snmp4j/smi/OID;->value:[I

    .line 290
    return-void
.end method

.method public final size()I
    .registers 2

    .prologue
    .line 417
    iget-object v0, p0, Lorg/snmp4j/smi/OID;->value:[I

    array-length v0, v0

    return v0
.end method

.method public startsWith(Lorg/snmp4j/smi/OID;)Z
    .registers 6
    .parameter "other"

    .prologue
    const/4 v1, 0x0

    .line 494
    iget-object v2, p1, Lorg/snmp4j/smi/OID;->value:[I

    array-length v2, v2

    iget-object v3, p0, Lorg/snmp4j/smi/OID;->value:[I

    array-length v3, v3

    if-le v2, v3, :cond_a

    .line 498
    :cond_9
    :goto_9
    return v1

    .line 497
    :cond_a
    iget-object v2, p0, Lorg/snmp4j/smi/OID;->value:[I

    array-length v2, v2

    iget-object v3, p1, Lorg/snmp4j/smi/OID;->value:[I

    array-length v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 498
    .local v0, min:I
    invoke-virtual {p0, v0, p1}, Lorg/snmp4j/smi/OID;->leftMostCompare(ILorg/snmp4j/smi/OID;)I

    move-result v2

    if-nez v2, :cond_9

    const/4 v1, 0x1

    goto :goto_9
.end method

.method public final successor()Lorg/snmp4j/smi/OID;
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 617
    iget-object v2, p0, Lorg/snmp4j/smi/OID;->value:[I

    array-length v2, v2

    const/16 v3, 0x80

    if-ne v2, v3, :cond_33

    .line 618
    const/16 v0, 0x7f

    .local v0, i:I
    :goto_a
    if-ltz v0, :cond_2d

    .line 619
    iget-object v2, p0, Lorg/snmp4j/smi/OID;->value:[I

    aget v2, v2, v0

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2a

    .line 620
    add-int/lit8 v2, v0, 0x1

    new-array v1, v2, [I

    .line 621
    .local v1, succ:[I
    iget-object v2, p0, Lorg/snmp4j/smi/OID;->value:[I

    add-int/lit8 v3, v0, 0x1

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 622
    aget v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v0

    .line 623
    new-instance v2, Lorg/snmp4j/smi/OID;

    invoke-direct {v2, v1}, Lorg/snmp4j/smi/OID;-><init>([I)V

    .line 632
    .end local v0           #i:I
    .end local v1           #succ:[I
    :goto_29
    return-object v2

    .line 618
    .restart local v0       #i:I
    :cond_2a
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    .line 626
    :cond_2d
    new-instance v2, Lorg/snmp4j/smi/OID;

    invoke-direct {v2}, Lorg/snmp4j/smi/OID;-><init>()V

    goto :goto_29

    .line 629
    .end local v0           #i:I
    :cond_33
    iget-object v2, p0, Lorg/snmp4j/smi/OID;->value:[I

    array-length v2, v2

    add-int/lit8 v2, v2, 0x1

    new-array v1, v2, [I

    .line 630
    .restart local v1       #succ:[I
    iget-object v2, p0, Lorg/snmp4j/smi/OID;->value:[I

    iget-object v3, p0, Lorg/snmp4j/smi/OID;->value:[I

    array-length v3, v3

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 631
    iget-object v2, p0, Lorg/snmp4j/smi/OID;->value:[I

    array-length v2, v2

    aput v4, v1, v2

    .line 632
    new-instance v2, Lorg/snmp4j/smi/OID;

    invoke-direct {v2, v1}, Lorg/snmp4j/smi/OID;-><init>([I)V

    goto :goto_29
.end method

.method public toByteArray()[B
    .registers 4

    .prologue
    .line 226
    iget-object v2, p0, Lorg/snmp4j/smi/OID;->value:[I

    array-length v2, v2

    new-array v0, v2, [B

    .line 227
    .local v0, b:[B
    const/4 v1, 0x0

    .local v1, i:I
    :goto_6
    iget-object v2, p0, Lorg/snmp4j/smi/OID;->value:[I

    array-length v2, v2

    if-ge v1, v2, :cond_17

    .line 228
    iget-object v2, p0, Lorg/snmp4j/smi/OID;->value:[I

    aget v2, v2, v1

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 227
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 230
    :cond_17
    return-object v0
.end method

.method public toInt()I
    .registers 2

    .prologue
    .line 586
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public toIntArray()[I
    .registers 2

    .prologue
    .line 714
    iget-object v0, p0, Lorg/snmp4j/smi/OID;->value:[I

    return-object v0
.end method

.method public toLong()J
    .registers 2

    .prologue
    .line 590
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 212
    invoke-static {}, Lorg/snmp4j/SNMP4JSettings;->getOIDTextFormat()Lorg/snmp4j/util/OIDTextFormat;

    move-result-object v0

    iget-object v1, p0, Lorg/snmp4j/smi/OID;->value:[I

    invoke-interface {v0, v1}, Lorg/snmp4j/util/OIDTextFormat;->format([I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final toSubIndex(Z)Lorg/snmp4j/smi/OID;
    .registers 6
    .parameter "impliedLength"

    .prologue
    .line 594
    if-eqz p1, :cond_a

    .line 595
    new-instance v0, Lorg/snmp4j/smi/OID;

    iget-object v1, p0, Lorg/snmp4j/smi/OID;->value:[I

    invoke-direct {v0, v1}, Lorg/snmp4j/smi/OID;-><init>([I)V

    .line 599
    :goto_9
    return-object v0

    .line 597
    :cond_a
    new-instance v0, Lorg/snmp4j/smi/OID;

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    invoke-virtual {p0}, Lorg/snmp4j/smi/OID;->size()I

    move-result v3

    aput v3, v1, v2

    invoke-direct {v0, v1}, Lorg/snmp4j/smi/OID;-><init>([I)V

    .line 598
    .local v0, subIndex:Lorg/snmp4j/smi/OID;
    invoke-virtual {v0, p0}, Lorg/snmp4j/smi/OID;->append(Lorg/snmp4j/smi/OID;)Lorg/snmp4j/smi/OID;

    goto :goto_9
.end method

.method public trim()Lorg/snmp4j/smi/OID;
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 582
    new-instance v0, Lorg/snmp4j/smi/OID;

    iget-object v1, p0, Lorg/snmp4j/smi/OID;->value:[I

    iget-object v2, p0, Lorg/snmp4j/smi/OID;->value:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-direct {v0, v1, v3, v2}, Lorg/snmp4j/smi/OID;-><init>([III)V

    return-object v0
.end method

.method public trim(I)V
    .registers 6
    .parameter "n"

    .prologue
    const/4 v3, 0x0

    .line 563
    if-lez p1, :cond_1c

    .line 564
    iget-object v1, p0, Lorg/snmp4j/smi/OID;->value:[I

    array-length v1, v1

    if-le p1, v1, :cond_b

    .line 565
    iget-object v1, p0, Lorg/snmp4j/smi/OID;->value:[I

    array-length p1, v1

    .line 567
    :cond_b
    iget-object v1, p0, Lorg/snmp4j/smi/OID;->value:[I

    array-length v1, v1

    sub-int/2addr v1, p1

    new-array v0, v1, [I

    .line 568
    .local v0, newValue:[I
    iget-object v1, p0, Lorg/snmp4j/smi/OID;->value:[I

    iget-object v2, p0, Lorg/snmp4j/smi/OID;->value:[I

    array-length v2, v2

    sub-int/2addr v2, p1

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 569
    iput-object v0, p0, Lorg/snmp4j/smi/OID;->value:[I

    .line 571
    .end local v0           #newValue:[I
    :cond_1c
    return-void
.end method

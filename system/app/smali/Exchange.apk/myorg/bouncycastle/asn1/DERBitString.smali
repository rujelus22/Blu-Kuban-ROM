.class public Lmyorg/bouncycastle/asn1/DERBitString;
.super Lmyorg/bouncycastle/asn1/ASN1Object;
.source "DERBitString.java"

# interfaces
.implements Lmyorg/bouncycastle/asn1/DERString;


# static fields
.field private static final table:[C


# instance fields
.field protected data:[B

.field protected padBits:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 10
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_a

    sput-object v0, Lmyorg/bouncycastle/asn1/DERBitString;->table:[C

    return-void

    :array_a
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x41t 0x0t
        0x42t 0x0t
        0x43t 0x0t
        0x44t 0x0t
        0x45t 0x0t
        0x46t 0x0t
    .end array-data
.end method

.method public constructor <init>(Lmyorg/bouncycastle/asn1/DEREncodable;)V
    .registers 6
    .parameter "obj"

    .prologue
    .line 136
    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 138
    :try_start_3
    invoke-interface {p1}, Lmyorg/bouncycastle/asn1/DEREncodable;->getDERObject()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v1

    const-string v2, "DER"

    invoke-virtual {v1, v2}, Lmyorg/bouncycastle/asn1/DERObject;->getEncoded(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lmyorg/bouncycastle/asn1/DERBitString;->data:[B

    .line 139
    const/4 v1, 0x0

    iput v1, p0, Lmyorg/bouncycastle/asn1/DERBitString;->padBits:I
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_12} :catch_13

    .line 143
    return-void

    .line 140
    :catch_13
    move-exception v0

    .line 141
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error processing object : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public constructor <init>([B)V
    .registers 3
    .parameter "data"

    .prologue
    .line 133
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmyorg/bouncycastle/asn1/DERBitString;-><init>([BI)V

    .line 134
    return-void
.end method

.method public constructor <init>([BI)V
    .registers 3
    .parameter "data"
    .parameter "padBits"

    .prologue
    .line 127
    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 128
    iput-object p1, p0, Lmyorg/bouncycastle/asn1/DERBitString;->data:[B

    .line 129
    iput p2, p0, Lmyorg/bouncycastle/asn1/DERBitString;->padBits:I

    .line 130
    return-void
.end method

.method protected static getBytes(I)[B
    .registers 6
    .parameter "bitString"

    .prologue
    .line 60
    const/4 v0, 0x4

    .line 61
    .local v0, bytes:I
    const/4 v1, 0x3

    .local v1, i:I
    :goto_2
    const/4 v3, 0x1

    if-lt v1, v3, :cond_d

    .line 62
    const/16 v3, 0xff

    mul-int/lit8 v4, v1, 0x8

    shl-int/2addr v3, v4

    and-int/2addr v3, p0

    if-eqz v3, :cond_1e

    .line 68
    :cond_d
    new-array v2, v0, [B

    .line 69
    .local v2, result:[B
    const/4 v1, 0x0

    :goto_10
    if-ge v1, v0, :cond_23

    .line 70
    mul-int/lit8 v3, v1, 0x8

    shr-int v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 69
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 65
    .end local v2           #result:[B
    :cond_1e
    add-int/lit8 v0, v0, -0x1

    .line 61
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 73
    .restart local v2       #result:[B
    :cond_23
    return-object v2
.end method

.method public static getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/DERBitString;
    .registers 7
    .parameter "obj"

    .prologue
    const/4 v5, 0x0

    .line 82
    if-eqz p0, :cond_7

    instance-of v3, p0, Lmyorg/bouncycastle/asn1/DERBitString;

    if-eqz v3, :cond_a

    .line 83
    :cond_7
    check-cast p0, Lmyorg/bouncycastle/asn1/DERBitString;

    .line 97
    .end local p0
    :goto_9
    return-object p0

    .line 86
    .restart local p0
    :cond_a
    instance-of v3, p0, Lmyorg/bouncycastle/asn1/ASN1OctetString;

    if-eqz v3, :cond_28

    .line 87
    check-cast p0, Lmyorg/bouncycastle/asn1/ASN1OctetString;

    .end local p0
    invoke-virtual {p0}, Lmyorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    .line 88
    .local v0, bytes:[B
    aget-byte v2, v0, v5

    .line 89
    .local v2, padBits:I
    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    new-array v1, v3, [B

    .line 91
    .local v1, data:[B
    const/4 v3, 0x1

    array-length v4, v0

    add-int/lit8 v4, v4, -0x1

    invoke-static {v0, v3, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 93
    new-instance p0, Lmyorg/bouncycastle/asn1/DERBitString;

    invoke-direct {p0, v1, v2}, Lmyorg/bouncycastle/asn1/DERBitString;-><init>([BI)V

    goto :goto_9

    .line 96
    .end local v0           #bytes:[B
    .end local v1           #data:[B
    .end local v2           #padBits:I
    .restart local p0
    :cond_28
    instance-of v3, p0, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v3, :cond_37

    .line 97
    check-cast p0, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;

    .end local p0
    invoke-virtual {p0}, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v3

    invoke-static {v3}, Lmyorg/bouncycastle/asn1/DERBitString;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/DERBitString;

    move-result-object p0

    goto :goto_9

    .line 100
    .restart local p0
    :cond_37
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "illegal object in getInstance: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static getInstance(Lmyorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lmyorg/bouncycastle/asn1/DERBitString;
    .registers 3
    .parameter "obj"
    .parameter "explicit"

    .prologue
    .line 114
    invoke-virtual {p0}, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v0

    invoke-static {v0}, Lmyorg/bouncycastle/asn1/DERBitString;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/DERBitString;

    move-result-object v0

    return-object v0
.end method

.method protected static getPadBits(I)I
    .registers 5
    .parameter "bitString"

    .prologue
    .line 22
    const/4 v2, 0x0

    .line 23
    .local v2, val:I
    const/4 v1, 0x3

    .local v1, i:I
    :goto_2
    if-ltz v1, :cond_12

    .line 29
    if-eqz v1, :cond_16

    .line 30
    mul-int/lit8 v3, v1, 0x8

    shr-int v3, p0, v3

    if-eqz v3, :cond_1b

    .line 31
    mul-int/lit8 v3, v1, 0x8

    shr-int v3, p0, v3

    and-int/lit16 v2, v3, 0xff

    .line 42
    :cond_12
    :goto_12
    if-nez v2, :cond_1e

    .line 43
    const/4 v3, 0x7

    .line 52
    :goto_15
    return v3

    .line 35
    :cond_16
    if-eqz p0, :cond_1b

    .line 36
    and-int/lit16 v2, p0, 0xff

    .line 37
    goto :goto_12

    .line 23
    :cond_1b
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 46
    :cond_1e
    const/4 v0, 0x1

    .line 48
    .local v0, bits:I
    :goto_1f
    shl-int/lit8 v2, v2, 0x1

    and-int/lit16 v3, v2, 0xff

    if-eqz v3, :cond_28

    .line 49
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    .line 52
    :cond_28
    rsub-int/lit8 v3, v0, 0x8

    goto :goto_15
.end method


# virtual methods
.method protected asn1Equals(Lmyorg/bouncycastle/asn1/DERObject;)Z
    .registers 6
    .parameter "o"

    .prologue
    const/4 v1, 0x0

    .line 180
    instance-of v2, p1, Lmyorg/bouncycastle/asn1/DERBitString;

    if-nez v2, :cond_6

    .line 186
    :cond_5
    :goto_5
    return v1

    :cond_6
    move-object v0, p1

    .line 184
    check-cast v0, Lmyorg/bouncycastle/asn1/DERBitString;

    .line 186
    .local v0, other:Lmyorg/bouncycastle/asn1/DERBitString;
    iget v2, p0, Lmyorg/bouncycastle/asn1/DERBitString;->padBits:I

    iget v3, v0, Lmyorg/bouncycastle/asn1/DERBitString;->padBits:I

    if-ne v2, v3, :cond_5

    iget-object v2, p0, Lmyorg/bouncycastle/asn1/DERBitString;->data:[B

    iget-object v3, v0, Lmyorg/bouncycastle/asn1/DERBitString;->data:[B

    invoke-static {v2, v3}, Lmyorg/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v1, 0x1

    goto :goto_5
.end method

.method encode(Lmyorg/bouncycastle/asn1/DEROutputStream;)V
    .registers 7
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 167
    invoke-virtual {p0}, Lmyorg/bouncycastle/asn1/DERBitString;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, 0x1

    new-array v0, v1, [B

    .line 169
    .local v0, bytes:[B
    invoke-virtual {p0}, Lmyorg/bouncycastle/asn1/DERBitString;->getPadBits()I

    move-result v1

    int-to-byte v1, v1

    aput-byte v1, v0, v4

    .line 170
    invoke-virtual {p0}, Lmyorg/bouncycastle/asn1/DERBitString;->getBytes()[B

    move-result-object v1

    const/4 v2, 0x1

    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    invoke-static {v1, v4, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 172
    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lmyorg/bouncycastle/asn1/DEROutputStream;->writeEncoded(I[B)V

    .line 173
    return-void
.end method

.method public getBytes()[B
    .registers 2

    .prologue
    .line 146
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/DERBitString;->data:[B

    return-object v0
.end method

.method public getPadBits()I
    .registers 2

    .prologue
    .line 150
    iget v0, p0, Lmyorg/bouncycastle/asn1/DERBitString;->padBits:I

    return v0
.end method

.method public getString()Ljava/lang/String;
    .registers 9

    .prologue
    .line 190
    new-instance v2, Ljava/lang/StringBuffer;

    const-string v6, "#"

    invoke-direct {v2, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 191
    .local v2, buf:Ljava/lang/StringBuffer;
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 192
    .local v1, bOut:Ljava/io/ByteArrayOutputStream;
    new-instance v0, Lmyorg/bouncycastle/asn1/ASN1OutputStream;

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1OutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 195
    .local v0, aOut:Lmyorg/bouncycastle/asn1/ASN1OutputStream;
    :try_start_11
    invoke-virtual {v0, p0}, Lmyorg/bouncycastle/asn1/ASN1OutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_14} :catch_37

    .line 200
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    .line 202
    .local v5, string:[B
    const/4 v4, 0x0

    .local v4, i:I
    :goto_19
    array-length v6, v5

    if-eq v4, v6, :cond_40

    .line 203
    sget-object v6, Lmyorg/bouncycastle/asn1/DERBitString;->table:[C

    aget-byte v7, v5, v4

    ushr-int/lit8 v7, v7, 0x4

    and-int/lit8 v7, v7, 0xf

    aget-char v6, v6, v7

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 204
    sget-object v6, Lmyorg/bouncycastle/asn1/DERBitString;->table:[C

    aget-byte v7, v5, v4

    and-int/lit8 v7, v7, 0xf

    aget-char v6, v6, v7

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 202
    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    .line 196
    .end local v4           #i:I
    .end local v5           #string:[B
    :catch_37
    move-exception v3

    .line 197
    .local v3, e:Ljava/io/IOException;
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "internal error encoding BitString"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 207
    .end local v3           #e:Ljava/io/IOException;
    .restart local v4       #i:I
    .restart local v5       #string:[B
    :cond_40
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 176
    iget v0, p0, Lmyorg/bouncycastle/asn1/DERBitString;->padBits:I

    iget-object v1, p0, Lmyorg/bouncycastle/asn1/DERBitString;->data:[B

    invoke-static {v1}, Lmyorg/bouncycastle/util/Arrays;->hashCode([B)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public intValue()I
    .registers 5

    .prologue
    .line 157
    const/4 v1, 0x0

    .line 159
    .local v1, value:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    iget-object v2, p0, Lmyorg/bouncycastle/asn1/DERBitString;->data:[B

    array-length v2, v2

    if-eq v0, v2, :cond_17

    const/4 v2, 0x4

    if-eq v0, v2, :cond_17

    .line 160
    iget-object v2, p0, Lmyorg/bouncycastle/asn1/DERBitString;->data:[B

    aget-byte v2, v2, v0

    and-int/lit16 v2, v2, 0xff

    mul-int/lit8 v3, v0, 0x8

    shl-int/2addr v2, v3

    or-int/2addr v1, v2

    .line 159
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 163
    :cond_17
    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 211
    invoke-virtual {p0}, Lmyorg/bouncycastle/asn1/DERBitString;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

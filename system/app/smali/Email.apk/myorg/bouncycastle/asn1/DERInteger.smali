.class public Lmyorg/bouncycastle/asn1/DERInteger;
.super Lmyorg/bouncycastle/asn1/ASN1Object;
.source "DERInteger.java"


# instance fields
.field bytes:[B


# direct methods
.method public constructor <init>(I)V
    .registers 4
    .parameter "value"

    .prologue
    .line 47
    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 48
    int-to-long v0, p1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lmyorg/bouncycastle/asn1/DERInteger;->bytes:[B

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;)V
    .registers 3
    .parameter "value"

    .prologue
    .line 51
    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 52
    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lmyorg/bouncycastle/asn1/DERInteger;->bytes:[B

    .line 53
    return-void
.end method

.method public constructor <init>([B)V
    .registers 2
    .parameter "bytes"

    .prologue
    .line 55
    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 56
    iput-object p1, p0, Lmyorg/bouncycastle/asn1/DERInteger;->bytes:[B

    .line 57
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/DERInteger;
    .registers 4
    .parameter "obj"

    .prologue
    .line 18
    if-eqz p0, :cond_6

    instance-of v0, p0, Lmyorg/bouncycastle/asn1/DERInteger;

    if-eqz v0, :cond_9

    .line 19
    :cond_6
    check-cast p0, Lmyorg/bouncycastle/asn1/DERInteger;

    .line 27
    .end local p0
    :goto_8
    return-object p0

    .line 22
    .restart local p0
    :cond_9
    instance-of v0, p0, Lmyorg/bouncycastle/asn1/ASN1OctetString;

    if-eqz v0, :cond_1a

    .line 23
    new-instance v0, Lmyorg/bouncycastle/asn1/DERInteger;

    check-cast p0, Lmyorg/bouncycastle/asn1/ASN1OctetString;

    .end local p0
    invoke-virtual {p0}, Lmyorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERInteger;-><init>([B)V

    move-object p0, v0

    goto :goto_8

    .line 26
    .restart local p0
    :cond_1a
    instance-of v0, p0, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v0, :cond_29

    .line 27
    check-cast p0, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;

    .end local p0
    invoke-virtual {p0}, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v0

    invoke-static {v0}, Lmyorg/bouncycastle/asn1/DERInteger;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/DERInteger;

    move-result-object p0

    goto :goto_8

    .line 30
    .restart local p0
    :cond_29
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal object in getInstance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getInstance(Lmyorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lmyorg/bouncycastle/asn1/DERInteger;
    .registers 3
    .parameter "obj"
    .parameter "explicit"

    .prologue
    .line 44
    invoke-virtual {p0}, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v0

    invoke-static {v0}, Lmyorg/bouncycastle/asn1/DERInteger;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/DERInteger;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method asn1Equals(Lmyorg/bouncycastle/asn1/DERObject;)Z
    .registers 5
    .parameter "o"

    .prologue
    .line 86
    instance-of v1, p1, Lmyorg/bouncycastle/asn1/DERInteger;

    if-nez v1, :cond_6

    .line 87
    const/4 v1, 0x0

    .line 92
    :goto_5
    return v1

    :cond_6
    move-object v0, p1

    .line 90
    check-cast v0, Lmyorg/bouncycastle/asn1/DERInteger;

    .line 92
    .local v0, other:Lmyorg/bouncycastle/asn1/DERInteger;
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/DERInteger;->bytes:[B

    iget-object v2, v0, Lmyorg/bouncycastle/asn1/DERInteger;->bytes:[B

    invoke-static {v1, v2}, Lmyorg/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v1

    goto :goto_5
.end method

.method encode(Lmyorg/bouncycastle/asn1/DEROutputStream;)V
    .registers 4
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 72
    const/4 v0, 0x2

    iget-object v1, p0, Lmyorg/bouncycastle/asn1/DERInteger;->bytes:[B

    invoke-virtual {p1, v0, v1}, Lmyorg/bouncycastle/asn1/DEROutputStream;->writeEncoded(I[B)V

    .line 73
    return-void
.end method

.method public getPositiveValue()Ljava/math/BigInteger;
    .registers 4

    .prologue
    .line 68
    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    iget-object v2, p0, Lmyorg/bouncycastle/asn1/DERInteger;->bytes:[B

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v0
.end method

.method public getValue()Ljava/math/BigInteger;
    .registers 3

    .prologue
    .line 60
    new-instance v0, Ljava/math/BigInteger;

    iget-object v1, p0, Lmyorg/bouncycastle/asn1/DERInteger;->bytes:[B

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>([B)V

    return-object v0
.end method

.method public hashCode()I
    .registers 5

    .prologue
    .line 76
    const/4 v1, 0x0

    .line 78
    .local v1, value:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    iget-object v2, p0, Lmyorg/bouncycastle/asn1/DERInteger;->bytes:[B

    array-length v2, v2

    if-eq v0, v2, :cond_14

    .line 79
    iget-object v2, p0, Lmyorg/bouncycastle/asn1/DERInteger;->bytes:[B

    aget-byte v2, v2, v0

    and-int/lit16 v2, v2, 0xff

    rem-int/lit8 v3, v0, 0x4

    shl-int/2addr v2, v3

    xor-int/2addr v1, v2

    .line 78
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 82
    :cond_14
    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 96
    invoke-virtual {p0}, Lmyorg/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

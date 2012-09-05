.class public Lcom/android/org/bouncycastle/asn1/DERExternal;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "DERExternal.java"


# instance fields
.field private dataValueDescriptor:Lcom/android/org/bouncycastle/asn1/ASN1Object;

.field private directReference:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

.field private encoding:I

.field private externalContent:Lcom/android/org/bouncycastle/asn1/DERObject;

.field private indirectReference:Lcom/android/org/bouncycastle/asn1/DERInteger;


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V
    .registers 7
    .parameter "vector"

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 20
    const/4 v2, 0x0

    .line 22
    .local v2, offset:I
    invoke-direct {p0, p1, v2}, Lcom/android/org/bouncycastle/asn1/DERExternal;->getObjFromVector(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;I)Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v0

    .line 23
    .local v0, enc:Lcom/android/org/bouncycastle/asn1/DERObject;
    instance-of v3, v0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    if-eqz v3, :cond_16

    .line 25
    check-cast v0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .end local v0           #enc:Lcom/android/org/bouncycastle/asn1/DERObject;
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/DERExternal;->directReference:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .line 26
    add-int/lit8 v2, v2, 0x1

    .line 27
    invoke-direct {p0, p1, v2}, Lcom/android/org/bouncycastle/asn1/DERExternal;->getObjFromVector(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;I)Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v0

    .line 29
    .restart local v0       #enc:Lcom/android/org/bouncycastle/asn1/DERObject;
    :cond_16
    instance-of v3, v0, Lcom/android/org/bouncycastle/asn1/DERInteger;

    if-eqz v3, :cond_24

    .line 31
    check-cast v0, Lcom/android/org/bouncycastle/asn1/DERInteger;

    .end local v0           #enc:Lcom/android/org/bouncycastle/asn1/DERObject;
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/DERExternal;->indirectReference:Lcom/android/org/bouncycastle/asn1/DERInteger;

    .line 32
    add-int/lit8 v2, v2, 0x1

    .line 33
    invoke-direct {p0, p1, v2}, Lcom/android/org/bouncycastle/asn1/DERExternal;->getObjFromVector(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;I)Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v0

    .line 35
    .restart local v0       #enc:Lcom/android/org/bouncycastle/asn1/DERObject;
    :cond_24
    instance-of v3, v0, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    if-nez v3, :cond_32

    .line 37
    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1Object;

    .end local v0           #enc:Lcom/android/org/bouncycastle/asn1/DERObject;
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/DERExternal;->dataValueDescriptor:Lcom/android/org/bouncycastle/asn1/ASN1Object;

    .line 38
    add-int/lit8 v2, v2, 0x1

    .line 39
    invoke-direct {p0, p1, v2}, Lcom/android/org/bouncycastle/asn1/DERExternal;->getObjFromVector(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;I)Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v0

    .line 42
    .restart local v0       #enc:Lcom/android/org/bouncycastle/asn1/DERObject;
    :cond_32
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->size()I

    move-result v3

    add-int/lit8 v4, v2, 0x1

    if-eq v3, v4, :cond_42

    .line 44
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "input vector too large"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 47
    :cond_42
    instance-of v3, v0, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    if-nez v3, :cond_4e

    .line 49
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "No tagged object found in vector. Structure doesn\'t seem to be of type External"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_4e
    move-object v1, v0

    .line 51
    check-cast v1, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    .line 52
    .local v1, obj:Lcom/android/org/bouncycastle/asn1/DERTaggedObject;
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;->getTagNo()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/org/bouncycastle/asn1/DERExternal;->setEncoding(I)V

    .line 53
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;->getObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v3

    iput-object v3, p0, Lcom/android/org/bouncycastle/asn1/DERExternal;->externalContent:Lcom/android/org/bouncycastle/asn1/DERObject;

    .line 54
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Lcom/android/org/bouncycastle/asn1/DERInteger;Lcom/android/org/bouncycastle/asn1/ASN1Object;ILcom/android/org/bouncycastle/asn1/DERObject;)V
    .registers 7
    .parameter "directReference"
    .parameter "indirectReference"
    .parameter "dataValueDescriptor"
    .parameter "encoding"
    .parameter "externalData"

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 89
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/asn1/DERExternal;->setDirectReference(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;)V

    .line 90
    invoke-direct {p0, p2}, Lcom/android/org/bouncycastle/asn1/DERExternal;->setIndirectReference(Lcom/android/org/bouncycastle/asn1/DERInteger;)V

    .line 91
    invoke-direct {p0, p3}, Lcom/android/org/bouncycastle/asn1/DERExternal;->setDataValueDescriptor(Lcom/android/org/bouncycastle/asn1/ASN1Object;)V

    .line 92
    invoke-direct {p0, p4}, Lcom/android/org/bouncycastle/asn1/DERExternal;->setEncoding(I)V

    .line 93
    invoke-virtual {p5}, Lcom/android/org/bouncycastle/asn1/DERObject;->getDERObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/asn1/DERExternal;->setExternalContent(Lcom/android/org/bouncycastle/asn1/DERObject;)V

    .line 94
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Lcom/android/org/bouncycastle/asn1/DERInteger;Lcom/android/org/bouncycastle/asn1/ASN1Object;Lcom/android/org/bouncycastle/asn1/DERTaggedObject;)V
    .registers 11
    .parameter "directReference"
    .parameter "indirectReference"
    .parameter "dataValueDescriptor"
    .parameter "externalData"

    .prologue
    .line 75
    invoke-virtual {p4}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;->getTagNo()I

    move-result v4

    invoke-virtual {p4}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;->getDERObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/org/bouncycastle/asn1/DERExternal;-><init>(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Lcom/android/org/bouncycastle/asn1/DERInteger;Lcom/android/org/bouncycastle/asn1/ASN1Object;ILcom/android/org/bouncycastle/asn1/DERObject;)V

    .line 76
    return-void
.end method

.method private getObjFromVector(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;I)Lcom/android/org/bouncycastle/asn1/DERObject;
    .registers 5
    .parameter "v"
    .parameter "index"

    .prologue
    .line 58
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->size()I

    move-result v0

    if-gt v0, p2, :cond_e

    .line 60
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "too few objects in input vector"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_e
    invoke-virtual {p1, p2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->get(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/org/bouncycastle/asn1/DEREncodable;->getDERObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v0

    return-object v0
.end method

.method private setDataValueDescriptor(Lcom/android/org/bouncycastle/asn1/ASN1Object;)V
    .registers 2
    .parameter "dataValueDescriptor"

    .prologue
    .line 236
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/DERExternal;->dataValueDescriptor:Lcom/android/org/bouncycastle/asn1/ASN1Object;

    .line 237
    return-void
.end method

.method private setDirectReference(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;)V
    .registers 2
    .parameter "directReferemce"

    .prologue
    .line 245
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/DERExternal;->directReference:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .line 246
    return-void
.end method

.method private setEncoding(I)V
    .registers 5
    .parameter "encoding"

    .prologue
    .line 259
    if-ltz p1, :cond_5

    const/4 v0, 0x2

    if-le p1, v0, :cond_1e

    .line 261
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid encoding value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 263
    :cond_1e
    iput p1, p0, Lcom/android/org/bouncycastle/asn1/DERExternal;->encoding:I

    .line 264
    return-void
.end method

.method private setExternalContent(Lcom/android/org/bouncycastle/asn1/DERObject;)V
    .registers 2
    .parameter "externalContent"

    .prologue
    .line 272
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/DERExternal;->externalContent:Lcom/android/org/bouncycastle/asn1/DERObject;

    .line 273
    return-void
.end method

.method private setIndirectReference(Lcom/android/org/bouncycastle/asn1/DERInteger;)V
    .registers 2
    .parameter "indirectReference"

    .prologue
    .line 281
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/DERExternal;->indirectReference:Lcom/android/org/bouncycastle/asn1/DERInteger;

    .line 282
    return-void
.end method


# virtual methods
.method asn1Equals(Lcom/android/org/bouncycastle/asn1/DERObject;)Z
    .registers 6
    .parameter "o"

    .prologue
    const/4 v1, 0x0

    .line 147
    instance-of v2, p1, Lcom/android/org/bouncycastle/asn1/DERExternal;

    if-nez v2, :cond_6

    .line 177
    :cond_5
    :goto_5
    return v1

    .line 151
    :cond_6
    if-ne p0, p1, :cond_a

    .line 153
    const/4 v1, 0x1

    goto :goto_5

    :cond_a
    move-object v0, p1

    .line 155
    check-cast v0, Lcom/android/org/bouncycastle/asn1/DERExternal;

    .line 156
    .local v0, other:Lcom/android/org/bouncycastle/asn1/DERExternal;
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/DERExternal;->directReference:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    if-eqz v2, :cond_1f

    .line 158
    iget-object v2, v0, Lcom/android/org/bouncycastle/asn1/DERExternal;->directReference:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    if-eqz v2, :cond_5

    iget-object v2, v0, Lcom/android/org/bouncycastle/asn1/DERExternal;->directReference:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/DERExternal;->directReference:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v2, v3}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 163
    :cond_1f
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/DERExternal;->indirectReference:Lcom/android/org/bouncycastle/asn1/DERInteger;

    if-eqz v2, :cond_31

    .line 165
    iget-object v2, v0, Lcom/android/org/bouncycastle/asn1/DERExternal;->indirectReference:Lcom/android/org/bouncycastle/asn1/DERInteger;

    if-eqz v2, :cond_5

    iget-object v2, v0, Lcom/android/org/bouncycastle/asn1/DERExternal;->indirectReference:Lcom/android/org/bouncycastle/asn1/DERInteger;

    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/DERExternal;->indirectReference:Lcom/android/org/bouncycastle/asn1/DERInteger;

    invoke-virtual {v2, v3}, Lcom/android/org/bouncycastle/asn1/DERInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 170
    :cond_31
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/DERExternal;->dataValueDescriptor:Lcom/android/org/bouncycastle/asn1/ASN1Object;

    if-eqz v2, :cond_43

    .line 172
    iget-object v2, v0, Lcom/android/org/bouncycastle/asn1/DERExternal;->dataValueDescriptor:Lcom/android/org/bouncycastle/asn1/ASN1Object;

    if-eqz v2, :cond_5

    iget-object v2, v0, Lcom/android/org/bouncycastle/asn1/DERExternal;->dataValueDescriptor:Lcom/android/org/bouncycastle/asn1/ASN1Object;

    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/DERExternal;->dataValueDescriptor:Lcom/android/org/bouncycastle/asn1/ASN1Object;

    invoke-virtual {v2, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 177
    :cond_43
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/DERExternal;->externalContent:Lcom/android/org/bouncycastle/asn1/DERObject;

    iget-object v2, v0, Lcom/android/org/bouncycastle/asn1/DERExternal;->externalContent:Lcom/android/org/bouncycastle/asn1/DERObject;

    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/DERObject;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_5
.end method

.method encode(Lcom/android/org/bouncycastle/asn1/DEROutputStream;)V
    .registers 7
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 124
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 125
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/DERExternal;->directReference:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    if-eqz v2, :cond_12

    .line 127
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/DERExternal;->directReference:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getDEREncoded()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 129
    :cond_12
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/DERExternal;->indirectReference:Lcom/android/org/bouncycastle/asn1/DERInteger;

    if-eqz v2, :cond_1f

    .line 131
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/DERExternal;->indirectReference:Lcom/android/org/bouncycastle/asn1/DERInteger;

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/DERInteger;->getDEREncoded()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 133
    :cond_1f
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/DERExternal;->dataValueDescriptor:Lcom/android/org/bouncycastle/asn1/ASN1Object;

    if-eqz v2, :cond_2c

    .line 135
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/DERExternal;->dataValueDescriptor:Lcom/android/org/bouncycastle/asn1/ASN1Object;

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Object;->getDEREncoded()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 137
    :cond_2c
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    iget v2, p0, Lcom/android/org/bouncycastle/asn1/DERExternal;->encoding:I

    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/DERExternal;->externalContent:Lcom/android/org/bouncycastle/asn1/DERObject;

    invoke-direct {v1, v2, v3}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;-><init>(ILcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 138
    .local v1, obj:Lcom/android/org/bouncycastle/asn1/DERTaggedObject;
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;->getDEREncoded()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 139
    const/16 v2, 0x20

    const/16 v3, 0x8

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-virtual {p1, v2, v3, v4}, Lcom/android/org/bouncycastle/asn1/DEROutputStream;->writeEncoded(II[B)V

    .line 140
    return-void
.end method

.method public getDataValueDescriptor()Lcom/android/org/bouncycastle/asn1/ASN1Object;
    .registers 2

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/DERExternal;->dataValueDescriptor:Lcom/android/org/bouncycastle/asn1/ASN1Object;

    return-object v0
.end method

.method public getDirectReference()Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    .registers 2

    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/DERExternal;->directReference:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    return-object v0
.end method

.method public getEncoding()I
    .registers 2

    .prologue
    .line 209
    iget v0, p0, Lcom/android/org/bouncycastle/asn1/DERExternal;->encoding:I

    return v0
.end method

.method public getExternalContent()Lcom/android/org/bouncycastle/asn1/DERObject;
    .registers 2

    .prologue
    .line 218
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/DERExternal;->externalContent:Lcom/android/org/bouncycastle/asn1/DERObject;

    return-object v0
.end method

.method public getIndirectReference()Lcom/android/org/bouncycastle/asn1/DERInteger;
    .registers 2

    .prologue
    .line 227
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/DERExternal;->indirectReference:Lcom/android/org/bouncycastle/asn1/DERInteger;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 101
    const/4 v0, 0x0

    .line 102
    .local v0, ret:I
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/DERExternal;->directReference:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    if-eqz v1, :cond_b

    .line 104
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/DERExternal;->directReference:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->hashCode()I

    move-result v0

    .line 106
    :cond_b
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/DERExternal;->indirectReference:Lcom/android/org/bouncycastle/asn1/DERInteger;

    if-eqz v1, :cond_16

    .line 108
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/DERExternal;->indirectReference:Lcom/android/org/bouncycastle/asn1/DERInteger;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/DERInteger;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 110
    :cond_16
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/DERExternal;->dataValueDescriptor:Lcom/android/org/bouncycastle/asn1/ASN1Object;

    if-eqz v1, :cond_21

    .line 112
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/DERExternal;->dataValueDescriptor:Lcom/android/org/bouncycastle/asn1/ASN1Object;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 114
    :cond_21
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/DERExternal;->externalContent:Lcom/android/org/bouncycastle/asn1/DERObject;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/DERObject;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 115
    return v0
.end method

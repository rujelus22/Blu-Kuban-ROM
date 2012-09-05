.class public Lmyorg/bouncycastle/asn1/BERTaggedObject;
.super Lmyorg/bouncycastle/asn1/DERTaggedObject;
.source "BERTaggedObject.java"


# direct methods
.method public constructor <init>(ILmyorg/bouncycastle/asn1/DEREncodable;)V
    .registers 3
    .parameter "tagNo"
    .parameter "obj"

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lmyorg/bouncycastle/asn1/DERTaggedObject;-><init>(ILmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 19
    return-void
.end method

.method public constructor <init>(ZILmyorg/bouncycastle/asn1/DEREncodable;)V
    .registers 4
    .parameter "explicit"
    .parameter "tagNo"
    .parameter "obj"

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Lmyorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 28
    return-void
.end method


# virtual methods
.method encode(Lmyorg/bouncycastle/asn1/DEROutputStream;)V
    .registers 8
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 38
    instance-of v3, p1, Lmyorg/bouncycastle/asn1/ASN1OutputStream;

    if-nez v3, :cond_9

    instance-of v3, p1, Lmyorg/bouncycastle/asn1/BEROutputStream;

    if-eqz v3, :cond_9e

    .line 39
    :cond_9
    const/16 v3, 0xa0

    iget v4, p0, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;->tagNo:I

    invoke-virtual {p1, v3, v4}, Lmyorg/bouncycastle/asn1/DEROutputStream;->writeTag(II)V

    .line 40
    const/16 v3, 0x80

    invoke-virtual {p1, v3}, Lmyorg/bouncycastle/asn1/DEROutputStream;->write(I)V

    .line 42
    iget-boolean v3, p0, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;->empty:Z

    if-nez v3, :cond_97

    .line 43
    iget-boolean v3, p0, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;->explicit:Z

    if-nez v3, :cond_92

    .line 45
    iget-object v3, p0, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;->obj:Lmyorg/bouncycastle/asn1/DEREncodable;

    instance-of v3, v3, Lmyorg/bouncycastle/asn1/ASN1OctetString;

    if-eqz v3, :cond_51

    .line 46
    iget-object v3, p0, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;->obj:Lmyorg/bouncycastle/asn1/DEREncodable;

    instance-of v3, v3, Lmyorg/bouncycastle/asn1/BERConstructedOctetString;

    if-eqz v3, :cond_3f

    .line 47
    iget-object v3, p0, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;->obj:Lmyorg/bouncycastle/asn1/DEREncodable;

    check-cast v3, Lmyorg/bouncycastle/asn1/BERConstructedOctetString;

    invoke-virtual {v3}, Lmyorg/bouncycastle/asn1/BERConstructedOctetString;->getObjects()Ljava/util/Enumeration;

    move-result-object v1

    .line 62
    .local v1, e:Ljava/util/Enumeration;
    :goto_31
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_97

    .line 63
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Lmyorg/bouncycastle/asn1/DEROutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_31

    .line 49
    .end local v1           #e:Ljava/util/Enumeration;
    :cond_3f
    iget-object v2, p0, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;->obj:Lmyorg/bouncycastle/asn1/DEREncodable;

    check-cast v2, Lmyorg/bouncycastle/asn1/ASN1OctetString;

    .line 50
    .local v2, octs:Lmyorg/bouncycastle/asn1/ASN1OctetString;
    new-instance v0, Lmyorg/bouncycastle/asn1/BERConstructedOctetString;

    invoke-virtual {v2}, Lmyorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v3

    invoke-direct {v0, v3}, Lmyorg/bouncycastle/asn1/BERConstructedOctetString;-><init>([B)V

    .line 52
    .local v0, berO:Lmyorg/bouncycastle/asn1/BERConstructedOctetString;
    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/BERConstructedOctetString;->getObjects()Ljava/util/Enumeration;

    move-result-object v1

    .line 53
    .restart local v1       #e:Ljava/util/Enumeration;
    goto :goto_31

    .line 54
    .end local v0           #berO:Lmyorg/bouncycastle/asn1/BERConstructedOctetString;
    .end local v1           #e:Ljava/util/Enumeration;
    .end local v2           #octs:Lmyorg/bouncycastle/asn1/ASN1OctetString;
    :cond_51
    iget-object v3, p0, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;->obj:Lmyorg/bouncycastle/asn1/DEREncodable;

    instance-of v3, v3, Lmyorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v3, :cond_60

    .line 55
    iget-object v3, p0, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;->obj:Lmyorg/bouncycastle/asn1/DEREncodable;

    check-cast v3, Lmyorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v3}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v1

    .restart local v1       #e:Ljava/util/Enumeration;
    goto :goto_31

    .line 56
    .end local v1           #e:Ljava/util/Enumeration;
    :cond_60
    iget-object v3, p0, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;->obj:Lmyorg/bouncycastle/asn1/DEREncodable;

    instance-of v3, v3, Lmyorg/bouncycastle/asn1/ASN1Set;

    if-eqz v3, :cond_6f

    .line 57
    iget-object v3, p0, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;->obj:Lmyorg/bouncycastle/asn1/DEREncodable;

    check-cast v3, Lmyorg/bouncycastle/asn1/ASN1Set;

    invoke-virtual {v3}, Lmyorg/bouncycastle/asn1/ASN1Set;->getObjects()Ljava/util/Enumeration;

    move-result-object v1

    .restart local v1       #e:Ljava/util/Enumeration;
    goto :goto_31

    .line 59
    .end local v1           #e:Ljava/util/Enumeration;
    :cond_6f
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "not implemented: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;->obj:Lmyorg/bouncycastle/asn1/DEREncodable;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 66
    :cond_92
    iget-object v3, p0, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;->obj:Lmyorg/bouncycastle/asn1/DEREncodable;

    invoke-virtual {p1, v3}, Lmyorg/bouncycastle/asn1/DEROutputStream;->writeObject(Ljava/lang/Object;)V

    .line 70
    :cond_97
    invoke-virtual {p1, v5}, Lmyorg/bouncycastle/asn1/DEROutputStream;->write(I)V

    .line 71
    invoke-virtual {p1, v5}, Lmyorg/bouncycastle/asn1/DEROutputStream;->write(I)V

    .line 75
    :goto_9d
    return-void

    .line 73
    :cond_9e
    invoke-super {p0, p1}, Lmyorg/bouncycastle/asn1/DERTaggedObject;->encode(Lmyorg/bouncycastle/asn1/DEROutputStream;)V

    goto :goto_9d
.end method

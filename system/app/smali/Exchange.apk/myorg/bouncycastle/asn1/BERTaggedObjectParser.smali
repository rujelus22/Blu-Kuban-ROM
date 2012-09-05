.class public Lmyorg/bouncycastle/asn1/BERTaggedObjectParser;
.super Ljava/lang/Object;
.source "BERTaggedObjectParser.java"

# interfaces
.implements Lmyorg/bouncycastle/asn1/ASN1TaggedObjectParser;


# instance fields
.field private _baseTag:I

.field private _contentStream:Ljava/io/InputStream;

.field private _indefiniteLength:Z

.field private _tagNumber:I


# direct methods
.method protected constructor <init>(IILjava/io/InputStream;)V
    .registers 5
    .parameter "baseTag"
    .parameter "tagNumber"
    .parameter "contentStream"

    .prologue
    .line 14
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput p1, p0, Lmyorg/bouncycastle/asn1/BERTaggedObjectParser;->_baseTag:I

    .line 16
    iput p2, p0, Lmyorg/bouncycastle/asn1/BERTaggedObjectParser;->_tagNumber:I

    .line 17
    iput-object p3, p0, Lmyorg/bouncycastle/asn1/BERTaggedObjectParser;->_contentStream:Ljava/io/InputStream;

    .line 18
    instance-of v0, p3, Lmyorg/bouncycastle/asn1/IndefiniteLengthInputStream;

    iput-boolean v0, p0, Lmyorg/bouncycastle/asn1/BERTaggedObjectParser;->_indefiniteLength:Z

    .line 19
    return-void
.end method

.method private rLoadVector(Ljava/io/InputStream;)Lmyorg/bouncycastle/asn1/ASN1EncodableVector;
    .registers 5
    .parameter "in"

    .prologue
    .line 62
    :try_start_0
    new-instance v1, Lmyorg/bouncycastle/asn1/ASN1StreamParser;

    invoke-direct {v1, p1}, Lmyorg/bouncycastle/asn1/ASN1StreamParser;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/ASN1StreamParser;->readVector()Lmyorg/bouncycastle/asn1/ASN1EncodableVector;
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_8} :catch_a

    move-result-object v1

    return-object v1

    .line 63
    :catch_a
    move-exception v0

    .line 64
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Lmyorg/bouncycastle/asn1/ASN1ParsingException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lmyorg/bouncycastle/asn1/ASN1ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public getDERObject()Lmyorg/bouncycastle/asn1/DERObject;
    .registers 9

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 69
    iget-boolean v3, p0, Lmyorg/bouncycastle/asn1/BERTaggedObjectParser;->_indefiniteLength:Z

    if-eqz v3, :cond_2a

    .line 70
    iget-object v3, p0, Lmyorg/bouncycastle/asn1/BERTaggedObjectParser;->_contentStream:Ljava/io/InputStream;

    invoke-direct {p0, v3}, Lmyorg/bouncycastle/asn1/BERTaggedObjectParser;->rLoadVector(Ljava/io/InputStream;)Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object v2

    .line 72
    .local v2, v:Lmyorg/bouncycastle/asn1/ASN1EncodableVector;
    invoke-virtual {v2}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->size()I

    move-result v3

    if-ne v3, v7, :cond_1e

    new-instance v3, Lmyorg/bouncycastle/asn1/BERTaggedObject;

    iget v4, p0, Lmyorg/bouncycastle/asn1/BERTaggedObjectParser;->_tagNumber:I

    invoke-virtual {v2, v6}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->get(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v5

    invoke-direct {v3, v7, v4, v5}, Lmyorg/bouncycastle/asn1/BERTaggedObject;-><init>(ZILmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 85
    .end local v2           #v:Lmyorg/bouncycastle/asn1/ASN1EncodableVector;
    :goto_1d
    return-object v3

    .line 72
    .restart local v2       #v:Lmyorg/bouncycastle/asn1/ASN1EncodableVector;
    :cond_1e
    new-instance v3, Lmyorg/bouncycastle/asn1/BERTaggedObject;

    iget v4, p0, Lmyorg/bouncycastle/asn1/BERTaggedObjectParser;->_tagNumber:I

    invoke-static {v2}, Lmyorg/bouncycastle/asn1/BERFactory;->createSequence(Lmyorg/bouncycastle/asn1/ASN1EncodableVector;)Lmyorg/bouncycastle/asn1/BERSequence;

    move-result-object v5

    invoke-direct {v3, v6, v4, v5}, Lmyorg/bouncycastle/asn1/BERTaggedObject;-><init>(ZILmyorg/bouncycastle/asn1/DEREncodable;)V

    goto :goto_1d

    .line 76
    .end local v2           #v:Lmyorg/bouncycastle/asn1/ASN1EncodableVector;
    :cond_2a
    invoke-virtual {p0}, Lmyorg/bouncycastle/asn1/BERTaggedObjectParser;->isConstructed()Z

    move-result v3

    if-eqz v3, :cond_54

    .line 77
    iget-object v3, p0, Lmyorg/bouncycastle/asn1/BERTaggedObjectParser;->_contentStream:Ljava/io/InputStream;

    invoke-direct {p0, v3}, Lmyorg/bouncycastle/asn1/BERTaggedObjectParser;->rLoadVector(Ljava/io/InputStream;)Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object v2

    .line 79
    .restart local v2       #v:Lmyorg/bouncycastle/asn1/ASN1EncodableVector;
    invoke-virtual {v2}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->size()I

    move-result v3

    if-ne v3, v7, :cond_48

    new-instance v3, Lmyorg/bouncycastle/asn1/DERTaggedObject;

    iget v4, p0, Lmyorg/bouncycastle/asn1/BERTaggedObjectParser;->_tagNumber:I

    invoke-virtual {v2, v6}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->get(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v5

    invoke-direct {v3, v7, v4, v5}, Lmyorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILmyorg/bouncycastle/asn1/DEREncodable;)V

    goto :goto_1d

    :cond_48
    new-instance v3, Lmyorg/bouncycastle/asn1/DERTaggedObject;

    iget v4, p0, Lmyorg/bouncycastle/asn1/BERTaggedObjectParser;->_tagNumber:I

    invoke-static {v2}, Lmyorg/bouncycastle/asn1/DERFactory;->createSequence(Lmyorg/bouncycastle/asn1/ASN1EncodableVector;)Lmyorg/bouncycastle/asn1/DERSequence;

    move-result-object v5

    invoke-direct {v3, v6, v4, v5}, Lmyorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILmyorg/bouncycastle/asn1/DEREncodable;)V

    goto :goto_1d

    .line 84
    .end local v2           #v:Lmyorg/bouncycastle/asn1/ASN1EncodableVector;
    :cond_54
    :try_start_54
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/BERTaggedObjectParser;->_contentStream:Ljava/io/InputStream;

    check-cast v0, Lmyorg/bouncycastle/asn1/DefiniteLengthInputStream;

    .line 85
    .local v0, defIn:Lmyorg/bouncycastle/asn1/DefiniteLengthInputStream;
    new-instance v3, Lmyorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v4, 0x0

    iget v5, p0, Lmyorg/bouncycastle/asn1/BERTaggedObjectParser;->_tagNumber:I

    new-instance v6, Lmyorg/bouncycastle/asn1/DEROctetString;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v7

    invoke-direct {v6, v7}, Lmyorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {v3, v4, v5, v6}, Lmyorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILmyorg/bouncycastle/asn1/DEREncodable;)V
    :try_end_69
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_69} :catch_6a

    goto :goto_1d

    .line 86
    .end local v0           #defIn:Lmyorg/bouncycastle/asn1/DefiniteLengthInputStream;
    :catch_6a
    move-exception v1

    .line 87
    .local v1, e:Ljava/io/IOException;
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public isConstructed()Z
    .registers 2

    .prologue
    .line 22
    iget v0, p0, Lmyorg/bouncycastle/asn1/BERTaggedObjectParser;->_baseTag:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

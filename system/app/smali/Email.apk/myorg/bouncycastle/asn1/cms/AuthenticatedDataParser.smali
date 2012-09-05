.class public Lmyorg/bouncycastle/asn1/cms/AuthenticatedDataParser;
.super Ljava/lang/Object;
.source "AuthenticatedDataParser.java"


# instance fields
.field private nextObject:Lmyorg/bouncycastle/asn1/DEREncodable;

.field private originatorInfoCalled:Z

.field private seq:Lmyorg/bouncycastle/asn1/ASN1SequenceParser;

.field private version:Lmyorg/bouncycastle/asn1/DERInteger;


# direct methods
.method public constructor <init>(Lmyorg/bouncycastle/asn1/ASN1SequenceParser;)V
    .registers 3
    .parameter "seq"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 43
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lmyorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->seq:Lmyorg/bouncycastle/asn1/ASN1SequenceParser;

    .line 45
    invoke-interface {p1}, Lmyorg/bouncycastle/asn1/ASN1SequenceParser;->readObject()Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    check-cast v0, Lmyorg/bouncycastle/asn1/DERInteger;

    iput-object v0, p0, Lmyorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->version:Lmyorg/bouncycastle/asn1/DERInteger;

    .line 46
    return-void
.end method


# virtual methods
.method public getEnapsulatedContentInfo()Lmyorg/bouncycastle/asn1/cms/ContentInfoParser;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 99
    iget-object v2, p0, Lmyorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->nextObject:Lmyorg/bouncycastle/asn1/DEREncodable;

    if-nez v2, :cond_d

    .line 100
    iget-object v2, p0, Lmyorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->seq:Lmyorg/bouncycastle/asn1/ASN1SequenceParser;

    invoke-interface {v2}, Lmyorg/bouncycastle/asn1/ASN1SequenceParser;->readObject()Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v2

    iput-object v2, p0, Lmyorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->nextObject:Lmyorg/bouncycastle/asn1/DEREncodable;

    .line 103
    :cond_d
    iget-object v2, p0, Lmyorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->nextObject:Lmyorg/bouncycastle/asn1/DEREncodable;

    if-eqz v2, :cond_1c

    .line 104
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->nextObject:Lmyorg/bouncycastle/asn1/DEREncodable;

    check-cast v0, Lmyorg/bouncycastle/asn1/ASN1SequenceParser;

    .line 105
    .local v0, o:Lmyorg/bouncycastle/asn1/ASN1SequenceParser;
    iput-object v1, p0, Lmyorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->nextObject:Lmyorg/bouncycastle/asn1/DEREncodable;

    .line 106
    new-instance v1, Lmyorg/bouncycastle/asn1/cms/ContentInfoParser;

    invoke-direct {v1, v0}, Lmyorg/bouncycastle/asn1/cms/ContentInfoParser;-><init>(Lmyorg/bouncycastle/asn1/ASN1SequenceParser;)V

    .line 109
    .end local v0           #o:Lmyorg/bouncycastle/asn1/ASN1SequenceParser;
    :cond_1c
    return-object v1
.end method

.method public getMacAlgorithm()Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 85
    iget-object v2, p0, Lmyorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->nextObject:Lmyorg/bouncycastle/asn1/DEREncodable;

    if-nez v2, :cond_d

    .line 86
    iget-object v2, p0, Lmyorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->seq:Lmyorg/bouncycastle/asn1/ASN1SequenceParser;

    invoke-interface {v2}, Lmyorg/bouncycastle/asn1/ASN1SequenceParser;->readObject()Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v2

    iput-object v2, p0, Lmyorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->nextObject:Lmyorg/bouncycastle/asn1/DEREncodable;

    .line 89
    :cond_d
    iget-object v2, p0, Lmyorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->nextObject:Lmyorg/bouncycastle/asn1/DEREncodable;

    if-eqz v2, :cond_1f

    .line 90
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->nextObject:Lmyorg/bouncycastle/asn1/DEREncodable;

    check-cast v0, Lmyorg/bouncycastle/asn1/ASN1SequenceParser;

    .line 91
    .local v0, o:Lmyorg/bouncycastle/asn1/ASN1SequenceParser;
    iput-object v1, p0, Lmyorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->nextObject:Lmyorg/bouncycastle/asn1/DEREncodable;

    .line 92
    invoke-interface {v0}, Lmyorg/bouncycastle/asn1/ASN1SequenceParser;->getDERObject()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v1

    invoke-static {v1}, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    .line 95
    .end local v0           #o:Lmyorg/bouncycastle/asn1/ASN1SequenceParser;
    :cond_1f
    return-object v1
.end method

.method public getOriginatorInfo()Lmyorg/bouncycastle/asn1/cms/OriginatorInfo;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 53
    const/4 v1, 0x1

    iput-boolean v1, p0, Lmyorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->originatorInfoCalled:Z

    .line 55
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->nextObject:Lmyorg/bouncycastle/asn1/DEREncodable;

    if-nez v1, :cond_10

    .line 56
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->seq:Lmyorg/bouncycastle/asn1/ASN1SequenceParser;

    invoke-interface {v1}, Lmyorg/bouncycastle/asn1/ASN1SequenceParser;->readObject()Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v1

    iput-object v1, p0, Lmyorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->nextObject:Lmyorg/bouncycastle/asn1/DEREncodable;

    .line 59
    :cond_10
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->nextObject:Lmyorg/bouncycastle/asn1/DEREncodable;

    instance-of v1, v1, Lmyorg/bouncycastle/asn1/ASN1TaggedObjectParser;

    if-eqz v1, :cond_38

    iget-object v1, p0, Lmyorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->nextObject:Lmyorg/bouncycastle/asn1/DEREncodable;

    check-cast v1, Lmyorg/bouncycastle/asn1/ASN1TaggedObjectParser;

    invoke-interface {v1}, Lmyorg/bouncycastle/asn1/ASN1TaggedObjectParser;->getTagNo()I

    move-result v1

    if-nez v1, :cond_38

    .line 61
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->nextObject:Lmyorg/bouncycastle/asn1/DEREncodable;

    check-cast v1, Lmyorg/bouncycastle/asn1/ASN1TaggedObjectParser;

    const/16 v3, 0x10

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Lmyorg/bouncycastle/asn1/ASN1TaggedObjectParser;->getObjectParser(IZ)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    check-cast v0, Lmyorg/bouncycastle/asn1/ASN1SequenceParser;

    .line 63
    .local v0, originatorInfo:Lmyorg/bouncycastle/asn1/ASN1SequenceParser;
    iput-object v2, p0, Lmyorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->nextObject:Lmyorg/bouncycastle/asn1/DEREncodable;

    .line 64
    invoke-interface {v0}, Lmyorg/bouncycastle/asn1/ASN1SequenceParser;->getDERObject()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v1

    invoke-static {v1}, Lmyorg/bouncycastle/asn1/cms/OriginatorInfo;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/cms/OriginatorInfo;

    move-result-object v1

    .line 67
    .end local v0           #originatorInfo:Lmyorg/bouncycastle/asn1/ASN1SequenceParser;
    :goto_37
    return-object v1

    :cond_38
    move-object v1, v2

    goto :goto_37
.end method

.method public getRecipientInfos()Lmyorg/bouncycastle/asn1/ASN1SetParser;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 71
    iget-boolean v1, p0, Lmyorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->originatorInfoCalled:Z

    if-nez v1, :cond_7

    .line 72
    invoke-virtual {p0}, Lmyorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->getOriginatorInfo()Lmyorg/bouncycastle/asn1/cms/OriginatorInfo;

    .line 75
    :cond_7
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->nextObject:Lmyorg/bouncycastle/asn1/DEREncodable;

    if-nez v1, :cond_13

    .line 76
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->seq:Lmyorg/bouncycastle/asn1/ASN1SequenceParser;

    invoke-interface {v1}, Lmyorg/bouncycastle/asn1/ASN1SequenceParser;->readObject()Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v1

    iput-object v1, p0, Lmyorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->nextObject:Lmyorg/bouncycastle/asn1/DEREncodable;

    .line 79
    :cond_13
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->nextObject:Lmyorg/bouncycastle/asn1/DEREncodable;

    check-cast v0, Lmyorg/bouncycastle/asn1/ASN1SetParser;

    .line 80
    .local v0, recipientInfos:Lmyorg/bouncycastle/asn1/ASN1SetParser;
    const/4 v1, 0x0

    iput-object v1, p0, Lmyorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->nextObject:Lmyorg/bouncycastle/asn1/DEREncodable;

    .line 81
    return-object v0
.end method

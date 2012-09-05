.class public Lmyorg/bouncycastle/asn1/cms/OriginatorIdentifierOrKey;
.super Lmyorg/bouncycastle/asn1/ASN1Encodable;
.source "OriginatorIdentifierOrKey.java"

# interfaces
.implements Lmyorg/bouncycastle/asn1/ASN1Choice;


# instance fields
.field private id:Lmyorg/bouncycastle/asn1/DEREncodable;


# virtual methods
.method public toASN1Object()Lmyorg/bouncycastle/asn1/DERObject;
    .registers 2

    .prologue
    .line 133
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/cms/OriginatorIdentifierOrKey;->id:Lmyorg/bouncycastle/asn1/DEREncodable;

    invoke-interface {v0}, Lmyorg/bouncycastle/asn1/DEREncodable;->getDERObject()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v0

    return-object v0
.end method

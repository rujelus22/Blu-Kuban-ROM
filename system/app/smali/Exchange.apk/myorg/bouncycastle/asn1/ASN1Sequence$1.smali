.class Lmyorg/bouncycastle/asn1/ASN1Sequence$1;
.super Ljava/lang/Object;
.source "ASN1Sequence.java"

# interfaces
.implements Lmyorg/bouncycastle/asn1/ASN1SequenceParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmyorg/bouncycastle/asn1/ASN1Sequence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$outer:Lmyorg/bouncycastle/asn1/ASN1Sequence;


# virtual methods
.method public getDERObject()Lmyorg/bouncycastle/asn1/DERObject;
    .registers 2

    .prologue
    .line 100
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/ASN1Sequence$1;->val$outer:Lmyorg/bouncycastle/asn1/ASN1Sequence;

    return-object v0
.end method

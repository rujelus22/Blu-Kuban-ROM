.class Lmyorg/bouncycastle/asn1/ASN1Set$1;
.super Ljava/lang/Object;
.source "ASN1Set.java"

# interfaces
.implements Lmyorg/bouncycastle/asn1/ASN1SetParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmyorg/bouncycastle/asn1/ASN1Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$outer:Lmyorg/bouncycastle/asn1/ASN1Set;


# virtual methods
.method public getDERObject()Lmyorg/bouncycastle/asn1/DERObject;
    .registers 2

    .prologue
    .line 140
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/ASN1Set$1;->val$outer:Lmyorg/bouncycastle/asn1/ASN1Set;

    return-object v0
.end method

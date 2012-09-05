.class final Lorg/apache/harmony/security/provider/crypto/ThreeIntegerSequence$1;
.super Lorg/apache/harmony/security/asn1/ASN1Sequence;
.source "ThreeIntegerSequence.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/security/provider/crypto/ThreeIntegerSequence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Sequence;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    return-void
.end method


# virtual methods
.method protected getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .registers 7
    .parameter "in"

    .prologue
    .line 58
    iget-object v1, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, [Ljava/lang/Object;

    .line 60
    .local v0, values:[Ljava/lang/Object;
    new-instance v4, Lorg/apache/harmony/security/provider/crypto/ThreeIntegerSequence;

    const/4 v1, 0x0

    aget-object v1, v0, v1

    check-cast v1, [B

    check-cast v1, [B

    const/4 v2, 0x1

    aget-object v2, v0, v2

    check-cast v2, [B

    check-cast v2, [B

    const/4 v3, 0x2

    aget-object v3, v0, v3

    check-cast v3, [B

    check-cast v3, [B

    invoke-direct {v4, v1, v2, v3}, Lorg/apache/harmony/security/provider/crypto/ThreeIntegerSequence;-><init>([B[B[B)V

    return-object v4
.end method

.method protected getValues(Ljava/lang/Object;[Ljava/lang/Object;)V
    .registers 6
    .parameter "object"
    .parameter "values"

    .prologue
    .line 66
    move-object v0, p1

    check-cast v0, Lorg/apache/harmony/security/provider/crypto/ThreeIntegerSequence;

    .line 68
    .local v0, mySeq:Lorg/apache/harmony/security/provider/crypto/ThreeIntegerSequence;
    const/4 v1, 0x0

    iget-object v2, v0, Lorg/apache/harmony/security/provider/crypto/ThreeIntegerSequence;->p:[B

    aput-object v2, p2, v1

    .line 69
    const/4 v1, 0x1

    iget-object v2, v0, Lorg/apache/harmony/security/provider/crypto/ThreeIntegerSequence;->q:[B

    aput-object v2, p2, v1

    .line 70
    const/4 v1, 0x2

    iget-object v2, v0, Lorg/apache/harmony/security/provider/crypto/ThreeIntegerSequence;->g:[B

    aput-object v2, p2, v1

    .line 71
    return-void
.end method

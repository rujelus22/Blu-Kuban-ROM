.class Lmyorg/bouncycastle/cms/OriginatorId;
.super Ljava/security/cert/X509CertSelector;
.source "OriginatorId.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/security/cert/X509CertSelector;-><init>()V

    return-void
.end method

.method private equalsObj(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4
    .parameter "a"
    .parameter "b"

    .prologue
    .line 39
    if-eqz p1, :cond_7

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_6
    return v0

    :cond_7
    if-nez p2, :cond_b

    const/4 v0, 0x1

    goto :goto_6

    :cond_b
    const/4 v0, 0x0

    goto :goto_6
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter "o"

    .prologue
    const/4 v1, 0x0

    .line 27
    instance-of v2, p1, Lmyorg/bouncycastle/cms/OriginatorId;

    if-nez v2, :cond_6

    .line 33
    :cond_5
    :goto_5
    return v1

    :cond_6
    move-object v0, p1

    .line 31
    check-cast v0, Lmyorg/bouncycastle/cms/OriginatorId;

    .line 33
    .local v0, id:Lmyorg/bouncycastle/cms/OriginatorId;
    invoke-virtual {p0}, Lmyorg/bouncycastle/cms/OriginatorId;->getSubjectKeyIdentifier()[B

    move-result-object v2

    invoke-virtual {v0}, Lmyorg/bouncycastle/cms/OriginatorId;->getSubjectKeyIdentifier()[B

    move-result-object v3

    invoke-static {v2, v3}, Lmyorg/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lmyorg/bouncycastle/cms/OriginatorId;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0}, Lmyorg/bouncycastle/cms/OriginatorId;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lmyorg/bouncycastle/cms/OriginatorId;->equalsObj(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lmyorg/bouncycastle/cms/OriginatorId;->getIssuerAsString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lmyorg/bouncycastle/cms/OriginatorId;->getIssuerAsString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lmyorg/bouncycastle/cms/OriginatorId;->equalsObj(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v1, 0x1

    goto :goto_5
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 13
    invoke-virtual {p0}, Lmyorg/bouncycastle/cms/OriginatorId;->getSubjectKeyIdentifier()[B

    move-result-object v1

    invoke-static {v1}, Lmyorg/bouncycastle/util/Arrays;->hashCode([B)I

    move-result v0

    .line 15
    .local v0, code:I
    invoke-virtual {p0}, Lmyorg/bouncycastle/cms/OriginatorId;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v1

    if-eqz v1, :cond_17

    .line 16
    invoke-virtual {p0}, Lmyorg/bouncycastle/cms/OriginatorId;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 19
    :cond_17
    invoke-virtual {p0}, Lmyorg/bouncycastle/cms/OriginatorId;->getIssuerAsString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_26

    .line 20
    invoke-virtual {p0}, Lmyorg/bouncycastle/cms/OriginatorId;->getIssuerAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 23
    :cond_26
    return v0
.end method

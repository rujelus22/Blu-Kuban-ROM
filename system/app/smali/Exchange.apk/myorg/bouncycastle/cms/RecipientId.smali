.class public Lmyorg/bouncycastle/cms/RecipientId;
.super Ljava/security/cert/X509CertSelector;
.source "RecipientId.java"


# instance fields
.field keyIdentifier:[B


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/security/cert/X509CertSelector;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput-object v0, p0, Lmyorg/bouncycastle/cms/RecipientId;->keyIdentifier:[B

    return-void
.end method

.method private equalsObj(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4
    .parameter "a"
    .parameter "b"

    .prologue
    .line 56
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

    .line 43
    instance-of v2, p1, Lmyorg/bouncycastle/cms/RecipientId;

    if-nez v2, :cond_6

    .line 49
    :cond_5
    :goto_5
    return v1

    :cond_6
    move-object v0, p1

    .line 47
    check-cast v0, Lmyorg/bouncycastle/cms/RecipientId;

    .line 49
    .local v0, id:Lmyorg/bouncycastle/cms/RecipientId;
    iget-object v2, p0, Lmyorg/bouncycastle/cms/RecipientId;->keyIdentifier:[B

    iget-object v3, v0, Lmyorg/bouncycastle/cms/RecipientId;->keyIdentifier:[B

    invoke-static {v2, v3}, Lmyorg/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lmyorg/bouncycastle/cms/RecipientId;->getSubjectKeyIdentifier()[B

    move-result-object v2

    invoke-virtual {v0}, Lmyorg/bouncycastle/cms/RecipientId;->getSubjectKeyIdentifier()[B

    move-result-object v3

    invoke-static {v2, v3}, Lmyorg/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lmyorg/bouncycastle/cms/RecipientId;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0}, Lmyorg/bouncycastle/cms/RecipientId;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lmyorg/bouncycastle/cms/RecipientId;->equalsObj(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lmyorg/bouncycastle/cms/RecipientId;->getIssuerAsString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lmyorg/bouncycastle/cms/RecipientId;->getIssuerAsString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lmyorg/bouncycastle/cms/RecipientId;->equalsObj(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v1, 0x1

    goto :goto_5
.end method

.method public hashCode()I
    .registers 6

    .prologue
    .line 27
    iget-object v3, p0, Lmyorg/bouncycastle/cms/RecipientId;->keyIdentifier:[B

    invoke-static {v3}, Lmyorg/bouncycastle/util/Arrays;->hashCode([B)I

    move-result v3

    invoke-virtual {p0}, Lmyorg/bouncycastle/cms/RecipientId;->getSubjectKeyIdentifier()[B

    move-result-object v4

    invoke-static {v4}, Lmyorg/bouncycastle/util/Arrays;->hashCode([B)I

    move-result v4

    xor-int v0, v3, v4

    .line 29
    .local v0, code:I
    invoke-virtual {p0}, Lmyorg/bouncycastle/cms/RecipientId;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v2

    .line 30
    .local v2, serialNumber:Ljava/math/BigInteger;
    if-eqz v2, :cond_1b

    .line 31
    invoke-virtual {v2}, Ljava/math/BigInteger;->hashCode()I

    move-result v3

    xor-int/2addr v0, v3

    .line 34
    :cond_1b
    invoke-virtual {p0}, Lmyorg/bouncycastle/cms/RecipientId;->getIssuerAsString()Ljava/lang/String;

    move-result-object v1

    .line 35
    .local v1, issuer:Ljava/lang/String;
    if-eqz v1, :cond_26

    .line 36
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v0, v3

    .line 39
    :cond_26
    return v0
.end method

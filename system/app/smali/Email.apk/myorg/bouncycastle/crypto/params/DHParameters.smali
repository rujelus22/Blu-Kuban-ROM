.class public Lmyorg/bouncycastle/crypto/params/DHParameters;
.super Ljava/lang/Object;
.source "DHParameters.java"

# interfaces
.implements Lmyorg/bouncycastle/crypto/CipherParameters;


# instance fields
.field private g:Ljava/math/BigInteger;

.field private j:Ljava/math/BigInteger;

.field private l:I

.field private m:I

.field private p:Ljava/math/BigInteger;

.field private q:Ljava/math/BigInteger;

.field private validation:Lmyorg/bouncycastle/crypto/params/DHValidationParameters;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .registers 5
    .parameter "p"
    .parameter "g"

    .prologue
    .line 29
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lmyorg/bouncycastle/crypto/params/DHParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    .line 30
    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;I)V
    .registers 13
    .parameter "p"
    .parameter "g"
    .parameter "q"
    .parameter "l"

    .prologue
    const/4 v6, 0x0

    .line 37
    invoke-static {p4}, Lmyorg/bouncycastle/crypto/params/DHParameters;->getDefaultMParam(I)I

    move-result v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    move-object v7, v6

    invoke-direct/range {v0 .. v7}, Lmyorg/bouncycastle/crypto/params/DHParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;IILjava/math/BigInteger;Lmyorg/bouncycastle/crypto/params/DHValidationParameters;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;IILjava/math/BigInteger;Lmyorg/bouncycastle/crypto/params/DHValidationParameters;)V
    .registers 10
    .parameter "p"
    .parameter "g"
    .parameter "q"
    .parameter "m"
    .parameter "l"
    .parameter "j"
    .parameter "validation"

    .prologue
    .line 50
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 51
    if-eqz p5, :cond_1d

    .line 52
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    if-lt p5, v0, :cond_13

    .line 53
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "when l value specified, it must be less than bitlength(p)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_13
    if-ge p5, p4, :cond_1d

    .line 57
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "when l value specified, it may not be less than m value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_1d
    iput-object p2, p0, Lmyorg/bouncycastle/crypto/params/DHParameters;->g:Ljava/math/BigInteger;

    .line 63
    iput-object p1, p0, Lmyorg/bouncycastle/crypto/params/DHParameters;->p:Ljava/math/BigInteger;

    .line 64
    iput-object p3, p0, Lmyorg/bouncycastle/crypto/params/DHParameters;->q:Ljava/math/BigInteger;

    .line 65
    iput p4, p0, Lmyorg/bouncycastle/crypto/params/DHParameters;->m:I

    .line 66
    iput p5, p0, Lmyorg/bouncycastle/crypto/params/DHParameters;->l:I

    .line 67
    iput-object p6, p0, Lmyorg/bouncycastle/crypto/params/DHParameters;->j:Ljava/math/BigInteger;

    .line 68
    iput-object p7, p0, Lmyorg/bouncycastle/crypto/params/DHParameters;->validation:Lmyorg/bouncycastle/crypto/params/DHValidationParameters;

    .line 69
    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Lmyorg/bouncycastle/crypto/params/DHValidationParameters;)V
    .registers 14
    .parameter "p"
    .parameter "g"
    .parameter "q"
    .parameter "j"
    .parameter "validation"

    .prologue
    .line 46
    const/16 v4, 0xa0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lmyorg/bouncycastle/crypto/params/DHParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;IILjava/math/BigInteger;Lmyorg/bouncycastle/crypto/params/DHValidationParameters;)V

    .line 47
    return-void
.end method

.method private static getDefaultMParam(I)I
    .registers 2
    .parameter "lParam"

    .prologue
    const/16 v0, 0xa0

    .line 21
    if-nez p0, :cond_5

    .line 25
    .end local p0
    :goto_4
    return v0

    .restart local p0
    :cond_5
    if-ge p0, v0, :cond_9

    .end local p0
    :goto_7
    move v0, p0

    goto :goto_4

    .restart local p0
    :cond_9
    move p0, v0

    goto :goto_7
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter "obj"

    .prologue
    const/4 v1, 0x0

    .line 115
    instance-of v2, p1, Lmyorg/bouncycastle/crypto/params/DHParameters;

    if-nez v2, :cond_6

    .line 131
    :cond_5
    :goto_5
    return v1

    :cond_6
    move-object v0, p1

    .line 119
    check-cast v0, Lmyorg/bouncycastle/crypto/params/DHParameters;

    .line 121
    .local v0, pm:Lmyorg/bouncycastle/crypto/params/DHParameters;
    invoke-virtual {p0}, Lmyorg/bouncycastle/crypto/params/DHParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v2

    if-eqz v2, :cond_37

    .line 122
    invoke-virtual {p0}, Lmyorg/bouncycastle/crypto/params/DHParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0}, Lmyorg/bouncycastle/crypto/params/DHParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 131
    :cond_1d
    invoke-virtual {v0}, Lmyorg/bouncycastle/crypto/params/DHParameters;->getP()Ljava/math/BigInteger;

    move-result-object v2

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/params/DHParameters;->p:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v0}, Lmyorg/bouncycastle/crypto/params/DHParameters;->getG()Ljava/math/BigInteger;

    move-result-object v2

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/params/DHParameters;->g:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v1, 0x1

    goto :goto_5

    .line 126
    :cond_37
    invoke-virtual {v0}, Lmyorg/bouncycastle/crypto/params/DHParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v2

    if-eqz v2, :cond_1d

    goto :goto_5
.end method

.method public getG()Ljava/math/BigInteger;
    .registers 2

    .prologue
    .line 76
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/params/DHParameters;->g:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getL()I
    .registers 2

    .prologue
    .line 107
    iget v0, p0, Lmyorg/bouncycastle/crypto/params/DHParameters;->l:I

    return v0
.end method

.method public getM()I
    .registers 2

    .prologue
    .line 98
    iget v0, p0, Lmyorg/bouncycastle/crypto/params/DHParameters;->m:I

    return v0
.end method

.method public getP()Ljava/math/BigInteger;
    .registers 2

    .prologue
    .line 72
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/params/DHParameters;->p:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getQ()Ljava/math/BigInteger;
    .registers 2

    .prologue
    .line 80
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/params/DHParameters;->q:Ljava/math/BigInteger;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 135
    invoke-virtual {p0}, Lmyorg/bouncycastle/crypto/params/DHParameters;->getP()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lmyorg/bouncycastle/crypto/params/DHParameters;->getG()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    xor-int/2addr v1, v0

    invoke-virtual {p0}, Lmyorg/bouncycastle/crypto/params/DHParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v0

    if-eqz v0, :cond_21

    invoke-virtual {p0}, Lmyorg/bouncycastle/crypto/params/DHParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    :goto_1f
    xor-int/2addr v0, v1

    return v0

    :cond_21
    const/4 v0, 0x0

    goto :goto_1f
.end method
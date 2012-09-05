.class public abstract Lmyorg/bouncycastle/jce/provider/JDKAlgorithmParameters;
.super Ljava/security/AlgorithmParametersSpi;
.source "JDKAlgorithmParameters.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmyorg/bouncycastle/jce/provider/JDKAlgorithmParameters$PSS;,
        Lmyorg/bouncycastle/jce/provider/JDKAlgorithmParameters$OAEP;,
        Lmyorg/bouncycastle/jce/provider/JDKAlgorithmParameters$IES;,
        Lmyorg/bouncycastle/jce/provider/JDKAlgorithmParameters$ElGamal;,
        Lmyorg/bouncycastle/jce/provider/JDKAlgorithmParameters$GOST3410;,
        Lmyorg/bouncycastle/jce/provider/JDKAlgorithmParameters$DSA;,
        Lmyorg/bouncycastle/jce/provider/JDKAlgorithmParameters$DH;,
        Lmyorg/bouncycastle/jce/provider/JDKAlgorithmParameters$PKCS12PBE;,
        Lmyorg/bouncycastle/jce/provider/JDKAlgorithmParameters$PBKDF2;,
        Lmyorg/bouncycastle/jce/provider/JDKAlgorithmParameters$RC2AlgorithmParameters;,
        Lmyorg/bouncycastle/jce/provider/JDKAlgorithmParameters$IVAlgorithmParameters;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/security/AlgorithmParametersSpi;-><init>()V

    .line 887
    return-void
.end method


# virtual methods
.method protected engineGetParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;
    .registers 4
    .parameter "paramSpec"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidParameterSpecException;
        }
    .end annotation

    .prologue
    .line 52
    if-nez p1, :cond_a

    .line 53
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "argument to getParameterSpec must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_a
    invoke-virtual {p0, p1}, Lmyorg/bouncycastle/jce/provider/JDKAlgorithmParameters;->localEngineGetParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v0

    return-object v0
.end method

.method protected isASN1FormatString(Ljava/lang/String;)Z
    .registers 3
    .parameter "format"

    .prologue
    .line 47
    if-eqz p1, :cond_a

    const-string v0, "ASN.1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method protected abstract localEngineGetParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidParameterSpecException;
        }
    .end annotation
.end method

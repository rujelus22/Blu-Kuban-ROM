.class public Lmyorg/bouncycastle/crypto/params/DSAPublicKeyParameters;
.super Lmyorg/bouncycastle/crypto/params/DSAKeyParameters;
.source "DSAPublicKeyParameters.java"


# instance fields
.field private y:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Lmyorg/bouncycastle/crypto/params/DSAParameters;)V
    .registers 4
    .parameter "y"
    .parameter "params"

    .prologue
    .line 10
    const/4 v0, 0x0

    invoke-direct {p0, v0, p2}, Lmyorg/bouncycastle/crypto/params/DSAKeyParameters;-><init>(ZLmyorg/bouncycastle/crypto/params/DSAParameters;)V

    .line 12
    iput-object p1, p0, Lmyorg/bouncycastle/crypto/params/DSAPublicKeyParameters;->y:Ljava/math/BigInteger;

    .line 13
    return-void
.end method


# virtual methods
.method public getY()Ljava/math/BigInteger;
    .registers 2

    .prologue
    .line 16
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/params/DSAPublicKeyParameters;->y:Ljava/math/BigInteger;

    return-object v0
.end method
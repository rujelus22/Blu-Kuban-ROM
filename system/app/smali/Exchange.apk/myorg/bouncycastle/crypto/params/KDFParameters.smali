.class public Lmyorg/bouncycastle/crypto/params/KDFParameters;
.super Ljava/lang/Object;
.source "KDFParameters.java"

# interfaces
.implements Lmyorg/bouncycastle/crypto/DerivationParameters;


# instance fields
.field iv:[B

.field shared:[B


# direct methods
.method public constructor <init>([B[B)V
    .registers 3
    .parameter "shared"
    .parameter "iv"

    .prologue
    .line 13
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lmyorg/bouncycastle/crypto/params/KDFParameters;->shared:[B

    .line 15
    iput-object p2, p0, Lmyorg/bouncycastle/crypto/params/KDFParameters;->iv:[B

    .line 16
    return-void
.end method


# virtual methods
.method public getIV()[B
    .registers 2

    .prologue
    .line 23
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/params/KDFParameters;->iv:[B

    return-object v0
.end method

.method public getSharedSecret()[B
    .registers 2

    .prologue
    .line 19
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/params/KDFParameters;->shared:[B

    return-object v0
.end method
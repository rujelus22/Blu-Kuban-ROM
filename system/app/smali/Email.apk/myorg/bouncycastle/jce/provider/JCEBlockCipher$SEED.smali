.class public Lmyorg/bouncycastle/jce/provider/JCEBlockCipher$SEED;
.super Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;
.source "JCEBlockCipher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SEED"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 791
    new-instance v0, Lmyorg/bouncycastle/crypto/engines/SEEDEngine;

    invoke-direct {v0}, Lmyorg/bouncycastle/crypto/engines/SEEDEngine;-><init>()V

    invoke-direct {p0, v0}, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;-><init>(Lmyorg/bouncycastle/crypto/BlockCipher;)V

    .line 792
    return-void
.end method

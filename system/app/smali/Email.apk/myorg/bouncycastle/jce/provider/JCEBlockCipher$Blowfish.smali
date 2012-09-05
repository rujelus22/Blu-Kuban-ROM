.class public Lmyorg/bouncycastle/jce/provider/JCEBlockCipher$Blowfish;
.super Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;
.source "JCEBlockCipher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Blowfish"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 620
    new-instance v0, Lmyorg/bouncycastle/crypto/engines/BlowfishEngine;

    invoke-direct {v0}, Lmyorg/bouncycastle/crypto/engines/BlowfishEngine;-><init>()V

    invoke-direct {p0, v0}, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;-><init>(Lmyorg/bouncycastle/crypto/BlockCipher;)V

    .line 621
    return-void
.end method

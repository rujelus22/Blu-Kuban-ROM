.class public Lmyorg/bouncycastle/jce/provider/JCEMac$RC2;
.super Lmyorg/bouncycastle/jce/provider/JCEMac;
.source "JCEMac.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmyorg/bouncycastle/jce/provider/JCEMac;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RC2"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 150
    new-instance v0, Lmyorg/bouncycastle/crypto/macs/CBCBlockCipherMac;

    new-instance v1, Lmyorg/bouncycastle/crypto/engines/RC2Engine;

    invoke-direct {v1}, Lmyorg/bouncycastle/crypto/engines/RC2Engine;-><init>()V

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/crypto/macs/CBCBlockCipherMac;-><init>(Lmyorg/bouncycastle/crypto/BlockCipher;)V

    invoke-direct {p0, v0}, Lmyorg/bouncycastle/jce/provider/JCEMac;-><init>(Lmyorg/bouncycastle/crypto/Mac;)V

    .line 151
    return-void
.end method
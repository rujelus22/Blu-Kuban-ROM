.class public Lmyorg/bouncycastle/jce/spec/MQVPrivateKeySpec;
.super Ljava/lang/Object;
.source "MQVPrivateKeySpec.java"

# interfaces
.implements Ljava/security/spec/KeySpec;
.implements Lmyorg/bouncycastle/jce/interfaces/MQVPrivateKey;


# instance fields
.field private ephemeralPrivateKey:Ljava/security/PrivateKey;

.field private ephemeralPublicKey:Ljava/security/PublicKey;

.field private staticPrivateKey:Ljava/security/PrivateKey;


# virtual methods
.method public getAlgorithm()Ljava/lang/String;
    .registers 2

    .prologue
    .line 64
    const-string v0, "ECMQV"

    return-object v0
.end method

.method public getEncoded()[B
    .registers 2

    .prologue
    .line 78
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEphemeralPrivateKey()Ljava/security/PrivateKey;
    .registers 2

    .prologue
    .line 50
    iget-object v0, p0, Lmyorg/bouncycastle/jce/spec/MQVPrivateKeySpec;->ephemeralPrivateKey:Ljava/security/PrivateKey;

    return-object v0
.end method

.method public getEphemeralPublicKey()Ljava/security/PublicKey;
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, Lmyorg/bouncycastle/jce/spec/MQVPrivateKeySpec;->ephemeralPublicKey:Ljava/security/PublicKey;

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .registers 2

    .prologue
    .line 71
    const/4 v0, 0x0

    return-object v0
.end method

.method public getStaticPrivateKey()Ljava/security/PrivateKey;
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Lmyorg/bouncycastle/jce/spec/MQVPrivateKeySpec;->staticPrivateKey:Ljava/security/PrivateKey;

    return-object v0
.end method

.class public Lcom/android/org/bouncycastle/jce/provider/JCEMac;
.super Ljavax/crypto/MacSpi;
.source "JCEMac.java"

# interfaces
.implements Lcom/android/org/bouncycastle/jce/provider/PBE;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/bouncycastle/jce/provider/JCEMac$PBEWithSHA;,
        Lcom/android/org/bouncycastle/jce/provider/JCEMac$SHA512;,
        Lcom/android/org/bouncycastle/jce/provider/JCEMac$SHA384;,
        Lcom/android/org/bouncycastle/jce/provider/JCEMac$SHA256;,
        Lcom/android/org/bouncycastle/jce/provider/JCEMac$SHA1;,
        Lcom/android/org/bouncycastle/jce/provider/JCEMac$MD5;
    }
.end annotation


# instance fields
.field private keySize:I

.field private macEngine:Lcom/android/org/bouncycastle/crypto/Mac;

.field private pbeHash:I

.field private pbeType:I


# direct methods
.method protected constructor <init>(Lcom/android/org/bouncycastle/crypto/Mac;)V
    .registers 3
    .parameter "macEngine"

    .prologue
    .line 62
    invoke-direct {p0}, Ljavax/crypto/MacSpi;-><init>()V

    .line 56
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEMac;->pbeType:I

    .line 57
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEMac;->pbeHash:I

    .line 58
    const/16 v0, 0xa0

    iput v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEMac;->keySize:I

    .line 63
    iput-object p1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEMac;->macEngine:Lcom/android/org/bouncycastle/crypto/Mac;

    .line 64
    return-void
.end method

.method protected constructor <init>(Lcom/android/org/bouncycastle/crypto/Mac;III)V
    .registers 6
    .parameter "macEngine"
    .parameter "pbeType"
    .parameter "pbeHash"
    .parameter "keySize"

    .prologue
    .line 71
    invoke-direct {p0}, Ljavax/crypto/MacSpi;-><init>()V

    .line 56
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEMac;->pbeType:I

    .line 57
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEMac;->pbeHash:I

    .line 58
    const/16 v0, 0xa0

    iput v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEMac;->keySize:I

    .line 72
    iput-object p1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEMac;->macEngine:Lcom/android/org/bouncycastle/crypto/Mac;

    .line 73
    iput p2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEMac;->pbeType:I

    .line 74
    iput p3, p0, Lcom/android/org/bouncycastle/jce/provider/JCEMac;->pbeHash:I

    .line 75
    iput p4, p0, Lcom/android/org/bouncycastle/jce/provider/JCEMac;->keySize:I

    .line 76
    return-void
.end method


# virtual methods
.method protected engineDoFinal()[B
    .registers 4

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/JCEMac;->engineGetMacLength()I

    move-result v1

    new-array v0, v1, [B

    .line 151
    .local v0, out:[B
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEMac;->macEngine:Lcom/android/org/bouncycastle/crypto/Mac;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/android/org/bouncycastle/crypto/Mac;->doFinal([BI)I

    .line 153
    return-object v0
.end method

.method protected engineGetMacLength()I
    .registers 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEMac;->macEngine:Lcom/android/org/bouncycastle/crypto/Mac;

    invoke-interface {v0}, Lcom/android/org/bouncycastle/crypto/Mac;->getMacSize()I

    move-result v0

    return v0
.end method

.method protected engineInit(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    .registers 7
    .parameter "key"
    .parameter "params"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 85
    if-nez p1, :cond_a

    .line 87
    new-instance v2, Ljava/security/InvalidKeyException;

    const-string v3, "key is null"

    invoke-direct {v2, v3}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 90
    :cond_a
    instance-of v2, p1, Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;

    if-eqz v2, :cond_32

    move-object v0, p1

    .line 92
    check-cast v0, Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;

    .line 94
    .local v0, k:Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;->getParam()Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object v2

    if-eqz v2, :cond_21

    .line 96
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;->getParam()Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object v1

    .line 120
    .end local v0           #k:Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;
    .end local p2
    .local v1, param:Lcom/android/org/bouncycastle/crypto/CipherParameters;
    :goto_1b
    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEMac;->macEngine:Lcom/android/org/bouncycastle/crypto/Mac;

    invoke-interface {v2, v1}, Lcom/android/org/bouncycastle/crypto/Mac;->init(Lcom/android/org/bouncycastle/crypto/CipherParameters;)V

    .line 121
    return-void

    .line 98
    .end local v1           #param:Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .restart local v0       #k:Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;
    .restart local p2
    :cond_21
    instance-of v2, p2, Ljavax/crypto/spec/PBEParameterSpec;

    if-eqz v2, :cond_2a

    .line 100
    invoke-static {v0, p2}, Lcom/android/org/bouncycastle/jce/provider/PBE$Util;->makePBEMacParameters(Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;Ljava/security/spec/AlgorithmParameterSpec;)Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object v1

    .restart local v1       #param:Lcom/android/org/bouncycastle/crypto/CipherParameters;
    goto :goto_1b

    .line 104
    .end local v1           #param:Lcom/android/org/bouncycastle/crypto/CipherParameters;
    :cond_2a
    new-instance v2, Ljava/security/InvalidAlgorithmParameterException;

    const-string v3, "PBE requires PBE parameters to be set."

    invoke-direct {v2, v3}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 107
    .end local v0           #k:Lcom/android/org/bouncycastle/jce/provider/JCEPBEKey;
    :cond_32
    instance-of v2, p2, Ljavax/crypto/spec/IvParameterSpec;

    if-eqz v2, :cond_4b

    .line 109
    new-instance v1, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    new-instance v2, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    check-cast p2, Ljavax/crypto/spec/IvParameterSpec;

    .end local p2
    invoke-virtual {p2}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lcom/android/org/bouncycastle/crypto/CipherParameters;[B)V

    .restart local v1       #param:Lcom/android/org/bouncycastle/crypto/CipherParameters;
    goto :goto_1b

    .line 111
    .end local v1           #param:Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .restart local p2
    :cond_4b
    if-nez p2, :cond_57

    .line 113
    new-instance v1, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    .restart local v1       #param:Lcom/android/org/bouncycastle/crypto/CipherParameters;
    goto :goto_1b

    .line 117
    .end local v1           #param:Lcom/android/org/bouncycastle/crypto/CipherParameters;
    :cond_57
    new-instance v2, Ljava/security/InvalidAlgorithmParameterException;

    const-string v3, "unknown parameter type."

    invoke-direct {v2, v3}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected engineReset()V
    .registers 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEMac;->macEngine:Lcom/android/org/bouncycastle/crypto/Mac;

    invoke-interface {v0}, Lcom/android/org/bouncycastle/crypto/Mac;->reset()V

    .line 131
    return-void
.end method

.method protected engineUpdate(B)V
    .registers 3
    .parameter "input"

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEMac;->macEngine:Lcom/android/org/bouncycastle/crypto/Mac;

    invoke-interface {v0, p1}, Lcom/android/org/bouncycastle/crypto/Mac;->update(B)V

    .line 137
    return-void
.end method

.method protected engineUpdate([BII)V
    .registers 5
    .parameter "input"
    .parameter "offset"
    .parameter "len"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEMac;->macEngine:Lcom/android/org/bouncycastle/crypto/Mac;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/org/bouncycastle/crypto/Mac;->update([BII)V

    .line 145
    return-void
.end method

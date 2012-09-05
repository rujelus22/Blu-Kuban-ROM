.class public abstract Lmyorg/bouncycastle/jce/provider/WrapCipherSpi;
.super Ljavax/crypto/CipherSpi;
.source "WrapCipherSpi.java"

# interfaces
.implements Lmyorg/bouncycastle/jce/provider/PBE;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmyorg/bouncycastle/jce/provider/WrapCipherSpi$RFC3211DESedeWrap;,
        Lmyorg/bouncycastle/jce/provider/WrapCipherSpi$RC2Wrap;,
        Lmyorg/bouncycastle/jce/provider/WrapCipherSpi$DESEDEWrap;
    }
.end annotation


# instance fields
.field private availableSpecs:[Ljava/lang/Class;

.field protected engineParams:Ljava/security/AlgorithmParameters;

.field private iv:[B

.field private ivSize:I

.field protected pbeHash:I

.field protected pbeType:I

.field protected wrapEngine:Lmyorg/bouncycastle/crypto/Wrapper;


# direct methods
.method protected constructor <init>()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 67
    invoke-direct {p0}, Ljavax/crypto/CipherSpi;-><init>()V

    .line 50
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Ljavax/crypto/spec/IvParameterSpec;

    aput-object v2, v0, v1

    const-class v1, Ljavax/crypto/spec/PBEParameterSpec;

    aput-object v1, v0, v3

    const-class v1, Ljavax/crypto/spec/RC2ParameterSpec;

    aput-object v1, v0, v4

    const/4 v1, 0x3

    const-class v2, Ljavax/crypto/spec/RC5ParameterSpec;

    aput-object v2, v0, v1

    iput-object v0, p0, Lmyorg/bouncycastle/jce/provider/WrapCipherSpi;->availableSpecs:[Ljava/lang/Class;

    .line 55
    iput v4, p0, Lmyorg/bouncycastle/jce/provider/WrapCipherSpi;->pbeType:I

    .line 56
    iput v3, p0, Lmyorg/bouncycastle/jce/provider/WrapCipherSpi;->pbeHash:I

    .line 60
    iput-object v5, p0, Lmyorg/bouncycastle/jce/provider/WrapCipherSpi;->engineParams:Ljava/security/AlgorithmParameters;

    .line 62
    iput-object v5, p0, Lmyorg/bouncycastle/jce/provider/WrapCipherSpi;->wrapEngine:Lmyorg/bouncycastle/crypto/Wrapper;

    .line 68
    return-void
.end method

.method protected constructor <init>(Lmyorg/bouncycastle/crypto/Wrapper;)V
    .registers 3
    .parameter "wrapEngine"

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmyorg/bouncycastle/jce/provider/WrapCipherSpi;-><init>(Lmyorg/bouncycastle/crypto/Wrapper;I)V

    .line 72
    return-void
.end method

.method protected constructor <init>(Lmyorg/bouncycastle/crypto/Wrapper;I)V
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 74
    invoke-direct {p0}, Ljavax/crypto/CipherSpi;-><init>()V

    .line 50
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Ljavax/crypto/spec/IvParameterSpec;

    aput-object v2, v0, v1

    const-class v1, Ljavax/crypto/spec/PBEParameterSpec;

    aput-object v1, v0, v3

    const-class v1, Ljavax/crypto/spec/RC2ParameterSpec;

    aput-object v1, v0, v4

    const/4 v1, 0x3

    const-class v2, Ljavax/crypto/spec/RC5ParameterSpec;

    aput-object v2, v0, v1

    iput-object v0, p0, Lmyorg/bouncycastle/jce/provider/WrapCipherSpi;->availableSpecs:[Ljava/lang/Class;

    .line 55
    iput v4, p0, Lmyorg/bouncycastle/jce/provider/WrapCipherSpi;->pbeType:I

    .line 56
    iput v3, p0, Lmyorg/bouncycastle/jce/provider/WrapCipherSpi;->pbeHash:I

    .line 60
    iput-object v5, p0, Lmyorg/bouncycastle/jce/provider/WrapCipherSpi;->engineParams:Ljava/security/AlgorithmParameters;

    .line 62
    iput-object v5, p0, Lmyorg/bouncycastle/jce/provider/WrapCipherSpi;->wrapEngine:Lmyorg/bouncycastle/crypto/Wrapper;

    .line 75
    iput-object p1, p0, Lmyorg/bouncycastle/jce/provider/WrapCipherSpi;->wrapEngine:Lmyorg/bouncycastle/crypto/Wrapper;

    .line 76
    iput p2, p0, Lmyorg/bouncycastle/jce/provider/WrapCipherSpi;->ivSize:I

    .line 77
    return-void
.end method


# virtual methods
.method protected engineDoFinal([BII[BI)I
    .registers 7
    .parameter "input"
    .parameter "inputOffset"
    .parameter "inputLen"
    .parameter "output"
    .parameter "outputOffset"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .prologue
    .line 200
    const/4 v0, 0x0

    return v0
.end method

.method protected engineDoFinal([BII)[B
    .registers 5
    .parameter "input"
    .parameter "inputOffset"
    .parameter "inputLen"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .prologue
    .line 195
    const/4 v0, 0x0

    return-object v0
.end method

.method protected engineGetBlockSize()I
    .registers 2

    .prologue
    .line 80
    const/4 v0, 0x0

    return v0
.end method

.method protected engineGetIV()[B
    .registers 2

    .prologue
    .line 84
    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/WrapCipherSpi;->iv:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    return-object v0
.end method

.method protected engineGetKeySize(Ljava/security/Key;)I
    .registers 3
    .parameter "key"

    .prologue
    .line 88
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method protected engineGetOutputSize(I)I
    .registers 3
    .parameter "inputLen"

    .prologue
    .line 92
    const/4 v0, -0x1

    return v0
.end method

.method protected engineGetParameters()Ljava/security/AlgorithmParameters;
    .registers 2

    .prologue
    .line 96
    const/4 v0, 0x0

    return-object v0
.end method

.method protected engineInit(ILjava/security/Key;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V
    .registers 10
    .parameter "opmode"
    .parameter "key"
    .parameter "params"
    .parameter "random"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 154
    const/4 v1, 0x0

    .line 156
    .local v1, paramSpec:Ljava/security/spec/AlgorithmParameterSpec;
    if-eqz p3, :cond_34

    .line 157
    const/4 v0, 0x0

    .local v0, i:I
    :goto_4
    iget-object v2, p0, Lmyorg/bouncycastle/jce/provider/WrapCipherSpi;->availableSpecs:[Ljava/lang/Class;

    array-length v2, v2

    if-eq v0, v2, :cond_11

    .line 159
    :try_start_9
    iget-object v2, p0, Lmyorg/bouncycastle/jce/provider/WrapCipherSpi;->availableSpecs:[Ljava/lang/Class;

    aget-object v2, v2, v0

    invoke-virtual {p3, v2}, Ljava/security/AlgorithmParameters;->getParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_10} :catch_30

    move-result-object v1

    .line 166
    :cond_11
    if-nez v1, :cond_34

    .line 167
    new-instance v2, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "can\'t handle parameter "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p3}, Ljava/security/AlgorithmParameters;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 161
    :catch_30
    move-exception v2

    .line 157
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 172
    .end local v0           #i:I
    :cond_34
    iput-object p3, p0, Lmyorg/bouncycastle/jce/provider/WrapCipherSpi;->engineParams:Ljava/security/AlgorithmParameters;

    .line 173
    invoke-virtual {p0, p1, p2, v1, p4}, Lmyorg/bouncycastle/jce/provider/WrapCipherSpi;->engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    .line 174
    return-void
.end method

.method protected engineInit(ILjava/security/Key;Ljava/security/SecureRandom;)V
    .registers 7
    .parameter "opmode"
    .parameter "key"
    .parameter "random"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 178
    const/4 v1, 0x0

    :try_start_1
    check-cast v1, Ljava/security/spec/AlgorithmParameterSpec;

    invoke-virtual {p0, p1, p2, v1, p3}, Lmyorg/bouncycastle/jce/provider/WrapCipherSpi;->engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    :try_end_6
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1 .. :try_end_6} :catch_7

    .line 182
    return-void

    .line 179
    :catch_7
    move-exception v0

    .line 180
    .local v0, e:Ljava/security/InvalidAlgorithmParameterException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/security/InvalidAlgorithmParameterException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .registers 11
    .parameter "opmode"
    .parameter "key"
    .parameter "params"
    .parameter "random"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 111
    instance-of v4, p2, Lmyorg/bouncycastle/jce/provider/JCEPBEKey;

    if-eqz v4, :cond_5f

    move-object v1, p2

    .line 112
    check-cast v1, Lmyorg/bouncycastle/jce/provider/JCEPBEKey;

    .line 114
    .local v1, k:Lmyorg/bouncycastle/jce/provider/JCEPBEKey;
    instance-of v4, p3, Ljavax/crypto/spec/PBEParameterSpec;

    if-eqz v4, :cond_4c

    .line 115
    iget-object v4, p0, Lmyorg/bouncycastle/jce/provider/WrapCipherSpi;->wrapEngine:Lmyorg/bouncycastle/crypto/Wrapper;

    invoke-interface {v4}, Lmyorg/bouncycastle/crypto/Wrapper;->getAlgorithmName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, p3, v4}, Lmyorg/bouncycastle/jce/provider/PBE$Util;->makePBEParameters(Lmyorg/bouncycastle/jce/provider/JCEPBEKey;Ljava/security/spec/AlgorithmParameterSpec;Ljava/lang/String;)Lmyorg/bouncycastle/crypto/CipherParameters;

    move-result-object v2

    .line 126
    .end local v1           #k:Lmyorg/bouncycastle/jce/provider/JCEPBEKey;
    .local v2, param:Lmyorg/bouncycastle/crypto/CipherParameters;
    :goto_15
    instance-of v4, p3, Ljavax/crypto/spec/IvParameterSpec;

    if-eqz v4, :cond_26

    move-object v0, p3

    .line 127
    check-cast v0, Ljavax/crypto/spec/IvParameterSpec;

    .line 128
    .local v0, iv:Ljavax/crypto/spec/IvParameterSpec;
    new-instance v3, Lmyorg/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v0}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object v4

    invoke-direct {v3, v2, v4}, Lmyorg/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lmyorg/bouncycastle/crypto/CipherParameters;[B)V

    .end local v2           #param:Lmyorg/bouncycastle/crypto/CipherParameters;
    .local v3, param:Lmyorg/bouncycastle/crypto/CipherParameters;
    move-object v2, v3

    .line 131
    .end local v0           #iv:Ljavax/crypto/spec/IvParameterSpec;
    .end local v3           #param:Lmyorg/bouncycastle/crypto/CipherParameters;
    .restart local v2       #param:Lmyorg/bouncycastle/crypto/CipherParameters;
    :cond_26
    instance-of v4, v2, Lmyorg/bouncycastle/crypto/params/KeyParameter;

    if-eqz v4, :cond_41

    iget v4, p0, Lmyorg/bouncycastle/jce/provider/WrapCipherSpi;->ivSize:I

    if-eqz v4, :cond_41

    .line 132
    iget v4, p0, Lmyorg/bouncycastle/jce/provider/WrapCipherSpi;->ivSize:I

    new-array v4, v4, [B

    iput-object v4, p0, Lmyorg/bouncycastle/jce/provider/WrapCipherSpi;->iv:[B

    .line 133
    iget-object v4, p0, Lmyorg/bouncycastle/jce/provider/WrapCipherSpi;->iv:[B

    invoke-virtual {p4, v4}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 134
    new-instance v3, Lmyorg/bouncycastle/crypto/params/ParametersWithIV;

    iget-object v4, p0, Lmyorg/bouncycastle/jce/provider/WrapCipherSpi;->iv:[B

    invoke-direct {v3, v2, v4}, Lmyorg/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lmyorg/bouncycastle/crypto/CipherParameters;[B)V

    .end local v2           #param:Lmyorg/bouncycastle/crypto/CipherParameters;
    .restart local v3       #param:Lmyorg/bouncycastle/crypto/CipherParameters;
    move-object v2, v3

    .line 137
    .end local v3           #param:Lmyorg/bouncycastle/crypto/CipherParameters;
    .restart local v2       #param:Lmyorg/bouncycastle/crypto/CipherParameters;
    :cond_41
    packed-switch p1, :pswitch_data_80

    .line 148
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "eeek!"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 150
    :goto_4b
    return-void

    .line 116
    .end local v2           #param:Lmyorg/bouncycastle/crypto/CipherParameters;
    .restart local v1       #k:Lmyorg/bouncycastle/jce/provider/JCEPBEKey;
    :cond_4c
    invoke-virtual {v1}, Lmyorg/bouncycastle/jce/provider/JCEPBEKey;->getParam()Lmyorg/bouncycastle/crypto/CipherParameters;

    move-result-object v4

    if-eqz v4, :cond_57

    .line 117
    invoke-virtual {v1}, Lmyorg/bouncycastle/jce/provider/JCEPBEKey;->getParam()Lmyorg/bouncycastle/crypto/CipherParameters;

    move-result-object v2

    .restart local v2       #param:Lmyorg/bouncycastle/crypto/CipherParameters;
    goto :goto_15

    .line 119
    .end local v2           #param:Lmyorg/bouncycastle/crypto/CipherParameters;
    :cond_57
    new-instance v4, Ljava/security/InvalidAlgorithmParameterException;

    const-string v5, "PBE requires PBE parameters to be set."

    invoke-direct {v4, v5}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 123
    .end local v1           #k:Lmyorg/bouncycastle/jce/provider/JCEPBEKey;
    :cond_5f
    new-instance v2, Lmyorg/bouncycastle/crypto/params/KeyParameter;

    invoke-interface {p2}, Ljava/security/Key;->getEncoded()[B

    move-result-object v4

    invoke-direct {v2, v4}, Lmyorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    .restart local v2       #param:Lmyorg/bouncycastle/crypto/CipherParameters;
    goto :goto_15

    .line 139
    :pswitch_69
    iget-object v4, p0, Lmyorg/bouncycastle/jce/provider/WrapCipherSpi;->wrapEngine:Lmyorg/bouncycastle/crypto/Wrapper;

    const/4 v5, 0x1

    invoke-interface {v4, v5, v2}, Lmyorg/bouncycastle/crypto/Wrapper;->init(ZLmyorg/bouncycastle/crypto/CipherParameters;)V

    goto :goto_4b

    .line 142
    :pswitch_70
    iget-object v4, p0, Lmyorg/bouncycastle/jce/provider/WrapCipherSpi;->wrapEngine:Lmyorg/bouncycastle/crypto/Wrapper;

    const/4 v5, 0x0

    invoke-interface {v4, v5, v2}, Lmyorg/bouncycastle/crypto/Wrapper;->init(ZLmyorg/bouncycastle/crypto/CipherParameters;)V

    goto :goto_4b

    .line 146
    :pswitch_77
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "engine only valid for wrapping"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 137
    nop

    :pswitch_data_80
    .packed-switch 0x1
        :pswitch_77
        :pswitch_77
        :pswitch_69
        :pswitch_70
    .end packed-switch
.end method

.method protected engineSetMode(Ljava/lang/String;)V
    .registers 5
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 100
    new-instance v0, Ljava/security/NoSuchAlgorithmException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can\'t support mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineSetPadding(Ljava/lang/String;)V
    .registers 5
    .parameter "padding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    .prologue
    .line 104
    new-instance v0, Ljavax/crypto/NoSuchPaddingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Padding "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " unknown."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/crypto/NoSuchPaddingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineUnwrap([BLjava/lang/String;I)Ljava/security/Key;
    .registers 16
    .parameter "wrappedKey"
    .parameter "wrappedKeyAlgorithm"
    .parameter "wrappedKeyType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 225
    :try_start_0
    iget-object v9, p0, Lmyorg/bouncycastle/jce/provider/WrapCipherSpi;->wrapEngine:Lmyorg/bouncycastle/crypto/Wrapper;

    if-nez v9, :cond_13

    .line 226
    const/4 v9, 0x0

    array-length v10, p1

    invoke-virtual {p0, p1, v9, v10}, Lmyorg/bouncycastle/jce/provider/WrapCipherSpi;->engineDoFinal([BII)[B
    :try_end_9
    .catch Lmyorg/bouncycastle/crypto/InvalidCipherTextException; {:try_start_0 .. :try_end_9} :catch_1c
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_9} :catch_27
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_9} :catch_32

    move-result-object v3

    .line 238
    .local v3, encoded:[B
    :goto_a
    const/4 v9, 0x3

    if-ne p3, v9, :cond_3d

    .line 239
    new-instance v7, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v7, v3, p2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 280
    :goto_12
    return-object v7

    .line 228
    .end local v3           #encoded:[B
    :cond_13
    :try_start_13
    iget-object v9, p0, Lmyorg/bouncycastle/jce/provider/WrapCipherSpi;->wrapEngine:Lmyorg/bouncycastle/crypto/Wrapper;

    const/4 v10, 0x0

    array-length v11, p1

    invoke-interface {v9, p1, v10, v11}, Lmyorg/bouncycastle/crypto/Wrapper;->unwrap([BII)[B
    :try_end_1a
    .catch Lmyorg/bouncycastle/crypto/InvalidCipherTextException; {:try_start_13 .. :try_end_1a} :catch_1c
    .catch Ljavax/crypto/BadPaddingException; {:try_start_13 .. :try_end_1a} :catch_27
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_13 .. :try_end_1a} :catch_32

    move-result-object v3

    .restart local v3       #encoded:[B
    goto :goto_a

    .line 230
    .end local v3           #encoded:[B
    :catch_1c
    move-exception v1

    .line 231
    .local v1, e:Lmyorg/bouncycastle/crypto/InvalidCipherTextException;
    new-instance v9, Ljava/security/InvalidKeyException;

    invoke-virtual {v1}, Lmyorg/bouncycastle/crypto/InvalidCipherTextException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 232
    .end local v1           #e:Lmyorg/bouncycastle/crypto/InvalidCipherTextException;
    :catch_27
    move-exception v1

    .line 233
    .local v1, e:Ljavax/crypto/BadPaddingException;
    new-instance v9, Ljava/security/InvalidKeyException;

    invoke-virtual {v1}, Ljavax/crypto/BadPaddingException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 234
    .end local v1           #e:Ljavax/crypto/BadPaddingException;
    :catch_32
    move-exception v2

    .line 235
    .local v2, e2:Ljavax/crypto/IllegalBlockSizeException;
    new-instance v9, Ljava/security/InvalidKeyException;

    invoke-virtual {v2}, Ljavax/crypto/IllegalBlockSizeException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 240
    .end local v2           #e2:Ljavax/crypto/IllegalBlockSizeException;
    .restart local v3       #encoded:[B
    :cond_3d
    const-string v9, ""

    invoke-virtual {p2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b8

    const/4 v9, 0x2

    if-ne p3, v9, :cond_b8

    .line 245
    new-instance v0, Lmyorg/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v0, v3}, Lmyorg/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    .line 249
    .local v0, bIn:Lmyorg/bouncycastle/asn1/ASN1InputStream;
    :try_start_4d
    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v8

    check-cast v8, Lmyorg/bouncycastle/asn1/ASN1Sequence;

    .line 250
    .local v8, s:Lmyorg/bouncycastle/asn1/ASN1Sequence;
    new-instance v4, Lmyorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    invoke-direct {v4, v8}, Lmyorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;-><init>(Lmyorg/bouncycastle/asn1/ASN1Sequence;)V

    .line 252
    .local v4, in:Lmyorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    invoke-virtual {v4}, Lmyorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getAlgorithmId()Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v9

    invoke-virtual {v9}, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v6

    .line 254
    .local v6, oid:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;
    sget-object v9, Lmyorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->id_ecPublicKey:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v6, v9}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6e

    .line 255
    new-instance v7, Lmyorg/bouncycastle/jce/provider/JCEECPrivateKey;

    invoke-direct {v7, v4}, Lmyorg/bouncycastle/jce/provider/JCEECPrivateKey;-><init>(Lmyorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;)V

    .local v7, privKey:Ljava/security/PrivateKey;
    goto :goto_12

    .line 256
    .end local v7           #privKey:Ljava/security/PrivateKey;
    :cond_6e
    sget-object v9, Lmyorg/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3410_94:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v6, v9}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7c

    .line 257
    new-instance v7, Lmyorg/bouncycastle/jce/provider/JDKGOST3410PrivateKey;

    invoke-direct {v7, v4}, Lmyorg/bouncycastle/jce/provider/JDKGOST3410PrivateKey;-><init>(Lmyorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;)V

    .restart local v7       #privKey:Ljava/security/PrivateKey;
    goto :goto_12

    .line 258
    .end local v7           #privKey:Ljava/security/PrivateKey;
    :cond_7c
    sget-object v9, Lmyorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->id_dsa:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v6, v9}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8a

    .line 259
    new-instance v7, Lmyorg/bouncycastle/jce/provider/JDKDSAPrivateKey;

    invoke-direct {v7, v4}, Lmyorg/bouncycastle/jce/provider/JDKDSAPrivateKey;-><init>(Lmyorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;)V

    .restart local v7       #privKey:Ljava/security/PrivateKey;
    goto :goto_12

    .line 260
    .end local v7           #privKey:Ljava/security/PrivateKey;
    :cond_8a
    sget-object v9, Lmyorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->dhKeyAgreement:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v6, v9}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_99

    .line 261
    new-instance v7, Lmyorg/bouncycastle/jce/provider/JCEDHPrivateKey;

    invoke-direct {v7, v4}, Lmyorg/bouncycastle/jce/provider/JCEDHPrivateKey;-><init>(Lmyorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;)V

    .restart local v7       #privKey:Ljava/security/PrivateKey;
    goto/16 :goto_12

    .line 262
    .end local v7           #privKey:Ljava/security/PrivateKey;
    :cond_99
    sget-object v9, Lmyorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->dhpublicnumber:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v6, v9}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a8

    .line 263
    new-instance v7, Lmyorg/bouncycastle/jce/provider/JCEDHPrivateKey;

    invoke-direct {v7, v4}, Lmyorg/bouncycastle/jce/provider/JCEDHPrivateKey;-><init>(Lmyorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;)V

    .restart local v7       #privKey:Ljava/security/PrivateKey;
    goto/16 :goto_12

    .line 266
    .end local v7           #privKey:Ljava/security/PrivateKey;
    :cond_a8
    new-instance v7, Lmyorg/bouncycastle/jce/provider/JCERSAPrivateCrtKey;

    invoke-direct {v7, v4}, Lmyorg/bouncycastle/jce/provider/JCERSAPrivateCrtKey;-><init>(Lmyorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;)V
    :try_end_ad
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_ad} :catch_af

    .restart local v7       #privKey:Ljava/security/PrivateKey;
    goto/16 :goto_12

    .line 268
    .end local v4           #in:Lmyorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    .end local v6           #oid:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;
    .end local v7           #privKey:Ljava/security/PrivateKey;
    .end local v8           #s:Lmyorg/bouncycastle/asn1/ASN1Sequence;
    :catch_af
    move-exception v1

    .line 269
    .local v1, e:Ljava/lang/Exception;
    new-instance v9, Ljava/security/InvalidKeyException;

    const-string v10, "Invalid key encoding."

    invoke-direct {v9, v10}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 275
    .end local v0           #bIn:Lmyorg/bouncycastle/asn1/ASN1InputStream;
    .end local v1           #e:Ljava/lang/Exception;
    :cond_b8
    :try_start_b8
    const-string v9, "myBC"

    invoke-static {p2, v9}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v5

    .line 277
    .local v5, kf:Ljava/security/KeyFactory;
    const/4 v9, 0x1

    if-ne p3, v9, :cond_cc

    .line 278
    new-instance v9, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v9, v3}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v5, v9}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v7

    goto/16 :goto_12

    .line 279
    :cond_cc
    const/4 v9, 0x2

    if-ne p3, v9, :cond_134

    .line 280
    new-instance v9, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v9, v3}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    invoke-virtual {v5, v9}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;
    :try_end_d7
    .catch Ljava/security/NoSuchProviderException; {:try_start_b8 .. :try_end_d7} :catch_da
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_b8 .. :try_end_d7} :catch_f8
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_b8 .. :try_end_d7} :catch_116

    move-result-object v7

    goto/16 :goto_12

    .line 282
    .end local v5           #kf:Ljava/security/KeyFactory;
    :catch_da
    move-exception v1

    .line 283
    .local v1, e:Ljava/security/NoSuchProviderException;
    new-instance v9, Ljava/security/InvalidKeyException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unknown key type "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Ljava/security/NoSuchProviderException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 284
    .end local v1           #e:Ljava/security/NoSuchProviderException;
    :catch_f8
    move-exception v1

    .line 285
    .local v1, e:Ljava/security/NoSuchAlgorithmException;
    new-instance v9, Ljava/security/InvalidKeyException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unknown key type "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 286
    .end local v1           #e:Ljava/security/NoSuchAlgorithmException;
    :catch_116
    move-exception v2

    .line 287
    .local v2, e2:Ljava/security/spec/InvalidKeySpecException;
    new-instance v9, Ljava/security/InvalidKeyException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unknown key type "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/security/spec/InvalidKeySpecException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 290
    .end local v2           #e2:Ljava/security/spec/InvalidKeySpecException;
    .restart local v5       #kf:Ljava/security/KeyFactory;
    :cond_134
    new-instance v9, Ljava/security/InvalidKeyException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unknown key type "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v9
.end method

.method protected engineUpdate([BII[BI)I
    .registers 8
    .parameter "input"
    .parameter "inputOffset"
    .parameter "inputLen"
    .parameter "output"
    .parameter "outputOffset"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation

    .prologue
    .line 190
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "not supported for wrapping"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineUpdate([BII)[B
    .registers 6
    .parameter "input"
    .parameter "inputOffset"
    .parameter "inputLen"

    .prologue
    .line 185
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "not supported for wrapping"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineWrap(Ljava/security/Key;)[B
    .registers 7
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 205
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v1

    .line 206
    .local v1, encoded:[B
    if-nez v1, :cond_e

    .line 207
    new-instance v2, Ljava/security/InvalidKeyException;

    const-string v3, "Cannot wrap key, null encoding."

    invoke-direct {v2, v3}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 211
    :cond_e
    :try_start_e
    iget-object v2, p0, Lmyorg/bouncycastle/jce/provider/WrapCipherSpi;->wrapEngine:Lmyorg/bouncycastle/crypto/Wrapper;

    if-nez v2, :cond_19

    .line 212
    const/4 v2, 0x0

    array-length v3, v1

    invoke-virtual {p0, v1, v2, v3}, Lmyorg/bouncycastle/jce/provider/WrapCipherSpi;->engineDoFinal([BII)[B

    move-result-object v2

    .line 214
    :goto_18
    return-object v2

    :cond_19
    iget-object v2, p0, Lmyorg/bouncycastle/jce/provider/WrapCipherSpi;->wrapEngine:Lmyorg/bouncycastle/crypto/Wrapper;

    const/4 v3, 0x0

    array-length v4, v1

    invoke-interface {v2, v1, v3, v4}, Lmyorg/bouncycastle/crypto/Wrapper;->wrap([BII)[B
    :try_end_20
    .catch Ljavax/crypto/BadPaddingException; {:try_start_e .. :try_end_20} :catch_22

    move-result-object v2

    goto :goto_18

    .line 216
    :catch_22
    move-exception v0

    .line 217
    .local v0, e:Ljavax/crypto/BadPaddingException;
    new-instance v2, Ljavax/crypto/IllegalBlockSizeException;

    invoke-virtual {v0}, Ljavax/crypto/BadPaddingException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/crypto/IllegalBlockSizeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

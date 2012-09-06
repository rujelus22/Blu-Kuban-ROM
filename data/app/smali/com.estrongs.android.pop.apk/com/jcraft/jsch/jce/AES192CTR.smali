.class public Lcom/jcraft/jsch/jce/AES192CTR;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/jcraft/jsch/Cipher;


# instance fields
.field private a:Ljavax/crypto/Cipher;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    const/16 v0, 0x10

    return v0
.end method

.method public a(I[B[B)V
    .registers 9

    const/16 v4, 0x18

    const/16 v2, 0x10

    const/4 v3, 0x0

    const-string v1, "NoPadding"

    array-length v0, p3

    if-le v0, v2, :cond_11

    new-array v0, v2, [B

    array-length v2, v0

    invoke-static {p3, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p3, v0

    :cond_11
    array-length v0, p2

    if-le v0, v4, :cond_1b

    new-array v0, v4, [B

    array-length v2, v0

    invoke-static {p2, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p2, v0

    :cond_1b
    :try_start_1b
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v0, "AES"

    invoke-direct {v2, p2, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AES/CTR/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/jce/AES192CTR;->a:Ljavax/crypto/Cipher;

    iget-object v1, p0, Lcom/jcraft/jsch/jce/AES192CTR;->a:Ljavax/crypto/Cipher;

    if-nez p1, :cond_49

    const/4 v0, 0x1

    :goto_40
    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v3, p3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v1, v0, v2, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_48} :catch_4b

    return-void

    :cond_49
    const/4 v0, 0x2

    goto :goto_40

    :catch_4b
    move-exception v0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/jcraft/jsch/jce/AES192CTR;->a:Ljavax/crypto/Cipher;

    throw v0
.end method

.method public a([BII[BI)V
    .registers 12

    iget-object v0, p0, Lcom/jcraft/jsch/jce/AES192CTR;->a:Ljavax/crypto/Cipher;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Ljavax/crypto/Cipher;->update([BII[BI)I

    return-void
.end method

.method public b()I
    .registers 2

    const/16 v0, 0x18

    return v0
.end method

.method public c()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

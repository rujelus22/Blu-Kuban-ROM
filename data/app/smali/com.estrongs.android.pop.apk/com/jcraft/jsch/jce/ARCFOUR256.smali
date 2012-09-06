.class public Lcom/jcraft/jsch/jce/ARCFOUR256;
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

    const/16 v0, 0x8

    return v0
.end method

.method public a(I[B[B)V
    .registers 11

    const/16 v3, 0x20

    const/4 v1, 0x1

    const/4 v0, 0x0

    array-length v2, p2

    if-le v2, v3, :cond_e

    new-array v2, v3, [B

    array-length v3, v2

    invoke-static {p2, v0, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p2, v2

    :cond_e
    :try_start_e
    const-string v2, "RC4"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    iput-object v2, p0, Lcom/jcraft/jsch/jce/ARCFOUR256;->a:Ljavax/crypto/Cipher;

    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "RC4"

    invoke-direct {v2, p2, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    iget-object v3, p0, Lcom/jcraft/jsch/jce/ARCFOUR256;->a:Ljavax/crypto/Cipher;

    if-nez p1, :cond_39

    :goto_21
    invoke-virtual {v3, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    const/4 v1, 0x1

    new-array v1, v1, [B

    move v6, v0

    :goto_28
    const/16 v0, 0x600

    if-ge v6, v0, :cond_40

    iget-object v0, p0, Lcom/jcraft/jsch/jce/ARCFOUR256;->a:Ljavax/crypto/Cipher;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v5, 0x0

    move-object v4, v1

    invoke-virtual/range {v0 .. v5}, Ljavax/crypto/Cipher;->update([BII[BI)I
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_35} :catch_3b

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_28

    :cond_39
    const/4 v1, 0x2

    goto :goto_21

    :catch_3b
    move-exception v0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/jcraft/jsch/jce/ARCFOUR256;->a:Ljavax/crypto/Cipher;

    throw v0

    :cond_40
    return-void
.end method

.method public a([BII[BI)V
    .registers 12

    iget-object v0, p0, Lcom/jcraft/jsch/jce/ARCFOUR256;->a:Ljavax/crypto/Cipher;

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

    const/16 v0, 0x20

    return v0
.end method

.method public c()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

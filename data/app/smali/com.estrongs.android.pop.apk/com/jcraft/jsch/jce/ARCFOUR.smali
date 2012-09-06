.class public Lcom/jcraft/jsch/jce/ARCFOUR;
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
    .registers 7

    const/16 v1, 0x10

    const/4 v2, 0x0

    const-string v0, "NoPadding"

    array-length v0, p2

    if-le v0, v1, :cond_f

    new-array v0, v1, [B

    array-length v1, v0

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p2, v0

    :cond_f
    :try_start_f
    const-string v0, "RC4"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/jce/ARCFOUR;->a:Ljavax/crypto/Cipher;

    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v0, "RC4"

    invoke-direct {v1, p2, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    iget-object v2, p0, Lcom/jcraft/jsch/jce/ARCFOUR;->a:Ljavax/crypto/Cipher;

    if-nez p1, :cond_27

    const/4 v0, 0x1

    :goto_23
    invoke-virtual {v2, v0, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_26} :catch_29

    return-void

    :cond_27
    const/4 v0, 0x2

    goto :goto_23

    :catch_29
    move-exception v0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/jcraft/jsch/jce/ARCFOUR;->a:Ljavax/crypto/Cipher;

    throw v0
.end method

.method public a([BII[BI)V
    .registers 12

    iget-object v0, p0, Lcom/jcraft/jsch/jce/ARCFOUR;->a:Ljavax/crypto/Cipher;

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

    const/16 v0, 0x10

    return v0
.end method

.method public c()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

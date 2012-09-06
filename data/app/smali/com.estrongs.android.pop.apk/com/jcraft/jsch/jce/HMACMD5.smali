.class public Lcom/jcraft/jsch/jce/HMACMD5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/jcraft/jsch/MAC;


# instance fields
.field private a:Ljavax/crypto/Mac;

.field private final b:[B


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/jcraft/jsch/jce/HMACMD5;->b:[B

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    const/16 v0, 0x10

    return v0
.end method

.method public a(I)V
    .registers 6

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/jcraft/jsch/jce/HMACMD5;->b:[B

    ushr-int/lit8 v1, p1, 0x18

    int-to-byte v1, v1

    aput-byte v1, v0, v3

    iget-object v0, p0, Lcom/jcraft/jsch/jce/HMACMD5;->b:[B

    const/4 v1, 0x1

    ushr-int/lit8 v2, p1, 0x10

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/jcraft/jsch/jce/HMACMD5;->b:[B

    const/4 v1, 0x2

    ushr-int/lit8 v2, p1, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/jcraft/jsch/jce/HMACMD5;->b:[B

    const/4 v1, 0x3

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/jcraft/jsch/jce/HMACMD5;->b:[B

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v3, v1}, Lcom/jcraft/jsch/jce/HMACMD5;->a([BII)V

    return-void
.end method

.method public a([B)V
    .registers 5

    const/4 v2, 0x0

    const/16 v1, 0x10

    array-length v0, p1

    if-le v0, v1, :cond_c

    new-array v0, v1, [B

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p1, v0

    :cond_c
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "HmacMD5"

    invoke-direct {v0, p1, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const-string v1, "HmacMD5"

    invoke-static {v1}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v1

    iput-object v1, p0, Lcom/jcraft/jsch/jce/HMACMD5;->a:Ljavax/crypto/Mac;

    iget-object v1, p0, Lcom/jcraft/jsch/jce/HMACMD5;->a:Ljavax/crypto/Mac;

    invoke-virtual {v1, v0}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    return-void
.end method

.method public a([BI)V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/jce/HMACMD5;->a:Ljavax/crypto/Mac;

    invoke-virtual {v0, p1, p2}, Ljavax/crypto/Mac;->doFinal([BI)V
    :try_end_5
    .catch Ljavax/crypto/ShortBufferException; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public a([BII)V
    .registers 5

    iget-object v0, p0, Lcom/jcraft/jsch/jce/HMACMD5;->a:Ljavax/crypto/Mac;

    invoke-virtual {v0, p1, p2, p3}, Ljavax/crypto/Mac;->update([BII)V

    return-void
.end method

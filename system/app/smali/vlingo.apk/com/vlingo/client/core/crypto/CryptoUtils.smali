.class public Lcom/vlingo/client/core/crypto/CryptoUtils;
.super Ljava/lang/Object;
.source "CryptoUtils.java"


# static fields
.field public static final HASH_TYPE_DEFAULT:I = 0x2

.field public static final HASH_TYPE_MD5:I = 0x1

.field public static final HASH_TYPE_NONE:I = 0x0

.field public static final HASH_TYPE_SHA256:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getHash(Ljava/lang/String;I)Ljava/lang/String;
    .registers 4
    .parameter "input"
    .parameter "hashType"

    .prologue
    .line 29
    const/4 v0, 0x0

    .line 31
    .local v0, func:Lcom/vlingo/client/core/crypto/HashFunction;
    const/4 v1, 0x1

    if-ne p1, v1, :cond_c

    .line 32
    new-instance v0, Lcom/vlingo/client/core/crypto/MD5;

    .end local v0           #func:Lcom/vlingo/client/core/crypto/HashFunction;
    invoke-direct {v0}, Lcom/vlingo/client/core/crypto/MD5;-><init>()V

    .line 37
    .restart local v0       #func:Lcom/vlingo/client/core/crypto/HashFunction;
    :cond_9
    :goto_9
    if-nez v0, :cond_15

    .line 39
    .end local p0
    :goto_b
    return-object p0

    .line 34
    .restart local p0
    :cond_c
    const/4 v1, 0x2

    if-ne p1, v1, :cond_9

    .line 35
    new-instance v0, Lcom/vlingo/client/core/crypto/SHA256;

    .end local v0           #func:Lcom/vlingo/client/core/crypto/HashFunction;
    invoke-direct {v0}, Lcom/vlingo/client/core/crypto/SHA256;-><init>()V

    .restart local v0       #func:Lcom/vlingo/client/core/crypto/HashFunction;
    goto :goto_9

    .line 39
    :cond_15
    invoke-interface {v0, p0}, Lcom/vlingo/client/core/crypto/HashFunction;->hash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_b
.end method

.method public static getMD5(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "input"

    .prologue
    .line 21
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/vlingo/client/core/crypto/CryptoUtils;->getHash(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSHA256(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "input"

    .prologue
    .line 25
    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/vlingo/client/core/crypto/CryptoUtils;->getHash(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

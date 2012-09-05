.class public Lcom/sprint/w/installer/util/aes/AESEncryptor;
.super Ljava/lang/Object;
.source "AESEncryptor.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method

.method public static decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "key"
    .parameter "aString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 46
    const/4 v1, 0x0

    .line 48
    .local v1, decryptedString:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x20

    if-ne v3, v4, :cond_1f

    .line 49
    new-instance v0, Lcom/sprint/w/installer/util/aes/AES;

    const/16 v3, 0x8

    invoke-direct {v0, v3}, Lcom/sprint/w/installer/util/aes/AES;-><init>(I)V

    .line 50
    .local v0, aes:Lcom/sprint/w/installer/util/aes/AES;
    invoke-static {p0}, Lcom/sprint/w/installer/util/aes/AESEncryptor;->getBitString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 51
    .local v2, genKey:Ljava/lang/String;
    const/16 v3, 0x100

    invoke-virtual {v0, p1, v2, v3}, Lcom/sprint/w/installer/util/aes/AES;->decrypt(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 55
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 53
    .end local v0           #aes:Lcom/sprint/w/installer/util/aes/AES;
    .end local v2           #genKey:Ljava/lang/String;
    :cond_1f
    new-instance v3, Ljava/lang/Exception;

    const-string v4, "Encryption key must be exactly 32 bytes long."

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "key"
    .parameter "aString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 65
    const/4 v1, 0x0

    .line 67
    .local v1, encryptedString:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x20

    if-ne v3, v4, :cond_1b

    .line 68
    new-instance v0, Lcom/sprint/w/installer/util/aes/AES;

    const/16 v3, 0x8

    invoke-direct {v0, v3}, Lcom/sprint/w/installer/util/aes/AES;-><init>(I)V

    .line 69
    .local v0, aes:Lcom/sprint/w/installer/util/aes/AES;
    invoke-static {p0}, Lcom/sprint/w/installer/util/aes/AESEncryptor;->getBitString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 70
    .local v2, genKey:Ljava/lang/String;
    const/16 v3, 0x100

    invoke-virtual {v0, p1, v2, v3}, Lcom/sprint/w/installer/util/aes/AES;->encrypt(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 74
    return-object v1

    .line 72
    .end local v0           #aes:Lcom/sprint/w/installer/util/aes/AES;
    .end local v2           #genKey:Ljava/lang/String;
    :cond_1b
    new-instance v3, Ljava/security/InvalidKeyException;

    const-string v4, "Encryption key must be exactly 32 bytes long."

    invoke-direct {v3, v4}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static getBitString(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .parameter "key"

    .prologue
    .line 22
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-direct {v2, v6}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 24
    .local v2, digits:Ljava/lang/StringBuffer;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_a
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v3, v6, :cond_2f

    .line 25
    const/16 v1, 0x8

    .line 26
    .local v1, currPos:I
    const/4 v4, 0x0

    .local v4, j:I
    :goto_13
    const/16 v6, 0x8

    if-ge v4, v6, :cond_2c

    .line 27
    rem-int/lit8 v5, v1, 0x8

    .line 28
    .local v5, pos:I
    if-eqz v5, :cond_1d

    .line 29
    rsub-int/lit8 v5, v5, 0x8

    .line 30
    :cond_1d
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    shr-int/2addr v6, v5

    and-int/lit8 v0, v6, 0x1

    .line 31
    .local v0, bit:I
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 32
    add-int/lit8 v1, v1, -0x1

    .line 26
    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    .line 24
    .end local v0           #bit:I
    .end local v5           #pos:I
    :cond_2c
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 36
    .end local v1           #currPos:I
    .end local v4           #j:I
    :cond_2f
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

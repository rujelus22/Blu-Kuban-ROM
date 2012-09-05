.class public Lcom/syncmldstmo/database/smlDbAESCrypt;
.super Ljava/lang/Object;
.source "smlDbAESCrypt.java"

# interfaces
.implements Lcom/syncmldstmo/base/smlDef;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static smlEncryptor(Ljava/lang/String;)[B
    .registers 5
    .parameter "szEncryptText"

    .prologue
    .line 19
    const/4 v1, 0x0

    .line 23
    .local v1, encryptionResult:[B
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/syncmldstmo/database/smlDbAESCrypt;->smlGetCryptionResult([BI)[B
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_9} :catch_b

    move-result-object v1

    .line 30
    :goto_a
    return-object v1

    .line 25
    :catch_b
    move-exception v0

    .line 27
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    goto :goto_a
.end method

.method private static smlGetCryptionResult([BI)[B
    .registers 9
    .parameter "cryptionData"
    .parameter "nCryptionMode"

    .prologue
    .line 51
    const/4 v0, 0x0

    .line 52
    .local v0, cryptResult:[B
    const/4 v4, 0x0

    .line 53
    .local v4, mSecretKeySpec:Ljavax/crypto/spec/SecretKeySpec;
    const/4 v3, 0x0

    .line 54
    .local v3, mCipher:Ljavax/crypto/Cipher;
    const/4 v1, 0x0

    .line 58
    .local v1, cryptionKey:[B
    :try_start_4
    const-string v6, "syncml7790010123"

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 60
    new-instance v5, Ljavax/crypto/spec/SecretKeySpec;

    const-string v6, "AES"

    invoke-direct {v5, v1, v6}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_11} :catch_20

    .line 61
    .end local v4           #mSecretKeySpec:Ljavax/crypto/spec/SecretKeySpec;
    .local v5, mSecretKeySpec:Ljavax/crypto/spec/SecretKeySpec;
    :try_start_11
    const-string v6, "AES"

    invoke-static {v6}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    .line 62
    invoke-virtual {v3, p1, v5}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 63
    invoke-virtual {v3, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_1d} :catch_29

    move-result-object v0

    move-object v4, v5

    .line 70
    .end local v5           #mSecretKeySpec:Ljavax/crypto/spec/SecretKeySpec;
    .restart local v4       #mSecretKeySpec:Ljavax/crypto/spec/SecretKeySpec;
    :goto_1f
    return-object v0

    .line 65
    :catch_20
    move-exception v2

    .line 67
    .local v2, e:Ljava/lang/Exception;
    :goto_21
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    goto :goto_1f

    .line 65
    .end local v2           #e:Ljava/lang/Exception;
    .end local v4           #mSecretKeySpec:Ljavax/crypto/spec/SecretKeySpec;
    .restart local v5       #mSecretKeySpec:Ljavax/crypto/spec/SecretKeySpec;
    :catch_29
    move-exception v2

    move-object v4, v5

    .end local v5           #mSecretKeySpec:Ljavax/crypto/spec/SecretKeySpec;
    .restart local v4       #mSecretKeySpec:Ljavax/crypto/spec/SecretKeySpec;
    goto :goto_21
.end method

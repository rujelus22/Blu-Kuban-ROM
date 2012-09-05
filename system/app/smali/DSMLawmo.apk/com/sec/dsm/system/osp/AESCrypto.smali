.class public Lcom/sec/dsm/system/osp/AESCrypto;
.super Ljava/lang/Object;
.source "AESCrypto.java"


# static fields
.field private static final iv:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 26
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/sec/dsm/system/osp/AESCrypto;->iv:[B

    return-void

    :array_a
    .array-data 0x1
        0x3et
        0xb5t
        0x1t
        0x45t
        0xe4t
        0xf8t
        0x75t
        0x3ft
        0x8t
        0x9dt
        0x9ft
        0x57t
        0x3bt
        0x63t
        0xeft
        0x4bt
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decryptAES(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 12
    .parameter "key"
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 40
    const/4 v6, 0x0

    .line 43
    .local v6, result:Ljava/lang/String;
    :try_start_1
    const-string v8, "AESCrypto"

    const-string v9, "decryptAES begin"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    const-string v8, "UTF-8"

    invoke-virtual {p1, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    invoke-static {v8}, Lcom/sec/dsm/system/osp/Base64;->decode([B)[B

    move-result-object v2

    .line 47
    .local v2, inp:[B
    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    const-string v8, "UTF-8"

    invoke-virtual {p0, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    const-string v9, "AES/CBC/PKCS5Padding"

    invoke-direct {v4, v8, v9}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 48
    .local v4, keySpec:Ljavax/crypto/spec/SecretKeySpec;
    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    sget-object v8, Lcom/sec/dsm/system/osp/AESCrypto;->iv:[B

    invoke-direct {v3, v8}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 50
    .local v3, ivParam:Ljavax/crypto/spec/IvParameterSpec;
    const-string v8, "AES/CBC/PKCS5Padding"

    invoke-static {v8}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 51
    .local v0, cipher:Ljavax/crypto/Cipher;
    const/4 v8, 0x2

    invoke-virtual {v0, v8, v4, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 52
    invoke-virtual {v0, v2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v5

    .line 54
    .local v5, output:[B
    new-instance v7, Ljava/lang/String;

    const-string v8, "UTF-8"

    invoke-direct {v7, v5, v8}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_3b} :catch_43

    .line 56
    .end local v6           #result:Ljava/lang/String;
    .local v7, result:Ljava/lang/String;
    :try_start_3b
    const-string v8, "AESCrypto"

    const-string v9, "decryptAES end"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_42} :catch_48

    .line 62
    return-object v7

    .line 57
    .end local v0           #cipher:Ljavax/crypto/Cipher;
    .end local v2           #inp:[B
    .end local v3           #ivParam:Ljavax/crypto/spec/IvParameterSpec;
    .end local v4           #keySpec:Ljavax/crypto/spec/SecretKeySpec;
    .end local v5           #output:[B
    .end local v7           #result:Ljava/lang/String;
    .restart local v6       #result:Ljava/lang/String;
    :catch_43
    move-exception v1

    .line 58
    .local v1, e:Ljava/lang/Exception;
    :goto_44
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 59
    throw v1

    .line 57
    .end local v1           #e:Ljava/lang/Exception;
    .end local v6           #result:Ljava/lang/String;
    .restart local v0       #cipher:Ljavax/crypto/Cipher;
    .restart local v2       #inp:[B
    .restart local v3       #ivParam:Ljavax/crypto/spec/IvParameterSpec;
    .restart local v4       #keySpec:Ljavax/crypto/spec/SecretKeySpec;
    .restart local v5       #output:[B
    .restart local v7       #result:Ljava/lang/String;
    :catch_48
    move-exception v1

    move-object v6, v7

    .end local v7           #result:Ljava/lang/String;
    .restart local v6       #result:Ljava/lang/String;
    goto :goto_44
.end method

.method public static generateContentKey(Landroid/content/Context;)Ljava/lang/String;
    .registers 10
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 105
    const/4 v3, 0x0

    .line 108
    .local v3, result:Ljava/lang/String;
    :try_start_1
    const-string v4, "CONTENT_ENCRYPT_KEY_SEED_TEXT"

    .line 109
    .local v4, seedText:Ljava/lang/String;
    const-string v7, "phone"

    invoke-virtual {p0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    .line 112
    .local v5, telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v6

    .line 114
    .local v6, uniqueKey:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 116
    .local v2, key:Ljava/lang/String;
    const-string v7, "MD5"

    invoke-static {v7}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 117
    .local v0, MD5:Ljava/security/MessageDigest;
    const-string v7, "UTF-8"

    invoke-virtual {v2, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/security/MessageDigest;->update([B)V

    .line 119
    new-instance v3, Ljava/lang/String;

    .end local v3           #result:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v7

    invoke-static {v7}, Lcom/sec/dsm/system/osp/Base64;->encode([B)[B

    move-result-object v7

    const-string v8, "UTF-8"

    invoke-direct {v3, v7, v8}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_3e} :catch_3f

    .line 125
    .restart local v3       #result:Ljava/lang/String;
    return-object v3

    .line 120
    .end local v0           #MD5:Ljava/security/MessageDigest;
    .end local v2           #key:Ljava/lang/String;
    .end local v3           #result:Ljava/lang/String;
    .end local v4           #seedText:Ljava/lang/String;
    .end local v5           #telephonyManager:Landroid/telephony/TelephonyManager;
    .end local v6           #uniqueKey:Ljava/lang/String;
    :catch_3f
    move-exception v1

    .line 121
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 122
    throw v1
.end method

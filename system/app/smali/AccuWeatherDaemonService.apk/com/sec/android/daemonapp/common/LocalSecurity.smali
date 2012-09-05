.class public Lcom/sec/android/daemonapp/common/LocalSecurity;
.super Ljava/lang/Object;
.source "LocalSecurity.java"


# static fields
.field static IV:[B = null

.field public static final KEYDATA:[B = null

.field public static final algorithmAES:Ljava/lang/String; = "AES"

.field public static final transAESCBC:Ljava/lang/String; = "AES/CBC/PKCS5Padding"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/16 v1, 0x10

    .line 20
    new-array v0, v1, [B

    fill-array-data v0, :array_12

    sput-object v0, Lcom/sec/android/daemonapp/common/LocalSecurity;->KEYDATA:[B

    .line 21
    new-array v0, v1, [B

    fill-array-data v0, :array_1e

    sput-object v0, Lcom/sec/android/daemonapp/common/LocalSecurity;->IV:[B

    return-void

    .line 20
    nop

    :array_12
    .array-data 0x1
        0x69t
        0x6dt
        0x69t
        0x73t
        0x73t
        0x79t
        0x6ft
        0x75t
        0x68t
        0x61t
        0x6et
        0x67t
        0x65t
        0x65t
        0x6et
        0x61t
    .end array-data

    .line 21
    :array_1e
    .array-data 0x1
        0x26t
        0xc7t
        0xd1t
        0xd2t
        0x6ct
        0x14t
        0x2dt
        0xe0t
        0xa3t
        0xb8t
        0x2ft
        0x7et
        0x8ft
        0x90t
        0x86t
        0xat
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Decrypt(Ljava/security/Key;[B)Ljava/lang/String;
    .registers 9
    .parameter "key"
    .parameter "encrypt"

    .prologue
    const/4 v5, 0x0

    .line 92
    const/4 v0, 0x0

    .line 93
    .local v0, cipher:Ljavax/crypto/Cipher;
    if-eqz p0, :cond_6

    if-nez p1, :cond_7

    .line 133
    :cond_6
    :goto_6
    return-object v5

    .line 97
    :cond_7
    :try_start_7
    const-string v6, "AES/CBC/PKCS5Padding"

    invoke-static {v6}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;
    :try_end_c
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_7 .. :try_end_c} :catch_27
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_7 .. :try_end_c} :catch_2c

    move-result-object v0

    .line 106
    :goto_d
    new-instance v4, Ljavax/crypto/spec/IvParameterSpec;

    sget-object v6, Lcom/sec/android/daemonapp/common/LocalSecurity;->IV:[B

    invoke-direct {v4, v6}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 108
    .local v4, ivParameterSpec:Ljavax/crypto/spec/IvParameterSpec;
    if-eqz v0, :cond_1a

    .line 109
    const/4 v6, 0x2

    :try_start_17
    invoke-virtual {v0, v6, p0, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_1a
    .catch Ljava/security/InvalidKeyException; {:try_start_17 .. :try_end_1a} :catch_31
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_17 .. :try_end_1a} :catch_36

    .line 119
    :cond_1a
    :goto_1a
    const/4 v1, 0x0

    .line 121
    .local v1, decrypt:[B
    :try_start_1b
    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_1e
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_1b .. :try_end_1e} :catch_3b
    .catch Ljavax/crypto/BadPaddingException; {:try_start_1b .. :try_end_1e} :catch_40

    move-result-object v1

    .line 129
    :goto_1f
    if-eqz v1, :cond_6

    .line 130
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v1}, Ljava/lang/String;-><init>([B)V

    goto :goto_6

    .line 98
    .end local v1           #decrypt:[B
    .end local v4           #ivParameterSpec:Ljavax/crypto/spec/IvParameterSpec;
    :catch_27
    move-exception v3

    .line 100
    .local v3, e1:Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v3}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_d

    .line 101
    .end local v3           #e1:Ljava/security/NoSuchAlgorithmException;
    :catch_2c
    move-exception v3

    .line 103
    .local v3, e1:Ljavax/crypto/NoSuchPaddingException;
    invoke-virtual {v3}, Ljavax/crypto/NoSuchPaddingException;->printStackTrace()V

    goto :goto_d

    .line 111
    .end local v3           #e1:Ljavax/crypto/NoSuchPaddingException;
    .restart local v4       #ivParameterSpec:Ljavax/crypto/spec/IvParameterSpec;
    :catch_31
    move-exception v3

    .line 113
    .local v3, e1:Ljava/security/InvalidKeyException;
    invoke-virtual {v3}, Ljava/security/InvalidKeyException;->printStackTrace()V

    goto :goto_1a

    .line 114
    .end local v3           #e1:Ljava/security/InvalidKeyException;
    :catch_36
    move-exception v3

    .line 116
    .local v3, e1:Ljava/security/InvalidAlgorithmParameterException;
    invoke-virtual {v3}, Ljava/security/InvalidAlgorithmParameterException;->printStackTrace()V

    goto :goto_1a

    .line 122
    .end local v3           #e1:Ljava/security/InvalidAlgorithmParameterException;
    .restart local v1       #decrypt:[B
    :catch_3b
    move-exception v2

    .line 124
    .local v2, e:Ljavax/crypto/IllegalBlockSizeException;
    invoke-virtual {v2}, Ljavax/crypto/IllegalBlockSizeException;->printStackTrace()V

    goto :goto_1f

    .line 125
    .end local v2           #e:Ljavax/crypto/IllegalBlockSizeException;
    :catch_40
    move-exception v2

    .line 127
    .local v2, e:Ljavax/crypto/BadPaddingException;
    invoke-virtual {v2}, Ljavax/crypto/BadPaddingException;->printStackTrace()V

    goto :goto_1f
.end method

.method public static Encrypt(Ljava/security/Key;Ljava/lang/String;)[B
    .registers 9
    .parameter "key"
    .parameter "text"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 56
    const/4 v0, 0x0

    .line 58
    .local v0, cipher:Ljavax/crypto/Cipher;
    :try_start_1
    const-string v6, "AES/CBC/PKCS5Padding"

    invoke-static {v6}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;
    :try_end_6
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_6} :catch_1e
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_1 .. :try_end_6} :catch_23

    move-result-object v0

    .line 66
    :goto_7
    new-instance v4, Ljavax/crypto/spec/IvParameterSpec;

    sget-object v6, Lcom/sec/android/daemonapp/common/LocalSecurity;->IV:[B

    invoke-direct {v4, v6}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 68
    .local v4, ivParameterSpec:Ljavax/crypto/spec/IvParameterSpec;
    if-eqz v0, :cond_14

    .line 69
    const/4 v6, 0x1

    :try_start_11
    invoke-virtual {v0, v6, p0, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_14
    .catch Ljava/security/InvalidKeyException; {:try_start_11 .. :try_end_14} :catch_28

    .line 76
    :cond_14
    :goto_14
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    .line 77
    .local v5, plain:[B
    const/4 v3, 0x0

    .line 79
    .local v3, encrypt:[B
    :try_start_19
    invoke-virtual {v0, v5}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_1c
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_19 .. :try_end_1c} :catch_2d
    .catch Ljavax/crypto/BadPaddingException; {:try_start_19 .. :try_end_1c} :catch_32

    move-result-object v3

    .line 88
    :goto_1d
    return-object v3

    .line 59
    .end local v3           #encrypt:[B
    .end local v4           #ivParameterSpec:Ljavax/crypto/spec/IvParameterSpec;
    .end local v5           #plain:[B
    :catch_1e
    move-exception v1

    .line 61
    .local v1, e:Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_7

    .line 62
    .end local v1           #e:Ljava/security/NoSuchAlgorithmException;
    :catch_23
    move-exception v1

    .line 64
    .local v1, e:Ljavax/crypto/NoSuchPaddingException;
    invoke-virtual {v1}, Ljavax/crypto/NoSuchPaddingException;->printStackTrace()V

    goto :goto_7

    .line 71
    .end local v1           #e:Ljavax/crypto/NoSuchPaddingException;
    .restart local v4       #ivParameterSpec:Ljavax/crypto/spec/IvParameterSpec;
    :catch_28
    move-exception v2

    .line 73
    .local v2, e1:Ljava/security/InvalidKeyException;
    invoke-virtual {v2}, Ljava/security/InvalidKeyException;->printStackTrace()V

    goto :goto_14

    .line 80
    .end local v2           #e1:Ljava/security/InvalidKeyException;
    .restart local v3       #encrypt:[B
    .restart local v5       #plain:[B
    :catch_2d
    move-exception v1

    .line 82
    .local v1, e:Ljavax/crypto/IllegalBlockSizeException;
    invoke-virtual {v1}, Ljavax/crypto/IllegalBlockSizeException;->printStackTrace()V

    goto :goto_1d

    .line 83
    .end local v1           #e:Ljavax/crypto/IllegalBlockSizeException;
    :catch_32
    move-exception v1

    .line 85
    .local v1, e:Ljavax/crypto/BadPaddingException;
    invoke-virtual {v1}, Ljavax/crypto/BadPaddingException;->printStackTrace()V

    goto :goto_1d
.end method

.method public static generateKey(Ljava/lang/String;)Ljava/security/Key;
    .registers 3
    .parameter "algorithm"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 35
    invoke-static {p0}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v1

    .line 36
    .local v1, keyGenerator:Ljavax/crypto/KeyGenerator;
    invoke-virtual {v1}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v0

    .line 37
    .local v0, key:Ljavax/crypto/SecretKey;
    return-object v0
.end method

.method public static generateKey([B)Ljava/security/Key;
    .registers 3
    .parameter "keyData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .prologue
    .line 51
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "AES"

    invoke-direct {v0, p0, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 52
    .local v0, keySpec:Ljavax/crypto/spec/SecretKeySpec;
    return-object v0
.end method

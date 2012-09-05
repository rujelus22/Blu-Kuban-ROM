.class public Lcom/sec/android/widgetapp/weatherclock/common/LocalSecurity;
.super Ljava/lang/Object;
.source "LocalSecurity.java"


# static fields
.field static IV:[B

.field public static final KEYDATA:[B


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/16 v1, 0x10

    .line 20
    new-array v0, v1, [B

    fill-array-data v0, :array_12

    sput-object v0, Lcom/sec/android/widgetapp/weatherclock/common/LocalSecurity;->KEYDATA:[B

    .line 21
    new-array v0, v1, [B

    fill-array-data v0, :array_1e

    sput-object v0, Lcom/sec/android/widgetapp/weatherclock/common/LocalSecurity;->IV:[B

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
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_6} :catch_20
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_1 .. :try_end_6} :catch_25

    move-result-object v0

    .line 66
    :goto_7
    new-instance v4, Ljavax/crypto/spec/IvParameterSpec;

    sget-object v6, Lcom/sec/android/widgetapp/weatherclock/common/LocalSecurity;->IV:[B

    invoke-direct {v4, v6}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 68
    .local v4, ivParameterSpec:Ljavax/crypto/spec/IvParameterSpec;
    if-eqz v0, :cond_14

    .line 69
    const/4 v6, 0x1

    :try_start_11
    invoke-virtual {v0, v6, p0, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_14
    .catch Ljava/security/InvalidKeyException; {:try_start_11 .. :try_end_14} :catch_2a

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
    if-eqz v0, :cond_1f

    .line 80
    :try_start_1b
    invoke-virtual {v0, v5}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_1e
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_1b .. :try_end_1e} :catch_2f
    .catch Ljavax/crypto/BadPaddingException; {:try_start_1b .. :try_end_1e} :catch_34

    move-result-object v3

    .line 90
    :cond_1f
    :goto_1f
    return-object v3

    .line 59
    .end local v3           #encrypt:[B
    .end local v4           #ivParameterSpec:Ljavax/crypto/spec/IvParameterSpec;
    .end local v5           #plain:[B
    :catch_20
    move-exception v1

    .line 61
    .local v1, e:Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_7

    .line 62
    .end local v1           #e:Ljava/security/NoSuchAlgorithmException;
    :catch_25
    move-exception v1

    .line 64
    .local v1, e:Ljavax/crypto/NoSuchPaddingException;
    invoke-virtual {v1}, Ljavax/crypto/NoSuchPaddingException;->printStackTrace()V

    goto :goto_7

    .line 71
    .end local v1           #e:Ljavax/crypto/NoSuchPaddingException;
    .restart local v4       #ivParameterSpec:Ljavax/crypto/spec/IvParameterSpec;
    :catch_2a
    move-exception v2

    .line 73
    .local v2, e1:Ljava/security/InvalidKeyException;
    invoke-virtual {v2}, Ljava/security/InvalidKeyException;->printStackTrace()V

    goto :goto_14

    .line 82
    .end local v2           #e1:Ljava/security/InvalidKeyException;
    .restart local v3       #encrypt:[B
    .restart local v5       #plain:[B
    :catch_2f
    move-exception v1

    .line 84
    .local v1, e:Ljavax/crypto/IllegalBlockSizeException;
    invoke-virtual {v1}, Ljavax/crypto/IllegalBlockSizeException;->printStackTrace()V

    goto :goto_1f

    .line 85
    .end local v1           #e:Ljavax/crypto/IllegalBlockSizeException;
    :catch_34
    move-exception v1

    .line 87
    .local v1, e:Ljavax/crypto/BadPaddingException;
    invoke-virtual {v1}, Ljavax/crypto/BadPaddingException;->printStackTrace()V

    goto :goto_1f
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

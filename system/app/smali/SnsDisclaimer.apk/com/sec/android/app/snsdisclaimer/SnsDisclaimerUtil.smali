.class public final Lcom/sec/android/app/snsdisclaimer/SnsDisclaimerUtil;
.super Ljava/lang/Object;
.source "SnsDisclaimerUtil.java"


# static fields
.field private static mbIsLoggable:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 47
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/app/snsdisclaimer/SnsDisclaimerUtil;->mbIsLoggable:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 45
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkNetwork(Landroid/content/Context;)Z
    .registers 6
    .parameter "mAppContext"

    .prologue
    .line 55
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 57
    .local v1, cm:Landroid/net/ConnectivityManager;
    const/4 v0, 0x0

    .line 59
    .local v0, bNetworkStatus:Z
    const/4 v2, 0x0

    .line 61
    .local v2, netInfo:Landroid/net/NetworkInfo;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    if-eqz v2, :cond_2b

    .line 62
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 64
    const-string v3, "SnsDisclaimer"

    const-string v4, "Checked that network is available!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 67
    const-string v3, "SnsDisclaimer"

    const-string v4, "Checked that network is now connected or connecting!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    const/4 v0, 0x1

    .line 75
    :cond_2b
    return v0
.end method

.method public static encryptAES(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "seed"
    .parameter "plainText"

    .prologue
    const/4 v2, 0x0

    .line 86
    if-eqz p0, :cond_9

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_a

    .line 95
    :cond_9
    :goto_9
    return-object v2

    .line 89
    :cond_a
    if-eqz p1, :cond_9

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_9

    .line 92
    invoke-static {p0}, Lcom/sec/android/app/snsdisclaimer/SnsDisclaimerUtil;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 93
    .local v1, secretKeyBytes:[B
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/app/snsdisclaimer/SnsDisclaimerUtil;->encryptBytesByAES([B[B)[B

    move-result-object v0

    .line 95
    .local v0, cipherTextBytes:[B
    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    goto :goto_9
.end method

.method private static encryptBytesByAES([B[B)[B
    .registers 7
    .parameter "secretKeyBytes"
    .parameter "plainTextBytes"

    .prologue
    .line 114
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    const-string v4, "AES"

    invoke-direct {v3, p0, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 116
    .local v3, secretKeySpec:Ljavax/crypto/spec/SecretKeySpec;
    const/4 v2, 0x0

    .line 119
    .local v2, outBytes:[B
    :try_start_8
    const-string v4, "AES/ECB/PKCS5Padding"

    invoke-static {v4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 120
    .local v0, cipher:Ljavax/crypto/Cipher;
    const/4 v4, 0x1

    invoke-virtual {v0, v4, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 121
    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_15
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_8 .. :try_end_15} :catch_17
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_8 .. :try_end_15} :catch_1c
    .catch Ljava/security/InvalidKeyException; {:try_start_8 .. :try_end_15} :catch_21
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_8 .. :try_end_15} :catch_26
    .catch Ljavax/crypto/BadPaddingException; {:try_start_8 .. :try_end_15} :catch_2b

    move-result-object v2

    .line 134
    .end local v0           #cipher:Ljavax/crypto/Cipher;
    :goto_16
    return-object v2

    .line 122
    :catch_17
    move-exception v1

    .line 123
    .local v1, e:Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_16

    .line 124
    .end local v1           #e:Ljava/security/NoSuchAlgorithmException;
    :catch_1c
    move-exception v1

    .line 125
    .local v1, e:Ljavax/crypto/NoSuchPaddingException;
    invoke-virtual {v1}, Ljavax/crypto/NoSuchPaddingException;->printStackTrace()V

    goto :goto_16

    .line 126
    .end local v1           #e:Ljavax/crypto/NoSuchPaddingException;
    :catch_21
    move-exception v1

    .line 127
    .local v1, e:Ljava/security/InvalidKeyException;
    invoke-virtual {v1}, Ljava/security/InvalidKeyException;->printStackTrace()V

    goto :goto_16

    .line 128
    .end local v1           #e:Ljava/security/InvalidKeyException;
    :catch_26
    move-exception v1

    .line 129
    .local v1, e:Ljavax/crypto/IllegalBlockSizeException;
    invoke-virtual {v1}, Ljavax/crypto/IllegalBlockSizeException;->printStackTrace()V

    goto :goto_16

    .line 130
    .end local v1           #e:Ljavax/crypto/IllegalBlockSizeException;
    :catch_2b
    move-exception v1

    .line 131
    .local v1, e:Ljavax/crypto/BadPaddingException;
    invoke-virtual {v1}, Ljavax/crypto/BadPaddingException;->printStackTrace()V

    goto :goto_16
.end method

.method public static getIMSI(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .parameter "context"

    .prologue
    .line 145
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 147
    .local v1, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 149
    .local v0, IMSI:Ljava/lang/String;
    if-eqz v0, :cond_f

    .end local v0           #IMSI:Ljava/lang/String;
    :goto_e
    return-object v0

    .restart local v0       #IMSI:Ljava/lang/String;
    :cond_f
    const-string v0, ""

    goto :goto_e
.end method

.method private static hexStringToBytes(Ljava/lang/String;)[B
    .registers 6
    .parameter "hexString"

    .prologue
    .line 100
    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_a

    .line 101
    :cond_8
    const/4 v2, 0x0

    .line 109
    :cond_9
    return-object v2

    .line 103
    :cond_a
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    div-int/lit8 v1, v3, 0x2

    .line 104
    .local v1, length:I
    new-array v2, v1, [B

    .line 106
    .local v2, outBytes:[B
    const/4 v0, 0x0

    .local v0, i:I
    :goto_13
    if-ge v0, v1, :cond_9

    .line 107
    mul-int/lit8 v3, v0, 0x2

    mul-int/lit8 v4, v0, 0x2

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->byteValue()B

    move-result v3

    aput-byte v3, v2, v0

    .line 106
    add-int/lit8 v0, v0, 0x1

    goto :goto_13
.end method

.method public static isLoggable()Z
    .registers 1

    .prologue
    .line 159
    sget-boolean v0, Lcom/sec/android/app/snsdisclaimer/SnsDisclaimerUtil;->mbIsLoggable:Z

    return v0
.end method

.method public static setDebugMode(Z)V
    .registers 4
    .parameter "mode"

    .prologue
    .line 154
    sput-boolean p0, Lcom/sec/android/app/snsdisclaimer/SnsDisclaimerUtil;->mbIsLoggable:Z

    .line 155
    const-string v0, "SnsDisclaimer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mbIsLoggable : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/sec/android/app/snsdisclaimer/SnsDisclaimerUtil;->mbIsLoggable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    return-void
.end method

.class public Lcom/swype/android/security/License;
.super Ljava/lang/Object;
.source "License.java"


# static fields
.field public static final DEVICE_ANDROID_ID:Ljava/lang/String; = "device_android_id"

.field public static final DEVICE_ID:Ljava/lang/String; = "device_id"

.field private static final DEVICE_PROPERTIES:[Ljava/lang/String; = null

.field public static final DEVICE_SERIAL:Ljava/lang/String; = "device_serial"

.field public static final DEVICE_STATUS:Ljava/lang/String; = "DEVICE_STATUS"

.field public static final DEVICE_STATUS_DISABLED:Ljava/lang/String; = "DISABLED"

.field public static final DEVICE_STATUS_ENABLED:Ljava/lang/String; = "ENABLED"

.field private static final LICENSE_CHECK_INITIAL_WAIT_MSEC:I = 0x2710

.field private static final LICENSE_CHECK_SUBSEQUENT_WAIT_MSEC:I = 0x1388

.field private static final LICENSE_INVALID:I = 0x0

.field private static final LICENSE_UNKNOWN:I = 0x2

.field private static final LICENSE_VALID:I = 0x1

.field private static final MAX_DELAYED_PROPERTY_CHECK:I = 0x5

.field private static final OTHER_KNOWN_PROPERTIES:[Ljava/lang/String; = null

.field public static final SWYPE_OEM_NAME:Ljava/lang/String; = "com.swype.android.oem"

.field public static final SWYPE_PROJECT_NAME:Ljava/lang/String; = "com.swype.android.project"

.field public static final SWYPE_SWIB:Ljava/lang/String; = "SWIB"

.field private static delayed_property_check_count:I = 0x0

.field private static final publicKeyExponent:Ljava/lang/String; = "10001"

.field private static final publicKeyModulus:Ljava/lang/String; = "b62a557144ca38d42e69cb430a08d629066fc687713ec7c11c2825369a48b97756d7eb958d7b4eef9786a2467bccfa4dae228709b12efcfadaf8fea6dd149df77db523fd41758a0ca7de1d6765936960b6bcaaaac8029d9214983a19298318dfe4289f1dc8978ee49a158ec3fdf44fd44617444576d288c0c9289a7bcec6f6c5"


# instance fields
.field private properties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 68
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "android.os.Build.ID"

    aput-object v1, v0, v3

    const-string v1, "android.os.Build.PRODUCT"

    aput-object v1, v0, v4

    const-string v1, "android.os.Build.DEVICE"

    aput-object v1, v0, v5

    const-string v1, "android.os.Build.BOARD"

    aput-object v1, v0, v6

    const-string v1, "android.os.Build.BRAND"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "android.os.Build.MODEL"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "android.os.Build.DISPLAY"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.swype.android.oem"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "com.swype.android.project"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "device_id"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "device_serial"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "device_android_id"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "SWIB"

    aput-object v2, v0, v1

    sput-object v0, Lcom/swype/android/security/License;->DEVICE_PROPERTIES:[Ljava/lang/String;

    .line 84
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "LANGUAGES"

    aput-object v1, v0, v3

    const-string v1, "LICENSE_EXPIRATION"

    aput-object v1, v0, v4

    const-string v1, "LICENSE_CHECK_THRESHOLD"

    aput-object v1, v0, v5

    const-string v1, "DEVICE_STATUS"

    aput-object v1, v0, v6

    sput-object v0, Lcom/swype/android/security/License;->OTHER_KNOWN_PROPERTIES:[Ljava/lang/String;

    .line 109
    sput v3, Lcom/swype/android/security/License;->delayed_property_check_count:I

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/swype/android/security/License;->properties:Ljava/util/Map;

    .line 123
    return-void
.end method

.method private addProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 136
    iget-object v0, p0, Lcom/swype/android/security/License;->properties:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    return-void
.end method

.method public static bytesToStr([B)Ljava/lang/String;
    .registers 4
    .parameter

    .prologue
    .line 397
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 398
    const/4 v1, 0x0

    :goto_6
    array-length v2, p0

    if-ge v1, v2, :cond_17

    .line 399
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Lcom/swype/android/security/License;->toHex(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 398
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 401
    :cond_17
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private canPropertyCheckDelayed(Ljava/lang/String;)Z
    .registers 3
    .parameter "property"

    .prologue
    .line 347
    const-string v0, "device_id"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static createFromDigest([B)Lcom/swype/android/security/License;
    .registers 3
    .parameter "digest"

    .prologue
    .line 185
    invoke-static {p0}, Lcom/swype/android/security/License;->decrypt([B)[B

    move-result-object v0

    .line 186
    .local v0, message:[B
    if-eqz v0, :cond_10

    .line 187
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    invoke-static {v1}, Lcom/swype/android/security/License;->createFromString(Ljava/lang/String;)Lcom/swype/android/security/License;

    move-result-object v1

    .line 190
    :goto_f
    return-object v1

    :cond_10
    const/4 v1, 0x0

    goto :goto_f
.end method

.method public static createFromString(Ljava/lang/String;)Lcom/swype/android/security/License;
    .registers 6
    .parameter

    .prologue
    .line 154
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 156
    :try_start_a
    new-instance v1, Lcom/swype/android/security/License;

    invoke-direct {v1}, Lcom/swype/android/security/License;-><init>()V

    .line 158
    :cond_f
    :goto_f
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 159
    if-eqz v2, :cond_37

    .line 160
    const/16 v3, 0x3d

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 165
    if-ltz v3, :cond_f

    .line 166
    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 167
    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 168
    invoke-direct {v1, v4, v2}, Lcom/swype/android/security/License;->addProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_33} :catch_34

    goto :goto_f

    .line 175
    :catch_34
    move-exception v0

    const/4 v0, 0x0

    :goto_36
    return-object v0

    :cond_37
    move-object v0, v1

    .line 172
    goto :goto_36
.end method

.method public static final decrypt([B)[B
    .registers 5
    .parameter

    .prologue
    const/16 v3, 0x80

    .line 360
    invoke-static {p0}, Lcom/swype/android/security/License;->decryptAESKey([B)[B

    move-result-object v0

    .line 361
    if-eqz v0, :cond_2e

    .line 362
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    invoke-static {v1}, Lcom/swype/android/security/License;->strToBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 363
    if-eqz v0, :cond_2e

    .line 364
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "AES"

    invoke-direct {v1, v0, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 366
    :try_start_1a
    const-string v0, "AES"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 367
    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 368
    const/16 v1, 0x80

    array-length v2, p0

    sub-int/2addr v2, v3

    invoke-virtual {v0, p0, v1, v2}, Ljavax/crypto/Cipher;->doFinal([BII)[B
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_2b} :catch_2d

    move-result-object v0

    .line 376
    :goto_2c
    return-object v0

    :catch_2d
    move-exception v0

    :cond_2e
    const/4 v0, 0x0

    goto :goto_2c
.end method

.method private static decryptAESKey([B)[B
    .registers 5
    .parameter

    .prologue
    const/16 v3, 0x10

    .line 380
    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "b62a557144ca38d42e69cb430a08d629066fc687713ec7c11c2825369a48b97756d7eb958d7b4eef9786a2467bccfa4dae228709b12efcfadaf8fea6dd149df77db523fd41758a0ca7de1d6765936960b6bcaaaac8029d9214983a19298318dfe4289f1dc8978ee49a158ec3fdf44fd44617444576d288c0c9289a7bcec6f6c5"

    invoke-direct {v0, v1, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 381
    new-instance v1, Ljava/math/BigInteger;

    const-string v2, "10001"

    invoke-direct {v1, v2, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 382
    new-instance v2, Ljava/security/spec/RSAPublicKeySpec;

    invoke-direct {v2, v0, v1}, Ljava/security/spec/RSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 384
    :try_start_15
    const-string v0, "RSA"

    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    .line 385
    invoke-virtual {v0, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0

    .line 386
    const-string v1, "RSA/ECB/Pkcs1Padding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 387
    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 388
    const/4 v0, 0x0

    const/16 v2, 0x80

    invoke-virtual {v1, p0, v0, v2}, Ljavax/crypto/Cipher;->doFinal([BII)[B
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_2f} :catch_31

    move-result-object v0

    .line 392
    :goto_30
    return-object v0

    :catch_31
    move-exception v0

    const/4 v0, 0x0

    goto :goto_30
.end method

.method private getDeviceProperty(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 289
    const-string v0, "android.os.Build.ID"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 290
    sget-object v0, Landroid/os/Build;->ID:Ljava/lang/String;

    .line 336
    :goto_a
    return-object v0

    .line 292
    :cond_b
    const-string v0, "android.os.Build.PRODUCT"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 293
    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    goto :goto_a

    .line 295
    :cond_16
    const-string v0, "android.os.Build.DEVICE"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 296
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    goto :goto_a

    .line 298
    :cond_21
    const-string v0, "android.os.Build.DISPLAY"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 299
    sget-object v0, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    goto :goto_a

    .line 301
    :cond_2c
    const-string v0, "android.os.Build.BOARD"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 302
    sget-object v0, Landroid/os/Build;->BOARD:Ljava/lang/String;

    goto :goto_a

    .line 304
    :cond_37
    const-string v0, "android.os.Build.BRAND"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 305
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    goto :goto_a

    .line 307
    :cond_42
    const-string v0, "android.os.Build.MODEL"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 308
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    goto :goto_a

    .line 309
    :cond_4d
    const-string v0, "device_id"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_66

    .line 316
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 317
    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 318
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    .line 319
    :cond_66
    const-string v0, "device_serial"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_85

    .line 321
    :try_start_6e
    const-class v0, Landroid/os/Build;

    const-string v1, "SERIAL"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 322
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 323
    const-class v1, Landroid/os/Build;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_83
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_83} :catch_af

    move-result-object v0

    goto :goto_a

    .line 327
    :cond_85
    const-string v0, "device_android_id"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_91

    .line 328
    const-string v0, "android_id"

    goto/16 :goto_a

    .line 329
    :cond_91
    const-string v0, "SWIB"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b0

    .line 330
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/swype/android/inputmethod/SwypeApplication;

    .line 331
    invoke-virtual {p0}, Lcom/swype/android/inputmethod/SwypeApplication;->getSwypeCore()Lcom/swype/android/jni/SwypeCore;

    move-result-object v0

    if-eqz v0, :cond_b0

    .line 332
    invoke-virtual {p0}, Lcom/swype/android/inputmethod/SwypeApplication;->getSwypeCore()Lcom/swype/android/jni/SwypeCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/swype/android/jni/SwypeCore;->getSwib()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_a

    .line 326
    :catch_af
    move-exception v0

    .line 336
    :cond_b0
    const/4 v0, 0x0

    goto/16 :goto_a
.end method

.method private isValidProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 260
    sget-object v0, Lcom/swype/android/security/License;->DEVICE_PROPERTIES:[Ljava/lang/String;

    array-length v1, v0

    move v2, v4

    :goto_5
    if-ge v2, v1, :cond_22

    aget-object v3, v0, v2

    .line 261
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 262
    invoke-direct {p0, p1, p2}, Lcom/swype/android/security/License;->getDeviceProperty(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 263
    if-eqz v0, :cond_1d

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 264
    const/4 v0, 0x1

    .line 279
    :goto_1c
    return v0

    :cond_1d
    move v0, v4

    .line 267
    goto :goto_1c

    .line 260
    :cond_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 273
    :cond_22
    sget-object v0, Lcom/swype/android/security/License;->OTHER_KNOWN_PROPERTIES:[Ljava/lang/String;

    array-length v1, v0

    move v2, v4

    :goto_26
    if-ge v2, v1, :cond_35

    aget-object v3, v0, v2

    .line 274
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_32

    .line 275
    const/4 v0, 0x2

    goto :goto_1c

    .line 273
    :cond_32
    add-int/lit8 v2, v2, 0x1

    goto :goto_26

    :cond_35
    move v0, v4

    .line 279
    goto :goto_1c
.end method

.method public static final md5([B)Ljava/lang/String;
    .registers 7
    .parameter

    .prologue
    .line 438
    if-nez p0, :cond_5

    .line 439
    const-string v0, ""

    .line 461
    :goto_4
    return-object v0

    .line 443
    :cond_5
    :try_start_5
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 444
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 445
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 448
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 449
    const/4 v2, 0x0

    :goto_18
    array-length v3, v0

    if-ge v2, v3, :cond_44

    .line 450
    aget-byte v3, v0, v2

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 451
    aget-byte v4, v0, v2

    and-int/lit16 v4, v4, 0xff

    const/16 v5, 0x10

    if-ge v4, v5, :cond_3e

    .line 452
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 454
    :cond_3e
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 449
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 456
    :cond_44
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_47
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_5 .. :try_end_47} :catch_49

    move-result-object v0

    goto :goto_4

    .line 459
    :catch_49
    move-exception v0

    const-string v0, "Swype"

    const-string v1, "Error getting the md5!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    const-string v0, ""

    goto :goto_4
.end method

.method public static strToBytes(Ljava/lang/String;)[B
    .registers 5
    .parameter

    .prologue
    .line 405
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    .line 407
    const/4 v1, 0x0

    :goto_9
    :try_start_9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_27

    .line 408
    add-int/lit8 v2, v1, 0x2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 409
    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    .line 410
    and-int/lit16 v2, v2, 0xff

    .line 411
    div-int/lit8 v3, v1, 0x2

    int-to-byte v2, v2

    aput-byte v2, v0, v3
    :try_end_22
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_22} :catch_25

    .line 407
    add-int/lit8 v1, v1, 0x2

    goto :goto_9

    .line 416
    :catch_25
    move-exception v0

    const/4 v0, 0x0

    :cond_27
    return-object v0
.end method

.method public static toHex(I)Ljava/lang/String;
    .registers 4
    .parameter "d"

    .prologue
    .line 423
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 424
    .local v0, hex:Ljava/lang/String;
    const/16 v1, 0x10

    if-ge p0, v1, :cond_1c

    .line 425
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 428
    :goto_1b
    return-object v1

    :cond_1c
    move-object v1, v0

    goto :goto_1b
.end method


# virtual methods
.method public getProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "name"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/swype/android/security/License;->properties:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public isValid(Landroid/content/Context;)Z
    .registers 9
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 212
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/swype/android/inputmethod/SwypeApplication;

    .line 213
    invoke-virtual {v0}, Lcom/swype/android/inputmethod/SwypeApplication;->getHandler()Landroid/os/Handler;

    move-result-object v3

    .line 215
    iget-object v1, p0, Lcom/swype/android/security/License;->properties:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_16
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_69

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 216
    iget-object v2, p0, Lcom/swype/android/security/License;->properties:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, p1, v1, v2}, Lcom/swype/android/security/License;->isValidProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_16

    .line 218
    invoke-direct {p0, v1}, Lcom/swype/android/security/License;->canPropertyCheckDelayed(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_62

    sget v1, Lcom/swype/android/security/License;->delayed_property_check_count:I

    const/4 v2, 0x5

    if-ge v1, v2, :cond_62

    .line 220
    invoke-virtual {v0}, Lcom/swype/android/inputmethod/SwypeApplication;->isInAirplaneMode()Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 221
    if-eqz v3, :cond_4a

    .line 224
    const/16 v0, 0x21

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    move v0, v5

    .line 250
    :goto_49
    return v0

    :cond_4a
    move v0, v5

    .line 240
    :goto_4b
    if-eqz v0, :cond_67

    .line 241
    sget v0, Lcom/swype/android/security/License;->delayed_property_check_count:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/swype/android/security/License;->delayed_property_check_count:I

    .line 242
    if-eqz v3, :cond_60

    .line 243
    const/16 v0, 0x11

    sget v1, Lcom/swype/android/security/License;->delayed_property_check_count:I

    if-lez v1, :cond_64

    const-wide/16 v1, 0x1388

    :goto_5d
    invoke-virtual {v3, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_60
    move v0, v5

    .line 247
    goto :goto_49

    :cond_62
    move v0, v6

    .line 234
    goto :goto_49

    .line 243
    :cond_64
    const-wide/16 v1, 0x2710

    goto :goto_5d

    :cond_67
    move v0, v5

    .line 250
    goto :goto_49

    :cond_69
    move v0, v6

    goto :goto_4b
.end method

.method public onDestroy(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 131
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .prologue
    .line 196
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 197
    iget-object v0, p0, Lcom/swype/android/security/License;->properties:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 198
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v4, p0, Lcom/swype/android/security/License;->properties:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_f

    .line 200
    :cond_37
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

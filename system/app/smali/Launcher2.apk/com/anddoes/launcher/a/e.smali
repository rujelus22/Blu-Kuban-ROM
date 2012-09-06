.class public final Lcom/anddoes/launcher/a/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:[B

.field private static f:Lcom/anddoes/launcher/a/e;

.field private static g:Lcom/anddoes/launcher/a/a;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lcom/anddoes/launcher/preference/e;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/16 v3, 0x8

    .line 36
    const/16 v0, 0x14

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 37
    const/16 v2, 0x62

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    const/16 v2, 0x6c

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    const/16 v2, 0x45

    aput-byte v2, v0, v1

    const/4 v1, 0x3

    aput-byte v3, v0, v1

    const/4 v1, 0x4

    aput-byte v3, v0, v1

    const/4 v1, 0x5

    const/16 v2, -0x76

    aput-byte v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x28

    aput-byte v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0x56

    aput-byte v2, v0, v1

    const/16 v1, 0x3c

    aput-byte v1, v0, v3

    const/16 v1, 0x9

    const/16 v2, 0x34

    aput-byte v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0x7a

    aput-byte v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0x30

    aput-byte v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, -0x1b

    aput-byte v2, v0, v1

    const/16 v1, 0xd

    const/16 v2, 0x48

    aput-byte v2, v0, v1

    const/16 v1, 0xf

    const/16 v2, 0x3e

    aput-byte v2, v0, v1

    const/16 v1, 0x10

    const/16 v2, -0x3b

    aput-byte v2, v0, v1

    const/16 v1, 0x11

    const/16 v2, -0x2f

    aput-byte v2, v0, v1

    const/16 v1, 0x12

    const/16 v2, -0x4b

    aput-byte v2, v0, v1

    const/16 v1, 0x13

    const/16 v2, -0x61

    aput-byte v2, v0, v1

    .line 36
    sput-object v0, Lcom/anddoes/launcher/a/e;->a:[B

    .line 34
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/anddoes/launcher/a/e;->b:Landroid/content/Context;

    .line 66
    if-eqz p1, :cond_e

    .line 67
    new-instance v0, Lcom/anddoes/launcher/preference/e;

    invoke-direct {v0, p1}, Lcom/anddoes/launcher/preference/e;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/anddoes/launcher/a/e;->c:Lcom/anddoes/launcher/preference/e;

    .line 69
    :cond_e
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/anddoes/launcher/a/e;
    .registers 3
    .parameter

    .prologue
    .line 73
    const-class v1, Lcom/anddoes/launcher/a/e;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/anddoes/launcher/a/e;->f:Lcom/anddoes/launcher/a/e;

    if-nez v0, :cond_e

    .line 74
    new-instance v0, Lcom/anddoes/launcher/a/e;

    invoke-direct {v0, p0}, Lcom/anddoes/launcher/a/e;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/anddoes/launcher/a/e;->f:Lcom/anddoes/launcher/a/e;

    .line 76
    :cond_e
    sget-object v0, Lcom/anddoes/launcher/a/e;->f:Lcom/anddoes/launcher/a/e;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 73
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static a(Ljava/lang/String;)Ljava/security/PublicKey;
    .registers 4
    .parameter

    .prologue
    .line 244
    :try_start_0
    invoke-static {p0}, Lcom/anddoes/launcher/a/b;->a(Ljava/lang/String;)[B

    move-result-object v0

    .line 245
    const-string v1, "RSA"

    invoke-static {v1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    .line 246
    new-instance v2, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v2, v0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    :try_end_12
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_12} :catch_14
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_12} :catch_1b
    .catch Lcom/anddoes/launcher/a/c; {:try_start_0 .. :try_end_12} :catch_29

    move-result-object v0

    return-object v0

    .line 247
    :catch_14
    move-exception v0

    .line 249
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 250
    :catch_1b
    move-exception v0

    .line 251
    const-string v1, "License"

    const-string v2, "Could not decode from Base64."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 253
    :catch_29
    move-exception v0

    .line 254
    const-string v1, "License"

    const-string v2, "Invalid key specification."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 221
    :try_start_1
    const-string v1, "SHA1withRSA"

    invoke-static {v1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v1

    .line 222
    invoke-static {p0}, Lcom/anddoes/launcher/a/e;->a(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 223
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/Signature;->update([B)V

    .line 224
    invoke-static {p2}, Lcom/anddoes/launcher/a/b;->a(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/Signature;->verify([B)Z
    :try_end_1c
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1c} :catch_22
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1c} :catch_42
    .catch Ljava/security/SignatureException; {:try_start_1 .. :try_end_1c} :catch_29
    .catch Lcom/anddoes/launcher/a/c; {:try_start_1 .. :try_end_1c} :catch_30
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1c} :catch_39

    move-result v1

    if-nez v1, :cond_20

    .line 239
    :goto_1f
    return v0

    .line 227
    :cond_20
    const/4 v0, 0x1

    goto :goto_1f

    .line 228
    :catch_22
    move-exception v0

    .line 230
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 232
    :catch_29
    move-exception v0

    .line 233
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 235
    :catch_30
    move-exception v1

    const-string v1, "License"

    const-string v2, "Could not Base64-decode signature."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f

    .line 237
    :catch_39
    move-exception v1

    const-string v1, "License"

    const-string v2, "Could not verify signature."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f

    .line 231
    :catch_42
    move-exception v1

    goto :goto_1f
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 282
    :try_start_0
    sget-object v0, Lcom/anddoes/launcher/a/e;->g:Lcom/anddoes/launcher/a/a;

    invoke-virtual {v0, p0}, Lcom/anddoes/launcher/a/a;->b(Ljava/lang/String;)Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v0

    .line 286
    :goto_6
    return-object v0

    .line 283
    :catch_7
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 286
    const/4 v0, 0x0

    goto :goto_6
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 376
    invoke-static {p0}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 377
    const-string v0, ""

    .line 389
    :goto_9
    return-object v0

    .line 380
    :cond_a
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 381
    const-string v0, "Apex Launcher, Copyright @ 2012 Android Does."

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    move v0, v1

    move v2, v1

    .line 383
    :goto_16
    array-length v5, v3

    if-lt v0, v5, :cond_1e

    .line 389
    invoke-static {v3}, Lcom/anddoes/launcher/a/b;->a([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    .line 384
    :cond_1e
    aget-byte v5, v3, v0

    aget-byte v6, v4, v2

    xor-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v3, v0

    .line 385
    add-int/lit8 v2, v2, 0x1

    array-length v5, v4

    if-ne v2, v5, :cond_2c

    move v2, v1

    .line 383
    :cond_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_16
.end method

.method public static d()Ljava/lang/String;
    .registers 1

    .prologue
    .line 184
    const-string v0, "DDksOmkmIDssBAMUGkdJBFYHSTAoNi0yYQFvcXFgCmEMJy0wLA4vYwU+IDJbMzohSxUbEAAJNwIkI2RuFQhAFAJQAgADYndaV3xQYFQuL1EUAjgoSjAIEiBkEglKDUZ7K0daJDlRREhOCwYqMEI8NlsyECMZdVZwR20nIDYRKitdSy8KMyVXDj8CNmUbBxEPL0cBWU9saFwbNAYoFjE4Y3gUVmhSYmUqGRcVCj0lRQgELgBALRwnOkEdJRM+VAkUEE9jKRUGSxZfBV4mQXh2SHNhGUwrRTFFRFhRTBUsVURbEEU/LhAKJ0UPKQAMOBpsIEQVIzsxVQ4ncwMTC0AFY1osIlwoLiA1Yyg4LhR9JwNXHUgJCCIeJAFVPlpuGQY2KTQsI1giFAVzUANdd20GVy4ZNgotZwFaJkJIOQMOLHQDWTQ5USc2QW5aCQYbTUEaFCNGWSViYwYJYREWLwolN1hPZzUGMhAbJCMiDVU9WRQNIC00QGgRDVsHLBtaDSchRxFpdnFgc2I="

    invoke-static {v0}, Lcom/anddoes/launcher/a/e;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static d(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 393
    invoke-static {p0}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 394
    const-string v0, ""

    .line 412
    :goto_9
    return-object v0

    .line 397
    :cond_a
    :try_start_a
    invoke-static {p0}, Lcom/anddoes/launcher/a/b;->a(Ljava/lang/String;)[B
    :try_end_d
    .catch Lcom/anddoes/launcher/a/c; {:try_start_a .. :try_end_d} :catch_1f

    move-result-object v3

    .line 404
    const-string v0, "Apex Launcher, Copyright @ 2012 Android Does."

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    move v0, v1

    move v2, v1

    .line 406
    :goto_16
    array-length v5, v3

    if-lt v0, v5, :cond_25

    .line 412
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    goto :goto_9

    .line 400
    :catch_1f
    move-exception v0

    invoke-virtual {v0}, Lcom/anddoes/launcher/a/c;->printStackTrace()V

    .line 402
    const/4 v0, 0x0

    goto :goto_9

    .line 407
    :cond_25
    aget-byte v5, v3, v0

    aget-byte v6, v4, v2

    xor-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v3, v0

    .line 408
    add-int/lit8 v2, v2, 0x1

    array-length v5, v4

    if-ne v2, v5, :cond_33

    move v2, v1

    .line 406
    :cond_33
    add-int/lit8 v0, v0, 0x1

    goto :goto_16
.end method

.method private g()Z
    .registers 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/anddoes/launcher/a/e;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/anddoes/launcher/a/e;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 118
    :cond_10
    const/4 v0, 0x0

    .line 120
    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x1

    goto :goto_11
.end method

.method private h()V
    .registers 7

    .prologue
    .line 260
    sget-object v0, Lcom/anddoes/launcher/a/e;->g:Lcom/anddoes/launcher/a/a;

    if-nez v0, :cond_51

    .line 261
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 262
    iget-object v0, p0, Lcom/anddoes/launcher/a/e;->b:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 263
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v1

    .line 264
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v2

    .line 265
    sget-object v3, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    .line 266
    sget-object v4, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    .line 267
    if-nez v1, :cond_52

    const-string v0, ""

    :goto_23
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 268
    if-nez v2, :cond_54

    const-string v0, ""

    :goto_2b
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 269
    if-nez v3, :cond_56

    const-string v0, ""

    :goto_33
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 270
    if-nez v4, :cond_58

    const-string v0, ""

    :goto_3b
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    new-instance v0, Lcom/anddoes/launcher/a/a;

    sget-object v1, Lcom/anddoes/launcher/a/e;->a:[B

    iget-object v2, p0, Lcom/anddoes/launcher/a/e;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/anddoes/launcher/a/a;-><init>([BLjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/anddoes/launcher/a/e;->g:Lcom/anddoes/launcher/a/a;

    .line 273
    :cond_51
    return-void

    :cond_52
    move-object v0, v1

    .line 267
    goto :goto_23

    :cond_54
    move-object v0, v2

    .line 268
    goto :goto_2b

    :cond_56
    move-object v0, v3

    .line 269
    goto :goto_33

    :cond_58
    move-object v0, v4

    .line 270
    goto :goto_3b
.end method


# virtual methods
.method public final a()Z
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 80
    :try_start_1
    iget-object v1, p0, Lcom/anddoes/launcher/a/e;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 83
    iget-object v2, p0, Lcom/anddoes/launcher/a/e;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x40

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 84
    const-string v3, "com.anddoes.launcher.pro"

    const/16 v4, 0x40

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 86
    iget-object v2, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v2

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v3, 0x0

    aget-object v1, v1, v3

    invoke-virtual {v1}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_30} :catch_32

    move-result v0

    .line 90
    :goto_31
    return v0

    .line 88
    :catch_32
    move-exception v1

    goto :goto_31
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 10
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 134
    .line 138
    :try_start_3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_11f

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_11f

    .line 139
    const-string v2, "DDksOmkmIDssBAMUGkdJBFYHSTAoNi0yYQFvcXFgCmEMJy0wLA4vYwU+IDJbMzohSxUbEAAJNwIkI2RuFQhAFAJQAgADYndaV3xQYFQuL1EUAjgoSjAIEiBkEglKDUZ7K0daJDlRREhOCwYqMEI8NlsyECMZdVZwR20nIDYRKitdSy8KMyVXDj8CNmUbBxEPL0cBWU9saFwbNAYoFjE4Y3gUVmhSYmUqGRcVCj0lRQgELgBALRwnOkEdJRM+VAkUEE9jKRUGSxZfBV4mQXh2SHNhGUwrRTFFRFhRTBUsVURbEEU/LhAKJ0UPKQAMOBpsIEQVIzsxVQ4ncwMTC0AFY1osIlwoLiA1Yyg4LhR9JwNXHUgJCCIeJAFVPlpuGQY2KTQsI1giFAVzUANdd20GVy4ZNgotZwFaJkJIOQMOLHQDWTQ5USc2QW5aCQYbTUEaFCNGWSViYwYJYREWLwolN1hPZzUGMhAbJCMiDVU9WRQNIC00QGgRDVsHLBtaDSchRxFpdnFgc2I="

    invoke-static {v2}, Lcom/anddoes/launcher/a/e;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1, p2}, Lcom/anddoes/launcher/a/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_18} :catch_9e

    move-result v2

    .line 141
    :goto_19
    if-eqz v2, :cond_116

    .line 143
    const/16 v2, 0x3a

    :try_start_1d
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v3, v2, :cond_46

    const-string v2, ""

    move-object v3, p1

    :goto_27
    const-string v4, "|"

    invoke-static {v4}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x6

    if-ge v4, v5, :cond_5b

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Wrong number of fields."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_3d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1d .. :try_end_3d} :catch_3d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_3d} :catch_9e

    .line 145
    :catch_3d
    move-exception v2

    :try_start_3e
    const-string v2, "License"

    const-string v3, "Could not parse LVL response."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_45} :catch_9e

    .line 180
    :goto_45
    return v0

    .line 143
    :cond_46
    const/4 v3, 0x0

    :try_start_47
    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v2, v4, :cond_54

    const-string v2, ""

    goto :goto_27

    :cond_54
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_27

    :cond_5b
    new-instance v4, Lcom/anddoes/launcher/a/f;

    invoke-direct {v4}, Lcom/anddoes/launcher/a/f;-><init>()V

    iput-object v2, v4, Lcom/anddoes/launcher/a/f;->g:Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v2, v3, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v4, Lcom/anddoes/launcher/a/f;->a:I

    const/4 v2, 0x1

    aget-object v2, v3, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v4, Lcom/anddoes/launcher/a/f;->b:I

    const/4 v2, 0x2

    aget-object v2, v3, v2

    iput-object v2, v4, Lcom/anddoes/launcher/a/f;->c:Ljava/lang/String;

    const/4 v2, 0x3

    aget-object v2, v3, v2

    iput-object v2, v4, Lcom/anddoes/launcher/a/f;->d:Ljava/lang/String;

    const/4 v2, 0x4

    aget-object v2, v3, v2

    iput-object v2, v4, Lcom/anddoes/launcher/a/f;->e:Ljava/lang/String;

    const/4 v2, 0x5

    aget-object v2, v3, v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v4, Lcom/anddoes/launcher/a/f;->f:J
    :try_end_8c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_47 .. :try_end_8c} :catch_3d
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_8c} :catch_9e

    .line 148
    :try_start_8c
    iget-object v2, v4, Lcom/anddoes/launcher/a/f;->c:Ljava/lang/String;

    const-string v3, "com.anddoes.launcher.pro"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a8

    .line 149
    const-string v2, "License"

    const-string v3, "Package name doesn\'t match."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9d
    .catch Ljava/lang/Exception; {:try_start_8c .. :try_end_9d} :catch_9e

    goto :goto_45

    .line 178
    :catch_9e
    move-exception v0

    const-string v0, "License"

    const-string v2, "Unknown LVL error."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_a6
    move v0, v1

    .line 180
    goto :goto_45

    .line 152
    :cond_a8
    :try_start_a8
    iget-object v2, v4, Lcom/anddoes/launcher/a/f;->e:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b8

    .line 153
    const-string v2, "License"

    const-string v3, "User identifier is empty."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_45

    .line 156
    :cond_b8
    iget v2, v4, Lcom/anddoes/launcher/a/f;->a:I

    if-eqz v2, :cond_c9

    iget v2, v4, Lcom/anddoes/launcher/a/f;->a:I

    if-eq v2, v6, :cond_c9

    .line 157
    const-string v2, "License"

    const-string v3, "Application not licensed or LVL error."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_45

    .line 160
    :cond_c9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v5, v4, Lcom/anddoes/launcher/a/f;->f:J

    sub-long/2addr v2, v5

    const-wide v5, 0x120642000L

    cmp-long v2, v2, v5

    if-lez v2, :cond_e2

    .line 161
    const-string v2, "License"

    const-string v3, "LVL response out of date."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_45

    .line 164
    :cond_e2
    iget-object v0, v4, Lcom/anddoes/launcher/a/f;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/anddoes/launcher/a/e;->d:Ljava/lang/String;

    .line 165
    iget-object v0, v4, Lcom/anddoes/launcher/a/f;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10d

    .line 166
    iget-object v0, v4, Lcom/anddoes/launcher/a/f;->g:Ljava/lang/String;

    iput-object v0, p0, Lcom/anddoes/launcher/a/e;->e:Ljava/lang/String;

    .line 170
    :goto_f2
    iget-object v0, p0, Lcom/anddoes/launcher/a/e;->c:Lcom/anddoes/launcher/preference/e;

    invoke-static {p1}, Lcom/anddoes/launcher/a/e;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "license_data"

    invoke-virtual {v0, v3, v2}, Lcom/anddoes/launcher/preference/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lcom/anddoes/launcher/a/e;->c:Lcom/anddoes/launcher/preference/e;

    const-string v2, "license_signature"

    invoke-virtual {v0, v2, p2}, Lcom/anddoes/launcher/preference/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    iget-object v0, p0, Lcom/anddoes/launcher/a/e;->c:Lcom/anddoes/launcher/preference/e;

    const-string v2, "license_type"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/anddoes/launcher/preference/e;->b(Ljava/lang/String;I)V

    goto :goto_a6

    .line 168
    :cond_10d
    iget-wide v2, v4, Lcom/anddoes/launcher/a/f;->f:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anddoes/launcher/a/e;->e:Ljava/lang/String;

    goto :goto_f2

    .line 174
    :cond_116
    const-string v2, "License"

    const-string v3, "LVL signature verification failed."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11d
    .catch Ljava/lang/Exception; {:try_start_a8 .. :try_end_11d} :catch_9e

    goto/16 :goto_45

    :cond_11f
    move v2, v0

    goto/16 :goto_19
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)I
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 190
    .line 191
    :try_start_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_68

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_68

    .line 192
    const-string v1, "DDkiHm0NUTItMBkiIWVCcCshPDAoNj01YXRnfHF1cWIoPy8wCDggFQcOIUtXOxMDPkt1GAI5TF8RFXh6ewY7MSMaJlogbyd5XUlYexMDWSg2GAAoSDJeIDBnIB8sFVF6EUMrGQlWJEpSdUBEPDABEiwRWTBBREh5VXQuJCAhHgQMUSchUyVKOB9RHmwYIBJZFDo0SmkSDgceCEM6Px0aeiN5emBXRhd4PxcROBgAaRQhCgtcOENQH2ocLRomLhk9RhlYCR0JMggOLQEEczFzYWVGe2QAPyUw"

    invoke-static {v1}, Lcom/anddoes/launcher/a/e;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1, p2}, Lcom/anddoes/launcher/a/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 194
    :goto_17
    if-eqz v1, :cond_64

    .line 195
    invoke-static {p1}, Lcom/anddoes/launcher/a/e;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 196
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 197
    const-string v1, "i"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 198
    iget-object v3, p0, Lcom/anddoes/launcher/a/e;->b:Landroid/content/Context;

    invoke-static {v3}, Lcom/anddoes/launcher/ia;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_38

    .line 199
    const v0, 0x7f060190

    .line 212
    :goto_37
    return v0

    .line 201
    :cond_38
    const-string v1, "k"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/anddoes/launcher/a/e;->d:Ljava/lang/String;

    .line 202
    const-string v1, "c"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/anddoes/launcher/a/e;->e:Ljava/lang/String;

    .line 203
    iget-object v1, p0, Lcom/anddoes/launcher/a/e;->c:Lcom/anddoes/launcher/preference/e;

    const-string v2, "license_data"

    invoke-virtual {v1, v2, p1}, Lcom/anddoes/launcher/preference/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    iget-object v1, p0, Lcom/anddoes/launcher/a/e;->c:Lcom/anddoes/launcher/preference/e;

    const-string v2, "license_signature"

    invoke-virtual {v1, v2, p2}, Lcom/anddoes/launcher/preference/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    iget-object v1, p0, Lcom/anddoes/launcher/a/e;->c:Lcom/anddoes/launcher/preference/e;

    const-string v2, "license_type"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/anddoes/launcher/preference/e;->b(Ljava/lang/String;I)V
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_5e} :catch_5f

    goto :goto_37

    .line 210
    :catch_5f
    move-exception v0

    const v0, 0x7f060193

    goto :goto_37

    .line 207
    :cond_64
    const v0, 0x7f060191

    goto :goto_37

    :cond_68
    move v1, v0

    goto :goto_17
.end method

.method public final b()Z
    .registers 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 94
    iget-object v2, p0, Lcom/anddoes/launcher/a/e;->c:Lcom/anddoes/launcher/preference/e;

    const-string v3, "license_data"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Lcom/anddoes/launcher/preference/e;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 95
    iget-object v3, p0, Lcom/anddoes/launcher/a/e;->c:Lcom/anddoes/launcher/preference/e;

    const-string v4, "license_signature"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Lcom/anddoes/launcher/preference/e;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 96
    invoke-direct {p0}, Lcom/anddoes/launcher/a/e;->g()Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 97
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_28

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_29

    :cond_28
    move v0, v1

    .line 113
    :cond_29
    :goto_29
    return v0

    .line 103
    :cond_2a
    iget-object v4, p0, Lcom/anddoes/launcher/a/e;->c:Lcom/anddoes/launcher/preference/e;

    const-string v5, "license_type"

    invoke-virtual {v4, v5, v1}, Lcom/anddoes/launcher/preference/e;->a(Ljava/lang/String;I)I

    move-result v4

    .line 104
    if-ne v4, v0, :cond_40

    .line 105
    invoke-static {v2}, Lcom/anddoes/launcher/a/e;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Lcom/anddoes/launcher/a/e;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 111
    :goto_3b
    invoke-direct {p0}, Lcom/anddoes/launcher/a/e;->g()Z

    move-result v0

    goto :goto_29

    .line 106
    :cond_40
    const/4 v0, 0x2

    if-ne v4, v0, :cond_47

    .line 107
    invoke-virtual {p0, v2, v3}, Lcom/anddoes/launcher/a/e;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3b

    :cond_47
    move v0, v1

    .line 109
    goto :goto_29
.end method

.method public final c()V
    .registers 5

    .prologue
    .line 124
    const-string v0, ""

    iput-object v0, p0, Lcom/anddoes/launcher/a/e;->d:Ljava/lang/String;

    .line 125
    const-string v0, ""

    iput-object v0, p0, Lcom/anddoes/launcher/a/e;->e:Ljava/lang/String;

    .line 126
    iget-object v0, p0, Lcom/anddoes/launcher/a/e;->c:Lcom/anddoes/launcher/preference/e;

    const-string v1, ""

    const-string v2, "license_data"

    invoke-virtual {v0, v2, v1}, Lcom/anddoes/launcher/preference/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lcom/anddoes/launcher/a/e;->c:Lcom/anddoes/launcher/preference/e;

    const-string v1, ""

    const-string v2, "license_signature"

    invoke-virtual {v0, v2, v1}, Lcom/anddoes/launcher/preference/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/anddoes/launcher/a/e;->c:Lcom/anddoes/launcher/preference/e;

    const-string v1, "license_type"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/anddoes/launcher/preference/e;->b(Ljava/lang/String;I)V

    .line 129
    iget-object v0, p0, Lcom/anddoes/launcher/a/e;->c:Lcom/anddoes/launcher/preference/e;

    const-string v1, "last_lvl_check"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/anddoes/launcher/preference/e;->a(Ljava/lang/String;J)V

    .line 130
    return-void
.end method

.method public final e()Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 302
    invoke-static {}, Lcom/anddoes/launcher/ia;->a()Z

    move-result v1

    if-nez v1, :cond_8

    .line 336
    :cond_7
    :goto_7
    return-object v0

    .line 306
    :cond_8
    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    .line 307
    const-string v3, "/Android/data/apexlauncher/cache/cache.db"

    .line 306
    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 308
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v2}, Ljava/io/File;->canRead()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 315
    :try_start_1f
    invoke-direct {p0}, Lcom/anddoes/launcher/a/e;->h()V

    .line 316
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_31
    .catchall {:try_start_1f .. :try_end_31} :catchall_56
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_31} :catch_4a

    .line 317
    :try_start_31
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/anddoes/launcher/a/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/anddoes/launcher/a/e;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 318
    invoke-static {v2}, Lcom/anddoes/launcher/a/d;->a(Ljava/lang/String;)Lcom/anddoes/launcher/a/d;
    :try_end_40
    .catchall {:try_start_31 .. :try_end_40} :catchall_65
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_40} :catch_67

    move-result-object v2

    .line 323
    :try_start_41
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_44} :catch_60

    move-object v1, v2

    .line 330
    :goto_45
    if-eqz v1, :cond_7

    .line 336
    iget-object v0, v1, Lcom/anddoes/launcher/a/d;->c:Ljava/lang/String;

    goto :goto_7

    :catch_4a
    move-exception v1

    move-object v1, v0

    .line 323
    :goto_4c
    if-eqz v1, :cond_69

    .line 324
    :try_start_4e
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_51} :catch_53

    move-object v1, v0

    .line 325
    goto :goto_45

    .line 327
    :catch_53
    move-exception v1

    move-object v1, v0

    goto :goto_45

    .line 321
    :catchall_56
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    .line 323
    :goto_5a
    if-eqz v1, :cond_5f

    .line 324
    :try_start_5c
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_5f} :catch_63

    .line 329
    :cond_5f
    :goto_5f
    throw v0

    :catch_60
    move-exception v1

    move-object v1, v2

    goto :goto_45

    :catch_63
    move-exception v1

    goto :goto_5f

    .line 321
    :catchall_65
    move-exception v0

    goto :goto_5a

    :catch_67
    move-exception v2

    goto :goto_4c

    :cond_69
    move-object v1, v0

    goto :goto_45
.end method

.method public final f()V
    .registers 6

    .prologue
    .line 340
    invoke-static {}, Lcom/anddoes/launcher/ia;->a()Z

    move-result v0

    if-nez v0, :cond_7

    .line 372
    :cond_6
    :goto_6
    return-void

    .line 344
    :cond_7
    invoke-virtual {p0}, Lcom/anddoes/launcher/a/e;->b()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 348
    new-instance v2, Lcom/anddoes/launcher/a/d;

    iget-object v0, p0, Lcom/anddoes/launcher/a/e;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/anddoes/launcher/a/e;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/anddoes/launcher/ia;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Lcom/anddoes/launcher/a/d;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v3, "/Android/data/apexlauncher/cache/"

    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 350
    new-instance v3, Ljava/io/File;

    const-string v1, "cache.db"

    invoke-direct {v3, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 351
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_35

    .line 353
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 355
    :cond_35
    const/4 v1, 0x0

    .line 357
    :try_start_36
    invoke-direct {p0}, Lcom/anddoes/launcher/a/e;->h()V

    .line 358
    new-instance v0, Ljava/io/FileWriter;

    invoke-direct {v0, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_3e
    .catchall {:try_start_36 .. :try_end_3e} :catchall_62
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_3e} :catch_58

    .line 359
    :try_start_3e
    invoke-virtual {v2}, Lcom/anddoes/launcher/a/d;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/anddoes/launcher/a/e;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/anddoes/launcher/a/e;->g:Lcom/anddoes/launcher/a/a;

    invoke-virtual {v2, v1}, Lcom/anddoes/launcher/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 360
    invoke-virtual {v0}, Ljava/io/FileWriter;->flush()V
    :try_end_52
    .catchall {:try_start_3e .. :try_end_52} :catchall_6b
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_52} :catch_70

    .line 365
    :try_start_52
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_55} :catch_56

    goto :goto_6

    :catch_56
    move-exception v0

    goto :goto_6

    :catch_58
    move-exception v0

    move-object v0, v1

    :goto_5a
    if-eqz v0, :cond_6

    .line 366
    :try_start_5c
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_5f} :catch_60

    goto :goto_6

    .line 369
    :catch_60
    move-exception v0

    goto :goto_6

    .line 363
    :catchall_62
    move-exception v0

    .line 365
    :goto_63
    if-eqz v1, :cond_68

    .line 366
    :try_start_65
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_68} :catch_69

    .line 371
    :cond_68
    :goto_68
    throw v0

    :catch_69
    move-exception v1

    goto :goto_68

    .line 363
    :catchall_6b
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_63

    :catch_70
    move-exception v1

    goto :goto_5a
.end method
